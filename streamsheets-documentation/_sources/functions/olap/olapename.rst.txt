OLAPENAME
-----------------------------

Get name of element at given index.

**Syntax**

OLAPENAME(Token, Database, Dimension, Index)

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
   * - Index
     - Index of element in dimension.

**Return Value**

TRUE, if successful, otherwise error string from OLAP server.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - OLAPENAME(A1, "DBSample", "Year", 2)
     - e.g.: "2012"
     - A1 contains the token from OLAPLOGIN.

.. warning:: All OLAP Functions interrupt the calculation to wait for the OLAP server result. This is necessary, as
    following calls to OLAP Functions might depend on the success of the previous function. Calculation continues
    with the next cycle.

