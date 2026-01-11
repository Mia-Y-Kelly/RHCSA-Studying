# Configuring Apache Web Server
1. Install using `sudo dnf group install "Basic Web Server`
2. Enable the service using `sudo systemctl enable --now httpd`
3. Add service and ports to the firewall
    * `sudo firewall-cmd --permanent --zone=public --add-port=80/tcp`
    * `sudo firewall-cmd --permanent --zone=public --add-port=443/tcp`
    * `sudo firewall-cmd --permanent --zone=public --add-service=http`
    * `sudo firewall-cmd --permanent --zone=public --add-service=https`
    * `sudo firewall-cmd --reload && sudo systemctl restart firewalld`
    * Verify with `sudo firewall-cmd --list-all`
4. Main configuration file can be found in the `/etc/httpd/config/httpd.conf` file
5. Add a basic `index.html` file at `/var/www/html` to setup a default landing page.
