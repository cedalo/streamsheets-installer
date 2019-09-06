.. _streammachine:

Stream Machine
==============

.. |CycleTime| image:: /images/CycleTime.JPG
    :scale: 23%
.. |CycleTime2| image:: /images/CycleTime2.JPG
    :scale: 50%
.. |ETools| image:: /images/EditingTools.JPG
    :scale: 23%
.. |Name| image:: /images/Name.JPG
    :scale: 23 %  
.. |StartBig| image:: /images/StartBig.jpg
    :scale: 23%
.. |SettingsMenu| image:: /images/SettingsMenu.jpg
    :scale: 23%

| :term:`Streamsheet`\ s are bundled in one functional entity which processes data streams, a so-called :term:`Stream Machine`. The behaviour of a Stream Machine and the way it processes data streams is defined through its Streamsheets. All Stream Machines are listed in the “Dashboard”. You can access the Dashboard by opening the burger menu in the top-left corner and selecting “Dashboard” towards the end of the list. The Dashboard is also the start screen.
| 
| **Stream Machine Characteristics** 

+ Stream Machines contain one or up to four Streamsheets. 
+ Stream Machines run on servers. Hence, once you start them, they keep running until they are being stopped or the server is shut down, even if you turn off the client. That means you can turn off the device you are using to access the Streamsheet platform, e.g. your computer, and the Stream Machines keep running.
+ Stream Machines have a cycle time. This serves as its general calculation speed and could be seen as its internal clock. 
+ Each Stream Machine is a :term:`microservice`. 



Menu & Settings 
.......................................

At the top of every Stream Machine you find the menu bar containing its name, controls and cycle time. To access further Machine settings, click on the burger menu in the top left corner and then click on “Settings”. 

|SettingsMenu|

Name & Label
............

To better organise all of your Stream Machines you should think about a comprehansible name names (it can be more descriptive as in the example 😉 ) and add fitting labels to group them.
|Name|

Machine Control 
...............

|StartBig|

With these 4 buttons a machine´s state is controlled. A machine can either be started, paused, stopped or calculated step-by-step. 

+ Stop: This button stops the Stream Machine and sets its calculation-step-count to 0. Additionally, the step-counts and the inbox queues of its Streamsheets are reset.
+ Pause: This pauses the Stream Machine. Step-counts are not reset. However, the biggest difference to “stop” is that messages are queued in the inboxes of Streamsheets.
+ Play: This button starts a machine if it is paused or stopped. Message streams are only processed or produced if a machine is set to “play”.
+ Execute 1 step: Clicking this button triggers one machine calculation step.

.. _cycle time:

Cycle Time 
......................
When a machine is started, it recalculates continuously at the speed of its cycle time.

|CycleTime|

Depending on how fast a machine is running, not every recalculation-step can be visualized in your browser. Thus, the system automatically balances itself by visualizing only every Xth step. In addition, this update interval can also be set to a higher value manually. In any case, this affects only the visualization in the browser as the Stream Machine will always run with the defined cycle time on the server. 

|CycleTime2|

In the screenshot the cycle time is set to 1000 ms. Thus, the machine performs one recalculation aka one machine-step per second. The Update Interval is set to 10. Consequently, the visualization of the machine and its Streamsheets is updated in your browser only every 10th step that is to say in this case every 10 seconds. The gauges show how many steps are calculated on the server and how many are visualized on the client (your browser).

.. tip:: The Calculation Setting "On Message" in the Stream Sheet Settings ignores the cycle time and calculates on every incoming message.

Tool bar
...........
|ETools|

| Here you find many tools to insert functions, shapes and charts as well as to format cells in the Streamsheet grid.
| 
| Tools especially worth mentioning are:

+ **Insert Producer Function:** This tool opens a wizard containing all functions you can use to save and send data, essentially to produce a data stream. Most of the functions serve the purpose of creating an outgoing data stream. However, some, such as :ref:`REST.REQUEST <restrequest>` or :ref:`MONGO.QUERY <mongoquery>`, can also be used to bring data into the Streamsheet. Simply choose a producer function and complete the arguments. The default option is called :ref:`MQTT.PUBLISH <mqttpublish>`. This is also the most common formula to send data from one Stream Machine to another.
+ **Insert Drawing Shape:** This tool offers you a variety of shapes to use in your Streamsheets. Insert a shape and have a look at the formula bar. You will see that every shape is created by a DRAW formula. Link the position parameters to cells and the shape starts moving.
+ **Insert Chart:** Similarly to other Spreadsheet solutions, charts can be created by selecting a cell range and choosing a chart type. However, as Streamsheets are recalculated automatically, charts change dynamically according to their input.  


