# File Permissions
| Mode      | Number |
| ----      | ------ |
| Read      |   4    |
| Write     |   2    | 
| Execute   |   1    |

## Applying permissions
* Use `X` when recursively applying execute permissions instead of `x`
* To delete a file, you must have write permissions
* To change into a directory, you must have execute permissions
* `chmod` manages permissions
    * `chmod <group>+<r/w/x>`
        * Groups are User(u), Group(g), and others(o)
    * `chmod <number>`
* The *Sticky bit* restricts deletion and renaming of files within a directory to the owner and the root user.

## Setting default permissions
* `umask` allows you to set default permissions. It subtracts the mask numbers from the default permissions. For directories, the default maximum permissions are 777 for directories and for files it is 666. For example, if a umask of `022` is set, it means the file will have the permissions of `644`.

| Value | Applied to Files | Applied to Directories |
| ----- | ---------------- | ---------------------- |
|   0   | Read/Write       | Everything             |
|   1   | Read/Write       | Read/Write             |
|   2   | Read             | Read/Execute           |
|   3   | Read             | Read                   |
|   4   | Write            | Write/Execute          |
|   5   | Write            | Write                  |
|   6   | Nothing          | Execute                |
|   7   | Nothing          | Nothing                |