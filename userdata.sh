#!/bin/bash

dnf update -y
dnf install -y httpd

systemctl start httpd
systemctl enable httpd

cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
    <title>Terraform Web Server</title>
</head>
<body>
    <h1>Hello from AWS EC2!</h1>
    <h2>Deployed using Terraform</h2>
    <p>Linux + AWS + Infrastructure as Code</p>
</body>
</html>
EOF
