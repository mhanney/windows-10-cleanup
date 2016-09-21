# How to prevent Windows 10 scheduled tasks from using resources while you doing important work


1. Press Windows key and type administrative tools.
1. Select Administrative Tools and double click Task Scheduler.


## Windows Defender Scans

To prevent Windows Defender running a scan when you are in the middle of something important:

Follow this path in the left hand pane.

```
Task Scheduler Library/Microsoft/Windows/Windows Defender
```

For each of the tasks listed below, do the following:
Right click -> properties, go to conditions tab, check the box for 'Start the task only if the computer is idle for' select 30 minutes (or longer). Check - 'Stop the task if the computer ceases to be idle'

* Windows Defender
* Windows Defender Cache Maintenance
* Windows Defender  DIsk Cleanup
* Windows Defender  Scheduled Scan
* Windows Defender Verification


## Windows Update

Follow this path in the left hand pane.

```
Task Scheduler Library/Microsoft/Windows/Windows Update
```

For each of the tasks listed below, do the following:
Right click -> Disable

* Automatic App Update
* Scheduled Start
* sih
* sihboot

Now you can run Windows Update when YOU want to by pressing the Windows key, type update, select 'Check for updates'


## Check Disk

Follow this path in the left hand pane.

```
Task Scheduler Library/Microsoft/Windows/Chkdsk
```

For each of the tasks listed below, do the following:
Right click -> properties, go to conditions tab, check the box for 'Start the task only if the computer is idle for' select 30 minutes (or longer). Check - 'Stop the task if the computer ceases to be idle'

* ProactiveScan


## Windows Error Reporting

Follow this path in the left hand pane.

```
Task Scheduler Library/Microsoft/Windows/Windows Error Reporting
```

Select the task and delete it.
