$wslDistro = "Ubuntu"
$remoteCmd = 'cd /home/jeramos && ./setup_commands.sh; exec bash'

wsl.exe -d $wslDistro -- bash -ic "$remoteCmd"