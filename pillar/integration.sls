linux:
  system:
    enabled: true
    name: replayd
    domain: integration.test
    cluster: test0
    environment: integration
    timezone: Etc/UTC
    utc: true
    autoupdates: 
      enabled: true
      mail: root@localhost
      mail_only_on_error: true
      remove_unused_dependencies: true
      automatic_reboot: false
    locale:
      en_US.UTF-8:
        default: true

replayd:
  port: 8000
  docroot: /run/replayd

# vim: set et ai ts=2 sw=2 tw=0 ft=yaml: #
