if doIsWindows
then
  echo "Running ensure git config longpaths gets set integration test"
  touch "$HOME"/.gitconfig
  assertThat "${IDE_ROOT}/${TEST_PROJECT_NAME}/workspaces/main/idea.properties" exists
  $IDE -f install
  assertThat "${IDE_ROOT}/${TEST_PROJECT_NAME}/workspaces/main/idea.properties" exists
  gitconfig_path="$HOME"/.gitconfig
  fileContent=$(cat "$gitconfig_path")
  assertThat "$fileContent" contains "longpaths"
fi
