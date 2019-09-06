.. _mongoaggregate:

MONGO.AGGREGATE
-----------------------------

Gets aggregated data from your Mongo database. You can use the :ref:`Function Wizard <functionwizard>` for this function. 


**Syntax**

=\ :term:`MONGO`\ .AGGREGATE(:term:`Producer`, Collection, Aggregate JSON, Target[, Result Keys, Timeout])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Producer
     - Producer to use for deleting. The database name is configured in the affiliated :term:`Connector`.
   * - Collection
     - Choose an existing collection, where the items are stored.
   * - Aggregate JSON
     - Define an aggregation using a :term:`JSON` cell range.
   * - Target
     - Defines a place to show aggregation result.
   * - Result Keys
     - Optional. Filter the result.
   * - Timeout
     - Optional. Define Timeout. 

**Return Value**

TRUE, if successful.

**Examples**


