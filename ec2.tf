## Creating Admin Launch template
resource "aws_launch_template" "launch_template-observability" {
  name                        = "${var.observability_server}-lt"
  image_id                    = var.ami
  instance_type               = var.instance_type
  vpc_security_group_ids      = [aws_security_group.Prod-observability-sg.id]
  user_data                   = base64encode(file("./userdata/restore.sh"))
  key_name                    = var.key_pair_name  
  lifecycle {
    create_before_destroy = true
  }
  iam_instance_profile {
    arn = var.iam_instance_profile_arn
  }
tags = {
    Name = "${var.observability_server}-lt"
    Environment = "iq.efi.com-ec2"
  }
}

## Creating Admin AutoScaling Group
resource "aws_autoscaling_group" "autoscaling_group-observability" {
  name = "${var.observability_server}-asg"
  launch_template {
    id      = aws_launch_template.launch_template-observability.id
    version = "$Latest"
  }
  min_size             = 1
  desired_capacity     = 1
  max_size             = 2
  target_group_arns    = [aws_lb_target_group.Grafana_target_group.arn]
  #health_check_type    = "ELB"
  vpc_zone_identifier  = [var.private_subnet_id_A]
  tag {
    key                 = "Environment"
    value               = "iq.efi.com"
    propagate_at_launch = true
  }
  tag {
    key                 = "Name"
    value               = "${var.observability_server}"
    propagate_at_launch = true
  }
}