.. _dictionary:
.. |DICTIONARY1| image:: /images/DICTIONARY1.PNG
        :scale: 50%
.. |DICTIONARY2| image:: /images/DICTIONARY2.PNG
        :scale: 50%       
.. role:: blue

DICTIONARY
-----------------------------

Creates a :term:`JSON` Object using the given keys and values.

**Syntax**

DICTIONARY(Range[, Horizontal])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Range
     - | Range providing the source data, that will be used for the JSON.
       | The left or top cells will feed the keys and the bottom or right the values.
   * - Horizontal
     - Optional. FALSE, if keys are aligned vertical (Default), TRUE if horizontal.

**Return Value**

TRUE, if successful.

**Example**

.. list-table::
   :widths: 50 50
   :header-rows: 1

   * - Function
     - Result
   * - | =\ :ref:`WRITE`\ (:ref:`OUTBOXDATA`\ ("Message", "NewItem"), DICTIONARY(:blue:`A2:B5`), "Dictionary")
       |
       | |DICTIONARY1|

       

     - Appending an object to a message. The message content will look as follows

       

           | |DICTIONARY2|



