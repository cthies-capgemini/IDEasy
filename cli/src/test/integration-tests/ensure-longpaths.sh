echo "testing longpaths"
if doIsWindows
then
  echo "windows detected"
  $IDE -f install
  gitconfig_path="$HOME"/.gitconfig
  echo "$gitconfig_path"
  fileContent=$(cat "$gitconfig_path")
  echo "gitconfig content is"
  echo "$fileContent"
  assertThat "$fileContent" contains "longpaths"
fi
