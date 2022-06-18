    default:
        dockerimage: ubuntu:16.04
        build_steps:
          - >
            DEBIAN_FRONTEND=noninteractive apt-get update &&
            DEBIAN_FRONTEND=noninteractive apt-get -y install 
            git sudo build-essential nginx ca-certificates php
            php-fpm php-cli
          - ADD ~/code/nginx.conf /etc/nginx/nginx.conf
          - cp -r ~/code/myapp /var/www/
        run_steps: 
          - service php5-fpm start
          - service nginx start