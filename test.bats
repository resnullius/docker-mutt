setup() {
  docker history resnullius/mutt >/dev/null 2>&1
}

@test "mutt is there" {
  run docker run --rm --entrypoint "" resnullius/mutt which mutt
  [ $status -eq 0 ]
}

@test "msmtp is there" {
  run docker run --rm --entrypoint "" resnullius/mutt which msmtp
  [ $status -eq 0 ]
}
