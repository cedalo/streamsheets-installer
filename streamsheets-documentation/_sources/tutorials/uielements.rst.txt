.. |FWDemo| image:: /images/FunctionWizard-Demo.gif
        :scale: 65 %
.. |JSONRANGE| image:: /images/JSONRANGE.gif
        :scale: 65 %
.. |IFCELL| image:: /images/IFCELL.gif
        :scale: 65 %
.. |CHART| image:: /images/CHART.gif
        :scale: 65 %

UI Elements
===============

Charts
-------

| Charts help people understand data quickly. Whether one wants to make a comparison, show a relationship or highlight a trend, they help the audience or even yourself to “see” what actually happens. Each of our 11 chart types has different features that make them better suited for specific tasks.
| To create a Chart select the cell/range with the Data to be displayed and click in the top bar on the Insert Chart Icon. Choose where you want the Chart. Draw to insert it and the edit Chart Properties Menu automatically opens on the right side of the tab. This is the place to individualize the Chart. Select the best fitting Chart Type, add a title and a Legend, determine the length of the axis or use different colors for e.g. the columns or even the grid lines etc. The best would be to just try everything out 😄.

| |CHART| 
| *Creating a chart*

| The Chart Type you choose depends on what kind of information you want to present. Showing the current machine temperature requires a different chart than showing the relationship between the temperature and time. It depends on how many variables need to be shown. If there is just have one variable your perfectly fine with Line, Cloumn, Bar, Pie, Dounghnut, Area , Polar Area or Radar Chart. To show the relationship between two different variables we recommend Line (X/Y) or Scatter. A bubble chart is similar to a scatter plot but you even can introduce a third variable. 	
| Depending on what is proceeded in your selected data range, you will get a dynamic or a static chart. 
| To edit an existing Chart just double click and the edit menu opens.

.. _functionwizard:

Function Wizard
----------------

Usually Functions are created by entering “=” followed by the name of the function in a cell. This process is supported by the function inline help, which prompts suggestions and parameter support.

To further simplify the creation of functions the function wizard was added. The Fuction Wizard supports mainly the creation of so called Stream Functions. These are functions which use a Stream (:term:`Producer`\ /:term:`Consumer`\ ) to communicate with entities outside of a :term:`Stream Machine` and usually are of a more complex structure than regular functions.

To open the function Wizard select the cell, where the function should be inserted and click in the top bar on the Function Wizard Icon. The Wizard will open on the right side of your screen. 
Now first select the Stream Function followed by the Stream. Depending on the chosen Stream Function a set of different other parameter is required. 

When finished click “Ok” to eventually create the function.

|FWDemo|
*Create a MQTT.PUBLISH function with the Function Wizard*


JSON Range
-----------

:term:`Streamsheets <Streamsheet>` are using the :term:`JSON` format to transfer and process data. Creating a JSON-Range in a Streamsheet helps you to easly structure your data keys in a hierarchical order. 
This is needed when you are about to transmit data and need it structured in a certain way.
In a Streamsheet this is possible by writing all your key value pairs below each other. After (or before) you are done, select all cells and right-click. Choose “Define JSON-Range” on the bottom of the menu.
Now you can start structuring your data using TAB and Shift+TAB to change the hierarchy of a key value pair.

|JSONRANGE|
*Create a JSON Range*

| Now the function JSON(C5:D11) will automatically include the implemented hirarchy, which prestructures e.g. message contents.
|        ``{“Interesting Data 1”:12,“Interesting Data 2”:15,“More Data”:{“Data from A”:17,“Data from B”:1234,“Data from C”:625,``
|        ``“Data from D”:892}}``

IF Column
----------

| The IF-Column is on the left side of your Streamsheet next to column A and offers one individual IF-Cell per row. 
| IF-Cells are a different version of the :ref:`if`\ () function, but instead of influencing only one cell they influence all cells in their row! When the given condition is met, the IF-Cell states “TRUE” (green background), if not it states “FALSE” (red background), either" turning on" or “off” the affiliated row.

|IFCELL|
*Add a condition to a whole row*

| In this scenario the IF-Cell is checking if the “Interesting Data” from the :ref:`Inbox` is over a value of 200 (see edit row). As long as this condition is not met, the whole row is not calculated. If at some point the value exceeds the set condition, the row would be set active again and the :ref:`MQTT.PUBLISH <mqttpublish>`\ () function in B14 would send a message.
| This is just one of many example cases the IF-Cell could be used. 


