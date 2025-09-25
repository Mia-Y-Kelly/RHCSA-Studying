# Understand and use basic tools: Labs

## Repo Files
| **Option**    | **Explanation** |
| ----------    | --------------- |
| `[label]`     | Contains the label used as an identifier in the repository file | 
| `name=`       | Mandatory option that specifies the name of the repository      |
| `mirrorlist=` | Optional parameter that refers to a URL where information about mirror servers for this server can be obtained. Typicall used for big online repositories only. |
| `baseurl=`    | Mandatory option that refers to the base URL where the RPM packages are found. |
| `gpgcheck=`   | Set 1 if a GNU Privacy Guard (GPG) integrity check needs to be performed on the packages. If set to 1, a GPG key is required. |
| `gpgkey=`     | Specifies the location of the GPG key that is used to check package integrity. |

## Repository access 
#### Create a custom repo file to pull from a hypothetical upstream: *https://repo.helloworld.com*. Turn off gpgcheck and disable it (as it does not actually exist). This is important because all servers will be offline in the exam.
1. Create this file
```
[local-repo]
name=My local repo
baseurl=https://repo.helloworld.com
enabled=0
gpgcheck=0
```
2. Or use config-manager
    1. `sudo dnf config-manager --add-repo https://repo.helloworld.com`
    2. Manually set gpgcheck to 0 in /etc/yum.repos.d/\<file>

## Using dnf
| **Task**          | **Explanation** |
| --------          | --------------- |
| `search`          | Search packages for a string that occurs in the package name or summary.
| `search all`      | Search packages for a string that occurs in package name, summary, or description. |
| `[what]provides */name` | Perform a deep search in the package to look for specific files within the package. |
| `info`            | Provide more information about the package. |
| `install`         | Install the package |
| `remove`          | Remove the package. |
| `list [all\|installed]` | List all or installed packags. |
| `group list` | List package groups. |
| `group install` | install packages from a group. | 
| `update` | Update packages specified. | 
| `clean all` | Remove all stored metadata.