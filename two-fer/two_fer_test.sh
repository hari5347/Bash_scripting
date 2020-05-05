#!/usr/bin/env bash

# local version: 1.2.0.1

@test "no name given" {
  #[[ $BATS_RUN_SKIPPED == "true" ]] || skip
  run bash two_fer.sh
  (( status == 0 ))
  [[ $output == "One for you, one for me." ]]
}

@test "a name given" {
  [[ $BATS_RUN_SKIPPED == "true" ]] || skip
  run bash two_fer.sh Alice
  (( status == 0 ))
  [[ $output == "One for Alice, one for me." ]]
}

@test "another name given" {
  [[ $BATS_RUN_SKIPPED == "true" ]] || skip
  run bash two_fer.sh Bob
  (( status == 0 ))
  [[ $output == "One for Bob, one for me." ]]
}

@test "handle arg with spaces" {
  [[ $BATS_RUN_SKIPPED == "true" ]] || skip
  run bash two_fer.sh "John Smith" "Mary Ann"
  (( status == 0 ))
  [[ $output == "One for John Smith, one for me." ]]
}

@test "handle arg with glob char" {
  [[ $BATS_RUN_SKIPPED == "true" ]] || skip
  run bash two_fer.sh "*"
  (( status == 0 ))
  [[ $output == "One for *, one for me." ]]
}
