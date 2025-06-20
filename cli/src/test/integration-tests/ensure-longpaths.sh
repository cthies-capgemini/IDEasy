echo "testing longpaths"
if doIsWindows
then
  echo "windows detected"
  gitconfig_path="$HOME/.gitconfig"
  fileContent=$(cat "$gitconfig_path")
  echo "gitconfig content is"
  echo "$fileContent"
  assertThat "$fileContent" contains "longpaths"
fi
