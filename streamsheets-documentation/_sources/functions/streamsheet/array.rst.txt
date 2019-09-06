.. _array:
.. |ARRAY1| image:: /images/ARRAY1.PNG
        :scale: 40%
.. |ARRAY2| image:: /images/ARRAY2.PNG 
        :scale: 50%   
        :align: middle 

.. role:: blue

ARRAY
-----------------------------

This function can be used to efficiently add
array items to a message.
Creates a :term:`JSON` array entry using the given keys and values. If the range
has one row or column, one array entry for each cell is created. If
there are two columns or rows, a nested array (array containing a
subarray) will be created. 

**Syntax**

=ARRAY(Range, [Nest], [Flat])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Range
     - Source Range to retrieve data from
   * - Nest
     - Optional. Direction on how to nest items, if range has more than one row or column.
       FALSE to nest by column and TRUE to nest by row.
   * - Flat
     - Optional. Specify 'flat' to create a flat list if range has more than one row or column.
       By default returned array is nested.

**Return Value**

Comma separated list of array items.

**Example**

.. list-table::
   :widths: 50 30 50
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - | =\ :ref:`WRITE`\ (:ref:`OUTBOXDATA`\ ("Message", "NewItem"),ARRAY(:blue:`A2:B5`, FALSE), "Array")
       | with the following cell content:

       | |ARRAY1|

     - | Outbox: |ARRAY2|

     - | Appending an array to a message. Since Nest is set to FALSE, the array
        items are created by columns leading to two array entries. The two
        entries contain the elements from the rows top to bottom. The message content will look as follows
      
        

      
        
       

