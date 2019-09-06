OLAPCUBECREATE
-----------------------------

Create cube in OLAP database.

**Syntax**

OLAPCUBECREATE(Token, Database, Name, Dimension1, ..., DimensionN)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Token
     - Token received from :doc:`olaplogin`
   * - Database
     - Database to create cube in.
   * - Name
     - Name of cube to create. Must be unique.
   * - Dimension1...N
     - Dimensions to use in cube

**Return Value**

TRUE, if successful, otherwise error string from OLAP server.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - OLAPCUBECREATE(A1, "DBSample", "Sales", "Month", "Year", "Products")
     - TRUE
     - A1 contains the token from OLAPLOGIN.

.. warning:: All OLAP Functions interrupt the calculation to wait for the OLAP server result. This is necessary, as
    following calls to OLAP Functions might depend on the success of the previous function. Calculation continues
    with the next cycle.

