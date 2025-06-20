echo "testing longpaths"
if doIsWindows
then
  echo "windows detected"
  # simulate git installation
  touch "$HOME"/.gitconfig
  echo "gitconfig file created!"
  $IDE -f install
  gitconfig_path="$HOME"/.gitconfig
  echo "$gitconfig_path"
  fileContent=$(cat "$gitconfig_path")
  echo "gitconfig content is"
  echo "$fileContent"
  assertThat "$fileContent" contains "longpaths"
fi
