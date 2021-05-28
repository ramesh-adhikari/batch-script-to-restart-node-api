set log_filename=E:\Node_server_restart\log.txt
set node_project_dir=E
set node_project_path=E:\sanima-common-api
echo ===================================================>> %log_filename%
echo Batch Job Started = %time% %date%>> %log_filename%

for /f "tokens=5" %%a in ('netstat -aon ^| find ":8090" ^| find "LISTENING"') do taskkill /f /pid %%a

echo Task Killed>> %log_filename%
echo ===================================================>> %log_filename%


cd /d %node_project_dir%:
cd "%node_project_path%"
start node app.js




