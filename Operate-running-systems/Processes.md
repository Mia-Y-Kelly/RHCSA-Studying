# Processes
## How kill a zombie process
1. Find the parent process
    * `ps fax | less `
2. `kill -SIGCHILD <parent PID>`
3. `kill <parent PID>`

* `killall` - kills processes by name
* `kill` - kills processes by PID
    * To force kill a process: `kill -9 <PID>`

## nice levels
* Allows you to set the processes to higher or lower priority to use the CPU
    * Negative numbers indicate higher priority
    * Positive numbers indicate lower priority
* <u>Using `tuned` and `tuned-adm`</u>
    * Allows the user to optimize the system
    * `tuned-adm list` shows default optimzation profiles
    * To create a custom profile, put a configuration file in `/etc/tuned/<profile name>/tuned.conf`
    * To give tuned priority over sysctl, edit `/etc/tuned/tuned-main.conf` from `reapply_sysctl=1` to `reapply_sysctl=0`

## Managing user sessions and processes
* `loginctl` is a CLI built into systemctl to manage user logins and user sessions
* `loginctl terminate-session` kills by session
* `loginctl terminate-user` kills by user
* `loginctl user-status <uid>`
