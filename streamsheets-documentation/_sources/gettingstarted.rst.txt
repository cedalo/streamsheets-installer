.. |Step1| image:: /images/Step1.gif
    :scale: 65 %  
.. |Step2| image:: /images/Step2.gif
    :scale: 65 %
.. |Step3| image:: /images/Step3.gif
    :scale: 65 %
.. |Step4| image:: /images/Step4.gif
    :scale: 65 %
.. |Step5| image:: /images/Step5.gif
    :scale: 65 %  
.. |optionalstep| image:: /images/optionalstep.gif
    :scale: 65 %

Getting Started
===============

| If you are new to :term:`Streamsheets <Streamsheet>`, this section offers a quick introduction to help you understand some of the basic principles of this application. In this step-by-step guide we will build a :term:`Stream Machine` which is meant to illustrate quickly how to generate, send and receive data with Streamsheets. More specifically, we will create data in one Streamsheet, continuously send it to the internal :term:`MQTT Broker<Broker>` and this way produce a data stream which we will then receive in another Streamsheet.
|
| Let´s get started!

| **Step 1: Create a Stream Machine**
|
| |Step1|
|
| After logging in, you are taken to the Stream Machine Dashboard which lists all Stream Machines you have access to. To create your first machine, look to the top-right corner and identify the “Add” button (it is the “plus”). Click it and choose a meaningful name for your Stream Machine, e.g. “Great Start” or “Cats and Dogs”. The option “No :term:`Consumer`” is pre-selected and means that we will create a Stream Machine which does not have an input data stream connected to it. This is fine for now because, first, we have to create some data. 

|
| **Step 2: Generate Data**
|
| |Step2|
|
| Since we do not have a real data streams connected to our application yet, we simulate some to work with. A simple way to do this is to use the function =\ :ref:`RANDBETWEEN`\ (). It creates random values between a minimum and a maximum. Let´s create two values, one beneath the other and name them. Write the names left of the values, e.g. “Cats” and “Dogs”. Then, select all four cells, right-click and define them as a :term:`JSON` Range. A JSON is essentially a number of key-value pairs in which the keys can be thought of as the names for the respective values

| Now, this cell range is not only a range in the sheet but also a JSON object which is continuously built with every calculation step of the sheet.
To send these JSON objects and this way create an outgoing data stream, we need Step 3.

|
| **Step 3: Create a Consumer and Producer**
|
| |Step3|
|
| At this point a small theoretical lesson about Streamsheets is helpful:
|
|           To get data into a sheet or send data from a sheet, connections need to be defined. We call these connections Streams. 
|           Streams always consist of two parts, a Connector and Consumer or a Connector and a Producer. You can also think of them as two layers in which Connectors form the foundation that Consumers and Producers are based on. 
|           Connectors hold the general information, such as the Host URL, to connect Streamsheets to the outside world. Consumers and Producers, on the other hand, further specify the input (Consumer) and output streams (Producer). 
|           All three Stream resources are defined in the “Administration”, which can be found in the burger menu in the top-left corner of the Stream Machine.  
|
| Please, open the burger menu and go to the “Administration”. 
| 
| On the left, Connectors, Consumers and Producers are listed under Streams. A MQTT Connector is already in place and connected to the internal MQTT Broker. We are already creating data in our Stream Machine, which we now want to send, thus, we have to set up a Producer. Go to the Producers, add a new one by clicking on the “Add” button in the top-right corner, name it and select the “MQTT Connector” as foundation. Further settings are optional. Save it (top-right corner) and you created your first Producer! 

| As we are already in the Administration area, let´s quickly create a Consumer. Again, click the “Add” button, name the Consumer and select the “MQTT Connector” as its foundation. This time we have to specify a topic as an additional parameter, e.g. “catsanddogs”. Then, save the settings by clicking the save symbol in the top right corner.

|
|
| **Step 4: Produce a Message stream**
|
| |Step4|
|
| Now, we switch back to our Stream Machine. Should you have closed the tab, just go to the dashboard via the burger menu and open it again. 
| To send the JSON Range, we select a cell beneath the range and click “Insert Stream Function” in the tool bar (it is the arrowhead). Choose :ref:`MQTT.PUBLISH <mqttpublish>` and as Stream the Producer you just created. The message parameter should already be prefilled referencing to the JSON Range above. If that is not the case, select the JSON range. To complete =MQTT.PUBLISH() enter the MQTT topic you listed in the Consumer, possibly “catsanddogs”, and click OK. Then, start the Stream Machine by clicking “Play” in the blue bar on the top.

.. Tip:: Streamsheets calculate from **left to right** and from **top to bottom**. This means, first, row 1 is calculated from left to right, then, row 2 followed by row 3 … until the end of the sheet is reached. As a consequence, you typically **place a stream function behind the cells you want to send/produce**. Placing the stream function before these cells will send the values of the previous calculation step.

|
| **Step 5: Consume a data stream**
|
| |Step5|
|
| The easiest way to link an input data stream to a Streamsheet is to connect a Consumer to its Inbox. Let´s take this last step! Create another Streamsheet in this Stream Machine by clicking the “plus” icon in the bottom-right corner. In the new Streamsheet look to the top-left where it says “Inbox”. Next to it is a cogwheel which takes you to the Inbox Settings. Select the Consumer you created before and change the calculation mode to “On Message Arrival”. In this mode a Streamsheet is only calculated when messages arrive in its Inbox and not in certain intervals.
|
| Done?
|
| Great! You just set up connections to the local MQTT broker and created a Stream Machine which produces as well as consumes MQTT data streams.
|
| Messages should be arriving in the Inbox of the second Streamsheet. If that is not the case, check whether your Stream Machine is running (on “Play”), that your first Streamsheet has the calculation mode “Continuously” and that the topic in MQTT.PUBLISH() is the same as in the Consumer.
|
|
|
| **Optional Step: Ideas on what to do next**
| 
| As mentioned in the beginning, this example serves as a quick introduction. 
| Hence, why not extend this Streamsheet model a little? By dragging and dropping data points which you receive in the Inbox into the grid, you create a direct link between data stream and the spreadsheet world. Consequently, you can start processing data and build logic with spreadsheet formulas, e.g. to calculate KPIs, create dynamic dashboards and build decision engines.
| 
| |optionalstep|
|
| You will notice that you are working “live” on the message stream as incoming data is immediately transferred to the grid and formulas change their results accordingly. Additionally, you always see what the current result in each cell is. Remember: with every calculation step the whole logic is recalculated and, therefore, all conditions are reconsidered and based upon these decisions can be taken. For instance, you could send messages to an additional MQTT topic or a slack channel but only if a certain threshold is met. 
|
| Further, sending data from one Streamsheet or Stream Machine to another is useful when building larger models, however, typically you want to set up connections (Streams) to something outside of Streamsheets, too. Hence, why not set up a new Connector to get your Streamsheets communicating with the outside world?   

