terraform {
  backend "s3" {
    bucket = "vian-vorx-terraform"
    key    = "vorx-network.tfstate"
    region = "us-east-1"
  }
}
