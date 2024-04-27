run "default" {
  command = apply

  module {
    source = "./tests/fixtures/default"
  }
}

// This test needs the default test destroyed before running

// run "list_of_subnets" {
//   command = apply

//   module {
//     source = "./tests/fixtures/list_of_subnets"
//   }
// }
