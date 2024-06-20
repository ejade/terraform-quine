provider "local" {
  version = "~> 2.0"
}

data "local_file" "self" {
  filename = "${path.module}/quine.tf"
}

resource "local_file" "output" {
  filename = "${path.module}/quine_output.tf"
  content  = data.local_file.self.content
}

output "quine" {
  value = data.local_file.self.content
}

