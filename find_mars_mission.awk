awk -F '\\s*\\|\\s*' '
$0 !~ /^#/ && $3 == "Mars" && $4 == "Completed" && $6+0 > max {
  max = $6+0; code = $8
}
END { print code }
' space_missions.log