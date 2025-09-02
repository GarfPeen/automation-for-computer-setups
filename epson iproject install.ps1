#Installs Epson Projector Client, then accepts eula and selects language option as English
Write-Host "Installing Epson Projector Client"
Sleep1

& \\path\to\file\iProjection_Inst.exe 
$wshell = New-Object -ComObject wscript.shell
$aName = "Epson iProjection Ver.2.21"
function Next() { 
  if ($wshell.AppActivate($aName)) { 
    $wshell.SendKeys('~'); 
    start-sleep 1;
  } 
}
function AcceptEula() {
  if ($wshell.AppActivate($aName)) {
   $wshell.SendKeys("{TAB}"); 
   $wshell.SendKeys("{TAB}"); 
   $wshell.SendKeys('~'); 
   start-sleep 1;
  }
}
Next; AcceptEula; AcceptEula; start-sleep 20; Next;
