name = input('name')
project = input('project')

control 'compute_router' do
  title 'Compute Router'

  # Compute Router
  # https://docs.chef.io/inspec/resources/google_compute_router

  describe google_compute_router(project: project, region: 'us-east1', name: name) do
    it { should exist }
    its('network') { should match(%r{/kitchen-vpc$}) }
  end
end

control 'compute_router_nat' do
  title 'Compute Router NAT'

  # Compute Router NAT
  # https://docs.chef.io/inspec/resources/google_compute_router_nat

  describe google_compute_router_nat(project: project, region: 'us-east1', router: name, name: name) do
    it { should exist }
    its('nat_ip_allocate_option') { should cmp 'AUTO_ONLY' }
    its('source_subnetwork_ip_ranges_to_nat') { should cmp 'ALL_SUBNETWORKS_ALL_IP_RANGES' }
    its('log_config.enable') { should cmp 'true' }
    its('log_config.filter') { should cmp 'ERRORS_ONLY' }
  end
end
