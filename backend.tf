terraform {
  backend "s3" {
    bucket = "sarawatlism"
    key    = "remote.tfstate"
    region = "ap-southeast-1"
  }
}
