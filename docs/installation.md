# Installation

TBD

## Install using Docker (recommended)

### Pre-requisites

TBD

### Bootstrapping project

Navigate to the directory where you'd like to keep the configuration and data files. `/opt` is recommended.

```shell
cd /opt
```

Download skeleton with for the recent stable version of HidlRoute

```shell
curl -fsSL https://get.hidlroute.org | sudo bash
```

```shell
curl -fsSL https://get.hidlroute.org/latest/deploy-ubuntu.sh > /tmp/hidl-deploy.sh && bash /tmp/hidl-deploy.sh
```


```shell
export HIDL_SUPERUSER_LOGIN="hidladmin"
export HIDL_SUPERUSER_EMAIL="youremail@gmail.com"
export HIDL_SUPERUSER_PASSWORD="f4sRYmuePo337JsaDZbx"
export PRIMARY_DOMAIN="yourdomain.com"
export LETSENCRYPT_EMAIL="$HIDL_SUPERUSER_EMAIL"
curl -fsSL https://get.hidlroute.org/latest/deploy-ubuntu.sh > /tmp/hidl-deploy.sh && bash /tmp/hidl-deploy.sh
```

Digital Ocean
```shell

```

```yaml
#cloud-config
write_files:
  - path: /tmp/hidl-init.sh
    permissions: 700
    owner: root
    content: |
      #!/bin/bash
      
      export HIDL_SUPERUSER_LOGIN="hidladmin"
      export HIDL_SUPERUSER_EMAIL="youremail@gmail.com"     # CHANGE ME!!!
      export HIDL_SUPERUSER_PASSWORD="f4sRYmuePo337JsaDZbx" # CHANGE ME!!!
      export PRIMARY_DOMAIN="$(curl -s http://169.254.169.254/metadata/v1/interfaces/public/0/ipv4/address)"  # CHANGE ME!!!
      export LETSENCRYPT_EMAIL="$HIDL_SUPERUSER_EMAIL"
      set -e
      curl -fsSL https://get.hidlroute.org/latest/deploy-ubuntu.sh > /tmp/hidl-deploy.sh && bash /tmp/hidl-deploy.sh
      
      rm /tmp/hidl-init.sh
runcmd:
  - /tmp/hidl-init.sh
```
