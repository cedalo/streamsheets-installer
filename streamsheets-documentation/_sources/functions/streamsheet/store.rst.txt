STORE
-----------------------------

.. deprecated:: 1.4
   use database specific functions instead, e.g. :ref:`MONGO.STORE <mongostore>`


This function sends :term:`JSON` data to a :term:`producer`, which defines a database connection.


**Syntax**

=STORE(Object, Producer, Collection, Arrayhandling)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Object
     - JSON Object with content to STORE
   * - Producer
     - Producer to store with
   * - Collection
     - The collection to store on
   * - Arrayhandling 
     - If the first element of the payload is an array object it is possible to store every elemnt single handed or as one big document. Use TRUE or FALSE to decide.

**Return Value**

TRUE or FALSE

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - STORE(\ :ref:`JSON`\ (A1:B2), "\ :term:`Mongo` Producer", "Demo", FALSE)
     - TRUE
     - The JSON(A1:B2) was stored as a whole in the "Demo" collection in the defined database of the "Mongo Producer"




