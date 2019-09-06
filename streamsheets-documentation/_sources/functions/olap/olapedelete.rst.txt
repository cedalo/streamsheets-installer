OLAPEDELETE
-----------------------------

Delete element in dimension.

**Syntax**

OLAPEDELETE(Token, Database, Dimension, Element)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Token
     - Token received from :doc:`olaplogin`
   * - Database
     - Name of database.
   * - Dimension
     - Name of dimension.
   * - Element
     - Name of element to delete.

**Return Value**

TRUE, if successful, otherwise error string from OLAP server.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - OLAPEDELETE(A1, "DBSample", "Year", "2012")
     - TRUE
     - A1 contains the token from OLAPLOGIN.

.. warning:: All OLAP Functions interrupt the calculation to wait for the OLAP server result. This is necessary, as
    following calls to OLAP Functions might depend on the success of the previous function. Calculation continues
    with the next cycle.

