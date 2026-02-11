chcp 932
robocopy "%1" "%2" "*.mp4" "*.m4a" "*.mp3" "*.m3u" -mir
pause
chcp 65001
