#!/usr/bin/env bats
@test "replayd is executable" {
  run test -x /usr/local/bin/replayd
  [ "$status" -eq 0 ]
}

@test "replayd home is created" {
  run stat -c '%a %U %G' /run/replayd
  [ "$status" -eq 0 ]
  [ "$output" = "2750 replayd replayd" ]
}

# vim: set et ai ts=2 sw=2 tw=0 ft=sh: #
