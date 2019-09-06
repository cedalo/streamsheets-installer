OLAPSLICEDELETE
-----------------------------

Delete a temporary slice created by OLAPSLICE.

**Syntax**

OLAPSLICEDELETE(SliceName)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - SliceName
     - Name of slice to remove from memory.

**Return Value**

TRUE, if successful.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - OLAPSLICEDELETE("SampleSlice")
     - TRUE
     - "SampleSlice" must have been created using OLAPSLICE

.. warning:: All OLAP Functions interrupt the calculation to wait for the OLAP server result. This is necessary, as
    following calls to OLAP Functions might depend on the success of the previous function. Calculation continues
    with the next cycle.

