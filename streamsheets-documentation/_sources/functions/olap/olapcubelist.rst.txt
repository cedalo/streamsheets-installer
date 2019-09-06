OLAPCUBELIST
-----------------------------

Get name of cube at given index.

**Syntax**

OLAPCUBELIST(Token, Database, Index)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Token
     - Token received from :doc:`olaplogin`
   * - Database
     - Database where cube resides.
   * - Index
     - Index of cube.

**Return Value**

Get name of cube in database at given index.

**Example**

.. list-table::
   :widths: 45 30 25
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - OLAPCUBELIST(A1, "DBSample", 1)
     - Name of first cube in Database.
     - A1 contains the token from OLAPLOGIN.

.. warning:: All OLAP Functions interrupt the calculation to wait for the OLAP server result. This is necessary, as
    following calls to OLAP Functions might depend on the success of the previous function. Calculation continues
    with the next cycle.

