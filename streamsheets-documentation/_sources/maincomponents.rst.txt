.. |StMFlow| image:: /images/StMFlow.png
         :scale: 70%
.. _Main Components:

Main Components
=====================
The 3 main components of the Streamsheet platform are: :term:`Streamsheet`\ s, :term:`Stream Machine`\ s and Streams. 
Streamsheets consume, process and produce data streams. In Excel, one or several sheets always form part of a Workbook. In a similar way, Streamsheets run in Stream Machines and one Stream Machine accommodates up to four sheets. Hence strictly speaking, the Stream Machine consumes, processes, and produces data streams, and the Streamsheets contained in the Stream Machine define how this happens exactly.
Streams define the endpoints where messages are coming from and where they are sent to, hence data sources and data sinks. These endpoints can be e.g. :term:`MQTT` and :term:`Kafka` topics as well as :term:`OPC UA` nodes, :term:`REST` APIs, database collections or local directories.

| |StMFlow|

Stream Machines consume and produce streams. A Machine´s Streamsheets define how this happens.

.. toctree::
    :maxdepth: 1
    

    maincomponents/streammachine       
    maincomponents/streamsheet
    maincomponents/dashboard
    maincomponents/administration
