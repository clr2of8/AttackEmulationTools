These Emulations are converted from that ["Atomics on a Friday" project](https://github.com/Atomics-on-A-Friday/Emulation-Tools). Original author is @Burning_PM.

These CSV Files can be ingested by the [Invoke-AtomicRedTeam](https://github.com/redcanaryco/invoke-atomicredteam) Execution Framework as follows:

```powershell
# This will list the name of each enabled test on the schedule (IcedID.csv in the current directory)
Invoke-AtomicRunner -listOfAtomics C:\Users\art\AttEmuTools\Samples\Emulations\Phosphorus.csv -ShowDetailsBrief

# This will run the get-prereq commands for each enabled test on the schedule
Invoke-AtomicRunner -listOfAtomics C:\Users\art\AttEmuTools\Samples\Emulations\Phosphorus.csv -GetPrereqs

# This will run each of the atomic tests on the schedule
Invoke-AtomicRunner -listOfAtomics C:\Users\art\AttEmuTools\Samples\Emulations\Phosphorus.csv

# This will run each the cleanup commands for each of the atomic tests on the schedule
Invoke-AtomicRunner -listOfAtomics C:\Users\art\AttEmuTools\Samples\Emulations\Phosphorus.csv -Cleanup
```

Note: that the CSV files don't render the new line (carriage return) values that are required to separate multiple input arguments. You need to view the "Raw" file in GitHub to see the exact format required.
