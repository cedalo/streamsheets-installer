.. _read:

READ
-----------------------------

Reads the values from a :term:`JSON` object using the given key. Mainly used to read :ref:`inbox` :term:`payload`\ s.

**Syntax**

=READ(Key, TargetCell, Type[,Direction, CacheLastValue])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Key
     - A key to a data item, that should be read. The key is usually created by using utility functions
       like :ref:`INBOXDATA`, :ref:`INBOXMETADATA` or :ref:`OUTBOXDATA`. The key consists of the path to the item within the
       JSON object. Each path element is surrounded by brackets, Depending on the used utility function, you
       can retrieve data from different sources (e.g. Inbox or Outbox).
   * - TargetCell or Range
     - Target cell or range to write the resulting value into.
   * - Type
     - Type of Value. Allowed types are String, Number, Boolean, Array, Dictionary. The type defines the color the cell.
   * - Direction
     - Optional. Direction how data will be aligned, if a dictionary is read. FALSE aligns the keys
       vertically, TRUE aligns the keys horizontally. By default the function tries to conclude from the size of the
       target range, which direction is used. So defining this is only necessary if rows and columns are equal.
   * - CacheLastValue
     - Optional. If this is set to TRUE #NA! will be returned if no data is available. To return last read value or a 
       default value if none was read before specify FALSE. Default is FALSE.


**Return Value**

The last part of the key of the data value to be retrieved.

**Example**

.. list-table::
   :widths: 45 15 40
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =READ(:ref:`INBOXDATA`\ ("", "", "Customer"), B1, "String")
     - Customer
     - Example to read a value from a JSON object from the inbox of the current Streamsheet and transfer it into cell B1.
   * - =READ(:ref:`INBOXDATA`\ ("", "", "Customer", "Name"), C2, "String",,TRUE)
     - :ref:`#NA! <error>`
     - Returns error code if customer name is not available because last parameter is to TRUE.

