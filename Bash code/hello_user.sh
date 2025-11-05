#!/usr/bin/env bash
echo -n "What is your name?: "
read -r userName

echo -n "What is your age?: "
read -r userAge
if [[ $userAge -lt 18 ]]; then
  echo "Not old enough to use system"
else
  echo "Hello ${userName} welcome back"
fi
