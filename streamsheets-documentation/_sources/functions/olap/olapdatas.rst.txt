OLAPDATAS
-----------------------------

Retrieve data from a prevously defined Olap slice. The two elements provided are the variable elements
in the slice for the column and the row.

**Syntax**

OLAPDATAS(SliceName, Element1, ..., ElementN)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - SliceName
     - Name of slice to get data from. The slice must be created before using this function by using :doc:`olapslice`
   * - Element1...ElementN
     - Element names for data item to retrieve. One name for each dimension in the order they are defined is necessary.

**Return Value**

Data value, otherwise error string from olap server.

**Example**

.. list-table::
   :widths: 45 25 30
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - OLAPDATAS("SliceName", "2018", "May", "Product A")
     - Element value at that coordinate.
     -

.. warning:: All OLAP Functions interrupt the calculation to wait for the OLAP server result. This is necessary, as
    following calls to OLAP Functions might depend on the success of the previous function. Calculation continues
    with the next cycle.

