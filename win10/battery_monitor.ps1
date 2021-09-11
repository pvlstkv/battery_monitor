$highLevel = 70
$lowLevel = 35
$timeoutOfChecking = 100 #sec



function mainFunction(){
    while($true){
        $currentPercentage = getBattPercentage
        if((isAcPower) -and ($currentPercentage -ge $highLevel))
        {
            showNotification 'Charged' 'Unplug the charger' 10    
        }
        if((-not (isAcPower)) -and ($currentPercentage -le $lowLevel))
        {
            showNotification 'Discharged' 'Plug the charger' 10
        }
        Start-Sleep -s $timeoutOfChecking;

    }
}

function isAcPower(){
    $runtime = Get-CimInstance -ClassName Win32_Battery | Measure-Object -Property EstimatedRunTime -Average | Select-Object -ExpandProperty Average

    if ($runtime -eq 71582788)
    {
      return $true
    }
    else
    {
      return $false
    }
}

function getBattPercentage(){
     # get battery charge for one or more batteries:
    return Get-CimInstance -ClassName Win32_Battery | Measure-Object -Property EstimatedChargeRemaining -Average | Select-Object -ExpandProperty Average
}

function showNotification ($title, $text, $timeout){
    [reflection.assembly]::loadwithpartialname('System.Windows.Forms') | Out-Null;
    [reflection.assembly]::loadwithpartialname('System.Drawing') | Out-Null;
    $notify = new-object system.windows.forms.notifyicon;
    $notify.icon = [System.Drawing.SystemIcons]::Warning;
    $notify.visible = $true;$notify.showballoontip($timeout, $title, $text,'Warning');
    Start-Sleep -s $timeout;
    $notify.Dispose()

}

mainFunction
