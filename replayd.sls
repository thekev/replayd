/usr/local/bin/replayd:
  file.managed:
    - source: salt://files/replayd
    - user: root
    - group: replayd
    - mode: 750

# vim: set et ai ts=2 sw=2 tw=0 ft=yaml: #
