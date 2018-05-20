# logrotate


Installs logrotate and provides an easy way to setup additional logrotate scripts by
specifying a list of directives.

## Requirements

None

## Role Variables

**logrotate_scripts**: A list of logrotate scripts and the directives to use for the rotation.

* name - The name of the script that goes into /etc/logrotate.d/
* path - Path to point logrotate to for the log rotation
* options - List of directives for logrotate, view the logrotate man page for specifics
* scripts - Dict of scripts for logrotate (see Example below)

```
logrotate_scripts:
  - name: mysql
    path: "/var/log/mysql/*.log"
    options:
      - weekly
      - size 25M
      - missingok
      - compress
      - delaycompress
      - copytruncate
```

## Dependencies

None

## Example Playbook

Setting up logrotate for additional Nginx logs, with postrotate script (assuming this role is located in `roles/logrotate`).

```
- role: logrotate
  logrotate_scripts:
    - name: tomcat7
      path: /var/log/tomcat7/catalina.out
      options:
        - weekly
        - size 25M
        - rotate 7
        - missingok
        - compress
        - delaycompress
        - copytruncate
```
