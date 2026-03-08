set PLUGIN_DIR=E:\Obsidian\MyVault\.obsidian\plugins\deep-vault
if not exist "%PLUGIN_DIR%" mkdir "%PLUGIN_DIR%"
copy /Y E:\projects\deep-vault\main.js "%PLUGIN_DIR%"
copy /Y E:\projects\deep-vault\manifest.json "%PLUGIN_DIR%"
copy /Y E:\projects\deep-vault\styles.css "%PLUGIN_DIR%"