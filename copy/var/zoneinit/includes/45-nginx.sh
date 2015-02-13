# Generate hostname for nginx config

if mdata-get sdc:hostname 1>/dev/null 2>&1; then
	host=$(mdata-get sdc:hostname)
	/opt/local/bin/sed -i "s:server_name.*;:server_name ${host};:g" \
		/opt/local/etc/nginx/nginx.conf
fi

# Enable nginx
/usr/sbin/svcadm enable svc:/pkgsrc/nginx:default
