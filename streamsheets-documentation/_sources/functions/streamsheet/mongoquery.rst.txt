.. _mongoquery:

MONGO.QUERY
-----------------------------

Gets data from your Mongo database. You can use the :ref:`Function Wizard <functionwizard>` for this function. 


**Syntax**

=\ :term:`MONGO`\ .QUERY(:term:`Producer`, Collection, QueryJSON, Target[, ResultKeys, PageSize, Page, Sort, Timeout])

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
     - Defines a place to show query result.
   * - ResultKeys
     - Optional. Filter the query result.
   * - PageSize
     - Optional. Number of Documents to return per page.
   * - Page
     - Optional. Index of page to return.
   * - Sort
     - Optional. Sort query result ascending or descending. Use 1 and -1 to sort by creation time, or use a JSON cell range.
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
   * - =MONGO.QUERY("Producer", "TestCollection", :ref:`JSON`\ (A1:B4), :ref:`INBOX <inboxf>`\ ())
     - TRUE
     - All documents in the database with the values from A1:B4 using the "Producer" in the collection "TestCollection" will be shown in the :ref:`Inbox` of the current Streamsheet.
