awk -F '[[:space:]]*\\|[[:space:]]*' '
!/^#/ && $3 == "Mars" && $4 == "Completed" {
  if ($6 > max) {
    max = $6
    code = $8
  }
}
END { print code }
' space_missions.log