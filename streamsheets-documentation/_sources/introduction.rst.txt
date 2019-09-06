.. |StSIntro| image:: /images/StSIntro.jpg
         :scale: 100%

Introduction
============

Quick Overview
---------------
Streamsheets are server-based spreadsheets that consume, process and produce data streams. Data streams can originate from many sources, such as sensors, machines, websites, data bases, applications and many more. How incoming data streams are processed, analysed, visualized and combined as well as which outgoing data streams are produced is modelled entirely with spreadsheet formulas and especially without writing a single line of program code. 
One important characteristic of Streamsheets is that they are recalculated automatically, e.g. every time a new message arrives or continuously with a certain cycle time (can be as small as a few Milliseconds). Consequently, conditions and formulas are considered continuously and based on these decisions are taken and visualizations are updated dynamically. All of this is happening in real-time.
What´s more, Streamsheets allow you to send, publish, store or provide data, hence, they not only consume data streams but produce them as well. 
In a similar way as Excel worksheets form part of a workbook, Streamsheets run in Stream Machines. 
Find out more about Streamsheets, Stream Machines and how Streams are configured under :ref:`Main Components`.

|StSIntro|

A :term:`Streamsheet` runs in a :term:`Stream Machine`, processes a data stream and publishes a new stream.

Use Cases
---------

Streamsheets can be used for many different scenarios and use cases. Among the most common are the following: 

+ Data stream analytics and data stream synchronization
+ Rule Engines, conditional alerting & actions as well as soft PLCs
+ Monitoring and real-time dashboards 
+ Edge-cloud and cloud-cloud connectivity
+ Protocol conversion and Semantic Mappings (e.g. :term:`MQTT` ↔ :term:`OPC UA`)
+ Pre-processing on the edge
+ Pre-Processing for AI-Systems
+ Simulation of data sources and devices
+ Automation of Workflows

**Examples videos**

+ `A first introduction`_
+ `Windmill Cockpit`_
+ `Merging MQTT streams and expose them as OPC UA server`_
+ `Real-Time Quality Control`_ (German)

.. _A first introduction: https://www.youtube.com/watch?v=TdefETldLbA
.. _Windmill Cockpit: https://www.youtube.com/watch?v=fNJcIVSneH4&t=1s
.. _Merging MQTT streams and expose them as OPC UA server: https://www.youtube.com/watch?v=nFQ7yAoDZr0&t=3s
.. _Real-Time Quality Control: https://www.youtube.com/watch?v=8Psom4xRarU