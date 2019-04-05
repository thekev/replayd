/etc/systemd/system/replayd.service:
  file.managed:
    - source: salt://files/replayd.service
    - template: jinja

/etc/tmpfiles.d/replayd.conf:
  file.managed:
    - source: salt://files/replayd.tmpfiles.conf

/bin/systemd-tmpfiles --create:
  cmd.run:
    - stateful: true
    - onchanges:
      - file: /etc/tmpfiles.d/replayd.conf

replayd:
  service.running:
    - enable: true

# vim: set et ai ts=2 sw=2 tw=0 ft=yaml: #
