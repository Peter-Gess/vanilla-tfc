policy "restrict-ec2-instance-type" {
    enforcement_level = "soft-mandatory"
}

policy "aws-block-allow-all-cidr" {
    enforcement_level = "hard-mandatory"
}

policy "restrict-cost-and-percentage-increase" {
    enforcement_level = "hard-mandatory"
}
