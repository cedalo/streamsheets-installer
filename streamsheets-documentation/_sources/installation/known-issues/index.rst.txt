===================
Known issues
===================

**Docker will prompt an Error message if:**

+ The YML file has the wrong path to connect to the local directory. Change the directory for the "filefeeder" in the YML to an existing path.
+ Docker has not set the option "Shared drives" in the docker settings menu to allow access to the used drive in the YML.
+ Docker has no space left on device. Use: ``docker image prune`` or ``docker volumne prune`` to clear some space, or allow docker more disc space. 
+ You don´t have a valid license. There has to be a valid license in the folder "services/docker-compose/license". (not for the Raspberry Pi)


**Streamsheets not reachable in local network:**

+ Sometimes firewalls are blocking the network accessibility of the Streamsheets. 