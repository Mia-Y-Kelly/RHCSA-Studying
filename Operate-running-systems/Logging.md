# Configuring Logging with RHEL
There are two primary things logging processes:
* `journalctl`
    * Responsible for logging systemd activities. Depending on settings, the logs do not persist on reboot
* `rsyslog`
    * Logs everything (including journalctl logs if configured)
    * Logs are stored in `/var/log`

## Logging Locations
| Location | Function |
| ---| --- |
| `/var/log/messages` | Generic log file | 
| `/var/log/dmesg` | Logs related to kernel activity
| `var/log/secure` | Authentication related logs |
| `/var/log/boot.log` | Boot related messages |
| `var/log/audit/audit.log` | SELinux writes to this file |
| `/var/log/maillog` | For mail services |
| `/var/log/httpd` | For Apache web services |

## Message Priorities
| Number | Priority| 
| --- | --- |
| `0, emerg` | Renders system unusable |
| `1, alert` | Action needed immediately |
| `2, crit` | Critical conditions |
| `3, err` | Error conditions |
| `4, warning` | Warning |
| `5, normal` | Normal, but significant events |
| `6, info` | Informational messages |
| `7, debug` | Debug messages |

## Storing the `Systemd` journal
* By default, the journal and all processes are logged to `/run/log/journal`. They do not persist after a reboot
* Setting for the journal output can be found in `/etc/systemd/journald.conf`. There are **4 modes** you can set:
    1. `Storage=auto` will write to `/var/log/journal` if it exists.
    2. `Storage=volatile` will write to `/run/log/journal`
    3. `Storage=persistent` will write to `/var/log/journal`. It will create this file if it does not exist.
    4. `Storage=none` will not store anything

## `rsyslog`
* rsyslog determines where files should be logs based on facility (category), priority, and destination