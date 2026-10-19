#!/bin/bash
set -euxo pipefail

export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get install -y nginx

cat > /var/www/html/index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
  <title>Project 4 - AWS Auto Scaling</title>
</head>
<body>
  <h1>Project #4 - AWS Load Balancer</h1>
  <h2>Nginx is running successfully!</h2>
  <p>This website is hosted on an EC2 instance.</p>
  <p>Infrastructure managed with Terraform.</p>
</body>
</html>
EOF

systemctl enable nginx
systemctl restart nginx
