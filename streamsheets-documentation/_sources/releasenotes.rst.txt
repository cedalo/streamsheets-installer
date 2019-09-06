Release Notes
=============

We will never stop improving our :term:`Streamsheet`\ s. Stay up to date with our release notes.

.. _currently: 

1.3
--------------------
**(released July 12, 2019)**

| **Changes:**
| + **Performance:** Performance improvements.
| + **Bug fixes**
| + **Charts:** Fixed Chart Bugs.
| + **Documentation:** Updated documentation and added tutorials.

| **Features:**
| + **Events:** Added mouse events for objects and shapes.
| + **Shapes:** Added shapes as a beta  feature.


1.2 
------------------------------------  
**(released Jun 6, 2019)**

| **Changes:**
| + **Performance:** Performance improvements.
| + **Streams:** :term:`Connector`\ s aren`t able to work as :term:`Consumer`\ s anymore; added Client ID to :term:`Producer` and Consumer (:term:`MQTT` & :term:`Kafka`)
| + **New Functions:** :ref:`FRAC`\ (); :ref:`CODE`\ (); :ref:`CHAR`\ (); :ref:`CLEAN`\ (); :ref:`UNICODE`\ (); :ref:`UNICHAR`\ ()

| **Features:**
| + **Raspberry Pi:** Pi image is available
| + **Forum:** Join our Streamsheet Forum `here`_
| + **Function Helper:** implemented a function helper
| + **"None" Format:** None means that in the color selection in the toolbar,  in Fill and also in the selection of the line color, 'without color' is offered.

.. _here: https://forum.streamsheets.com/


1.1 
---------------------------------------
**(released Apr 16, 2019)**

| **Changes:**
| + **Performance:** Performance improvements.


1.0 
--------------------------------------
**(released Feb 11, 2019)**

| **Changes:**
| + **Performance:** Performance improvements.
| + **Authentification:** Reworked authentification.
| + **Names:** Renamed "Datasources" to "Streams", renamed "Feeder" to ":term:`Consumer`\ ".
| + **Charts:** Added new features to the "Chart Wizard".

| **UI Updates**
| + **Administration:** Rework of the administration appearance and the "Streams" edit fields
| + **Inbox:** Added Consumer status indicator
| + **Export/Import:** New Export and Import UI


0.98 
--------------------------------------
**(released Dec 17, 2018)**

| **Changes:**
| + **New Functions:** :ref:`EVEN`\ (); :ref:`ODD`\ (); :ref:`MOD`\ (); :ref:`KAFKA.PUPLISH <kafkapublish>`\ (); :ref:`OPCUA.READ <opcuaread>`\ (); :ref:`OPCUA.WRITE <opcuawrite>`\ ();\ :ref:`OPCUA.VARIABLES <opcuavariables>`\ (); :ref:`MONGO.STORE <mongostore>`\ (); :ref:`MONGO.QUERY <mongoquery>`\ (); :ref:`MONGO.DELETE <mongodelete>`\ (); 
| + **Function Updates:** :ref:`TEXT`\ () now has a new parameter "Locale"; all Feeder functions now match the pattern *Technology.Action* (e.g. :ref:`MQTT.PUBLISH <mqttpublish>`\ ); RequestID now optional in :ref:`REST.RESPOND <restrespond>`\ ()
| + **New Technologies:** KSQL; :term:`OPC UA`; :term:`MONGO` Database 
|
| **UI Updates:**
| + **Chart Tool** 
| + **Function Wizard**
| + **Minimize button for every sheet**
