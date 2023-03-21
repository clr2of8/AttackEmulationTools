These Emulations are converted from the ["Atomics on a Friday" project](https://github.com/Atomics-on-A-Friday/Emulation-Tools).

Original author is [@Burning-PM](https://github.com/burning-pm).

These CSV Files can be ingested by the [Invoke-AtomicRedTeam](https://github.com/redcanaryco/invoke-atomicredteam) Execution Framework as follows:

```powershell
# This will list the name of each enabled test on the schedule (IcedID.csv in the current directory)
Invoke-AtomicRunner -listOfAtomics C:\Users\art\AttEmuTools\Samples\Emulations\IcedID.csv -ShowDetailsBrief

# This will run the get-prereq commands for each enabled test on the schedule
Invoke-AtomicRunner -listOfAtomics C:\Users\art\AttEmuTools\Samples\Emulations\IcedID.csv -GetPrereqs

# This will run each of the atomic tests on the schedule
Invoke-AtomicRunner -listOfAtomics C:\Users\art\AttEmuTools\Samples\Emulations\IcedID.csv

# This will run each the cleanup commands for each of the atomic tests on the schedule
Invoke-AtomicRunner -listOfAtomics C:\Users\art\AttEmuTools\Samples\Emulations\IcedID.csv -Cleanup
```
![image](https://user-images.githubusercontent.com/22311332/226513002-41bc17bd-b77d-467c-956b-77ee65c9894c.png)

Note: The CSV files don't render the new line (carriage return) values that are required to separate multiple input arguments. You need to view the "Raw" file in GitHub to see the exact format required.

* The Order column is only used for your convenience if you want to sort the schedule in Excel. It is not used programmatically.
* You can set a custom timeout value with the TimeoutSeconds column.
* Notes are only for your reference and not used programmatically.
* The examples show how to pass custom InputArgs to the atomic.
* InputArgs are defined as Key=Value pairs, one Key=Value pair per line.
* Backslashes in InputArgs `\` must be escaped with a second backslash `\\`, for example in Windows file paths `C:\\Windows\\System32\\cmd.exe`
