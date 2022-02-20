# This shell script will export all the extensions currently installed 
# in your vscode, please make sure you have "code" pointed in your $PATH

# Declaring variables 

ext_file="ext"
vscode_command="code"
# check to see if code command is in $PATH

if ! type "$vscode_command" > /dev/null; then
								echo "missing command $vscode_command"
								echo "please install the program and make sure the program is in PATH environment variable"
								exit 1
fi

# export all extensions to file
echo "exporting to currrently installed extensions into $ext_file file ..."

$vscode_command --list-extensions | xargs -L 1 echo code --install-extension > $ext_file

# Verifies if something went wrong during the export
last_error_code=$?
if [ "$last_error_code" != "0" ]  > /dev/null; then
								echo "something went wrong when trying to export the vscode extensions"
								echo "exited with errorcode $last_error_code"
								exit $last_error_code
fi

echo "currrently installed extensions successfully exported into $ext_file file"

# Exiting with success error code
exit 0

