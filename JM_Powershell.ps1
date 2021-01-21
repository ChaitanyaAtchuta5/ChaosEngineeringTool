$jmeter_bin=$args[0]
$jmeter_script=$args[1]
$jmeter_result=$args[2]

Write-Output "Jmeter Bin Path:   " $jmeter_bin
Write-Output "Jmeter Script Path:" $jmeter_script
Write-Output "Jmeter Result path:" $jmeter_result

$Prompt = Read-Host "Do you want to start Jmeter script? (Y/N)"

if ($Prompt -eq 'Y')
{
Write-Output "Jmeter is Running"
cmd.exe /c $jmeter_bin -n -t $jmeter_script -l $jmeter_result
}
else
{
Write-Output "Cancelled!"
}