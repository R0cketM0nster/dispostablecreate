$filelocation = read-host "Please enter the file location"

$file = Get-Content -Path $filelocation
foreach ($name in $file){
$wshell = new-object -com wscript.shell
$wshell.run("iexplore.exe http://www.dispostable.com")
start-sleep 2
$wshell.SendKeys("$name")
start-sleep 2
$wshell.sendkeys("{ENTER}")}
