repo() {
  local repository=$(cat "$1/repository")
  echo "${repository}@sha256"
}

ref() {
  sed 's/sha256://' "$1/digest"
}
