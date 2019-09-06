OLAPDBCREATE
-----------------------------

Create database.

**Syntax**

OLAPDBCREATE(Token, Name)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Token
     - Token received from :doc:`olaplogin`
   * - Name
     - Name of database to create. Must be unique.

**Return Value**

TRUE, if successful, otherwise error string from OLAP server.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - OLAPDBCREATE(A1, "DBSample")
     - TRUE
     - A1 contains the token from OLAPLOGIN.

.. warning:: All OLAP Functions interrupt the calculation to wait for the OLAP server result. This is necessary, as
    following calls to OLAP Functions might depend on the success of the previous function. Calculation continues
    with the next cycle.

