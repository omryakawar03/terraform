data "aws_subnets" "public" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }

  # Optional but recommended: Filter for specific tags if you have them
  filter {
    name   = "tag:Tier"
    values = ["Public"]
  }
}