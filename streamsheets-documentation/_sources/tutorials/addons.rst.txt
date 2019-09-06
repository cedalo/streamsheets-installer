Add-Ons
=============================

Adding components to the Streamsheets architecture is possible.

.. _mongodb:

MongoDB
---------
Streamsheets come with the option to connect to any MongoDB you need. If you don´t have a MongoDB yet, it is fairly simple to setup.
While Streamsheets run with docker, the same possibility exists for MongoDB. 

**Setup Mongo Database**

Open a terminal of your choice and enter:

  | Command: ``docker run --name <container-name> --net streamsheets mongo`` 
  | Example: ``docker run --name mymongodb --net streamsheets mongo``

If you have the Raspberry Pi version use:

  | Command: ``sudo docker run --name <container-name> --net streamsheets andresvidal/rpi3-mongodb3``
  | Example: ``sudo docker run --name mymongodb --net streamsheets andresvidal/rpi3-mongodb3``
  
This command downloads a MongoDB image and runs it in a container named <container-name> in the docker network “streamsheets”. It is important that the container name does not contain capital letters! Done!

Now you can create a new MongoDB Connector in the Administration Menu of your Streamsheet installation. Check the “External Host” checkbox and enter the <container-name> under “Host(s)”. All other settings are optional. Add a Producer and use the MONGO.STORE function to safe your first datapoints to your very own MongoDB. 

**Start Stop MongoDB**

To properly stop and start your created container enter: 

  | Command: ``docker stop <container-name>`` ``docker start <container-name>`` 
  | Example: ``docker stop mymongodb`` ``docker start mymongodb``


**Further Settings**

You can add these commands to the ``docker run`` command above.


.. list-table::
   :widths: 30 30
   :header-rows: 1

   * - Command
     - Description
   * - ``-publish 27017:27017`` 
     - set the MongoDB port to 27017
   * - ``-e MONGO_INITDB_ROOT_USERNAME=mongoadmin`` 
     - adds root user 
   * - ``-e MONGO_INITDB_ROOT_PASSWORD=secret`` 
     - adds root password 
   * - ``-v ./<directory>:/data/db`` 
     - add the container data to a folder outside of the docker environment. (change <directory> to a real path)


More can be found `here <https://hub.docker.com/_/mongo>`_.

.. _influxdb:

InfluxDB 
---------

As with MongoDB, it is also possible to connect an InfluxDB. Even the Setup process is pretty similiar. If you do not have a InfluxDB yet, it is fairly simple to setup. While Streamsheets run with docker, the same possibility exists for MongoDB and InfluxDB.

**required**

Streamsheets Version 1.3.2 or higher

**Setup Influx Database**

Open a terminal of your choice and enter:

  | Command: ``docker pull influxdb:1.7``

  | Command: ``docker run --name <container-name> --net streamsheets influxdb`` 
  | Example: ``docker run --name myinfluxdb --net streamsheets influxdb``

Those commands download the Version 1.7.7 InfluxDB image and runs it in a container named <container-name> in the docker network "streamsheets". It is important that the container name does not contain capital letters! First step done!

**Setup Influx Database for RaspberryPi Version**

Open a terminal and enter:

  | Command: ``docker pull hypriot/rpi-influxdb``
  
  | Command: ``docker run --name <container-name> --net streamsheets hypriot/rpi-influxdb``
  | Example: ``docker run --name myinfluxdb --net streamsheets hypriot/rpi-influxdb``


**Start Stop InfluxDB**

To properly stop and start your created container enter: 

  | Command: ``docker stop <container-name>`` ``docker start <container-name>`` 
  | Example: ``docker stop myinfluxdb`` ``docker start myinfluxdb``

More can be found `here <https://hub.docker.com/_/influxdb>`_.

Take a look :ref:`here <influx>` for an example use case!


