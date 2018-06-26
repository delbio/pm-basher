#!/usr/bin/env bats

load test_helper

@test "without args, show help for root pm-basher command" {
  run pm-basher-help

  assert_success

  assert_line "Usage: pm-basher <command> [<args>]"
}

@test "shows help for a specific command" {
  cat > "${PM_BASHER_TMP_BIN}/pm-basher-hello" <<SH
#!shebang
# Usage: pm-basher hello <world>
# Summary: Says "hello" to you
# This command is useful for saying hello.
echo hello
SH

  run pm-basher-help hello

  assert_success
  assert_output <<SH
Usage: pm-basher hello <world>

This command is useful for saying hello.
SH
}
