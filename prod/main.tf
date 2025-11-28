provider "alicloud" {
  region = "cn-beijing"
}

resource "alicloud_ram_role" "prod_role" {
  name     = "prod-role"
  document = <<EOF
    {
      "Statement": [{
        "Action": ["ram:CreateServiceLinkedRole"],
        "Effect": "Allow",
        "Principal": {"Service": ["rds.aliyuncs.com"]}
      }]
    }
  EOF
}
