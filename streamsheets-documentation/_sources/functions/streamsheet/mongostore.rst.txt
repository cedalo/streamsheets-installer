.. _mongostore:

MONGO.STORE
-----------------------------

Stores data on a Mongo database. You can use the :ref:`Function Wizard <functionwizard>` for this function. 


**Syntax**

=\ :term:`MONGO`\ .STORE(:term:`Producer`, Collection, Document)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Producer
     - Producer to use for storing. The database name is configured in the affiliated :term:`Connector`.
   * - Collection
     - Use an existing collection or type in any new collection name you need.
   * - Document
     - Define the payload of your document by using a :term:`JSON` cell range.

**Return Value**

TRUE, if successful.

**Examples**

.. list-table::
   :widths: 45 15 40
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =MONGO.STORE("Producer", "TestCollection", :ref:`JSON`\ (A1:B4))
     - TRUE
     - This stores the values in A1:B4 using the "Producer" in the collection "TestCollection"
