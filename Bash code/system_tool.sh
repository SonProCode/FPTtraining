#!/usr/bin/env bash
function show_cpu(){
  lscpu | head -5
}

function show_memory(){
  free -h
}

function show_disk(){
  df -h
}

function show_help(){
 echo "Wrong input"
}

function show_all(){
 logs[0]="$(show_cpu)"
 logs[1]="$(show_memory)"
 logs[2]="$(show_disk)"
 > system_report.txt
 echo "${logs[@]}" >> system_report.txt
 cat system_report.txt
}

case "$1" in
 --cpu)
  show_cpu
  ;;
 --memory)
  show_memory
  ;;
 --disk)
  show_disk
  ;;
 --all)
  show_all
  ;;
 *)
 show_help
 ;;
esac
