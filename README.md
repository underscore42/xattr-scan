# xattr-scan
scan for the extended SMACK onlycap attributes, comparision tool. for debugging permission issues

Had some startup issues on our reference platform (think embedded linux) which showed
up as permission denied as soon as one of the subsystems started up with SMACK onlycap
policies being enforced.

* Would only occur if the system was updated live versus a firmware update.
* Live update goes through an update daemon that runs with "admin" label but massages to "_"
* firmware update is "hard" and everything has the "_" label.
* yes we remembered to have xattr enabled on bsdtar 3.3.2 on both the host and the target
