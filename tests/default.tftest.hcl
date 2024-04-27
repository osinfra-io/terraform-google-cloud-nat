run "default" {
  command = apply

  module {
    source = "./tests/fixtures/default"
  }
}

run "list_of_subnets" {
  command = apply

  module {
    source = "./tests/fixtures/list_of_subnets"
  }
}
