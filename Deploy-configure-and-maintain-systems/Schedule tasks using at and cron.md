# Schedule tasks using `at` and `cron`
## `at`
* This allows you to run jobs at a specific time. It is managed by the `atd` service. There are two built in commands: `at` and `batch`.
    * `at` runs a task once at a given time. Typing `at` will drop you to a CLI which allows you to specify a job in the future.
    * `batch` allows you to feed a file with multiple commands to run a later time in the future.
* The jobs are specific to the user.
* Controlling access to `at` can be modified in the `/etc/at.allow` or `/etc/at.deny`. `/etc/at.allow` takes precedence. 
    * Using the two files together does not make sense because the existence of `/etc/at.allow` will cause `at` to ignore `/etc/at.deny`.
    * This does not impact the root user.
### Commands
| Command | What it does |
| --- | --- | 
| `atq` | Queries what tasks are being run |
| `atrm` | Removes job based on job number (right-most column) |

## `cron`
* Cron is managed by the `crond` service. It is used to schedule tasks at a specified frequency called *cron jobs*. To schedule a cron job, use the command `crontab -e`
* For reference on what frequnecies can be set, view the file `/etc/crontab`:
    * > ```
      >  # Example of job definition:
      >  # .---------------- minute (0 - 59)
      >  # |  .------------- hour (0 - 23)
      >  # |  |  .---------- day of month (1 - 31)
      >  # |  |  |  .------- month (1 - 12) OR jan,feb,mar,apr ...
      >  # |  |  |  |  .---- day of week (0 - 6) (Sunday=0 or 7) OR sun mon,tue,wed,thu,fri,sat
      >  # |  |  |  |  |
      >  # *  *  *  *  * user-name  command to be executed
      > ```
