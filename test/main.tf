provider "alicloud" {
  region = "cn-beijing"
}

resource "alicloud_ram_role" "test_role" {
  name     = "test-role"
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
