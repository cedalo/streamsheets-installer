.. _mongocount:

MONGO.COUNT
-----------------------------

Counts the amount of elements in a Mongo database. You can use the :ref:`Function Wizard <functionwizard>` for this function. 


**Syntax**

=\ :term:`MONGO`\ .COUNT(:term:`Producer`, Collection, Query, Target[, Timeout])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Producer
     - Producer to use for counting. The database name is configured in the affiliated :term:`Connector`.
   * - Collection
     - Choose an existing collection, where the item is stored.
   * - Query
     - Define a query using a :term:`JSON` cell range, which defines the object(s) to be counted.
   * - Target
     - Defines a place to give feedback on status of operation.
   * - Timeout
     - Optional. Define Timeout. 

**Return Value**

TRUE, if successful.

**Examples**

.. list-table::
   :widths: 45 15 40
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =MONGO.COUNT("Producer", "TestCollection", :ref:`JSON`\ (A1:B4))
     - TRUE
     - 
