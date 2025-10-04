# Setting up NTP
## Set up the server
*To view the clients connected to the server: `sudo chronyc clients`*
1. Install chrony if its not installed
    * `sudo systemctl status chronyd`
    * If nothing shows up:
        * `sudo dnf install chrony`
        * `sudo systemctl enable --now chronyd && sudo systemctl start chronyd`
2. Point the server to a server listed at [NTP Pool Project](https://www.ntppool.org/en/).
    * `sudo vim /etc/chrony.conf`
    * Edit the line that says *"Allow NTP client access from local network"*
        * `allow \<subnet\>/\<CIDR\>`
    * Restart the `chronyd` daemon
        * `sudo systemctl restart chronyd`

## Set up the clients
*To view the server(s) connected to the client: `sudo chronyc sources`*
1. Install chrony if its not installed
    * `sudo systemctl status chronyd`
    * If nothing shows up:
        * `sudo dnf install chrony`
        * `sudo systemctl enable --now chronyd && sudo systemctl start chronyd`
2. Point the client at the NTP server
    * `sudo vim /etc/chrony.conf`
    * Add the servers below the comment that mentions *Use public serves from pool.ntp.org*
        * `source \<NTP Server IP\> maxpoll 16 iburst`
    * Restart the `chronyd` daemon
        * `sudo systemctl restart chronyd`

