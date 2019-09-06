.. _mongodelete:

MONGO.DELETE
-----------------------------

Stores data on a Mongo database. You can use the :ref:`Function Wizard <functionwizard>` for this function. 


**Syntax**

=\ :term:`MONGO`\ .DELETE(:term:`Producer`, Collection, QueryJSON[, Target, Timeout])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Producer
     - Producer to use for deleting. The database name is configured in the affiliated :term:`Connector`.
   * - Collection
     - Choose an existing collection, where the item is stored.
   * - QueryJSON
     - Define a query using a :term:`JSON` cell range, which defines the object(s) to be deleted.
   * - Target
     - Optional. Defines a place to give feedback on status of operation.
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
   * - =MONGO.DELETE("Producer", "TestCollection", :ref:`JSON`\ (A1:B4))
     - TRUE
     - This deletes all documents in the database with the values from A1:B4 using the "Producer" in the collection "TestCollection".
