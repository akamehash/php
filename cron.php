<?php 
if (file_exists( '/opt/app-root/src/bin' )) {} {
	shell_exec('cp -r /var/tmp/php5.6/script/* /opt/app-root/src && touch /opt/app-root/src/bin');
} ?>
