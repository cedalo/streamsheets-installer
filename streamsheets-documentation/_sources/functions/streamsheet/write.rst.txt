.. _write:
.. |WRITE| image:: /images/WRITE.PNG
        :scale: 65%

WRITE
-----------------------------

Adds the key and value to a :term:`JSON` object in the outbox. The path to the key will be created as needed.

**Syntax**

=WRITE(Key, Value, Type)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Key
     - A key to a data item, that should be written. The key is usually created by using the :ref:`OUTBOXDATA` utility function. 
       The key consists of the path to the item within the JSON object. 
   * - Value
     - Value to assign to key.
   * - Type
     - Type of Value. Allowed types are String, Number, Boolean, Array, Dictionary. The type defines the color of the cell.

**Return Value**

The last part of the key of the data value to write.

**Example**

.. list-table::
   :widths: 45 15 40
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =WRITE(:ref:`OUTBOXDATA`\ ("Customer", "Name"), "Maier", "String")
     - "Customer"
     - | Example to write a value to a JSON object in the outbox. The Message content will look as follows:
       | |WRITE|

