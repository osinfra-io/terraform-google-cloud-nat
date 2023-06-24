name = input('name')
project = input('project')

control 'compute_router_nat' do
  title 'Compute Router NAT'

  # Compute Router NAT
  # https://docs.chef.io/inspec/resources/google_compute_router_nat

  describe google_compute_router_nat(project: project, region: 'us-east4', router: name, name: name) do
    it { should exist }
    its('source_subnetwork_ip_ranges_to_nat') { should cmp 'LIST_OF_SUBNETWORKS' }
  end
end
