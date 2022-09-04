# VSCode Config 

This repo is a simple placeholder for keep track and manage `vscode` configuration.
Pretty much as a `dotfile` repo but for vscode
It also has convinience scripts to help you export your current configurations and plugins (shell scripts)
 
## Export currently installed extensions
- Make sure you have `code` command in your `$PATH`
- Run script `export-extensions.sh` in the `root` folder of this repo
- You will have a file named `ext` that contanins installation commands to install your currently installed `vscode extensions`

## To install extensions from ext file
- In the `root` folder of this repo run: 
```bash
source ./ext
``` 

## Export current configuration 
- Go to your `settings.json` 
- Simply make a copy into this repo's `root` folder

