#!/usr/bin/env bats
@test "replayd returns 200" {
  run curl -sLw "%{http_code}" -o /dev/null http://localhost:8000/ #TODO set port from pillar?
  [ "$output" = "200" ]
}

# vim: set et ai ts=2 sw=2 tw=0 ft=sh: #
