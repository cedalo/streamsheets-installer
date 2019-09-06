.. |MOVEVALUES1| image:: /images/MOVEVALUES1.PNG
        :scale: 70%
.. |MOVEVALUES2| image:: /images/MOVEVALUES2.PNG
        :scale: 70%
.. role:: red
.. role:: blue

MOVEVALUES
-----------------------------

Move values in source range to target range. 

**Syntax**

=MOVEVALUES(SourceRange, TargetRange)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - SourceRange
     - Range to get values to move from.
   * - TargetRange
     - Range to move values to. Smaller Target Range leads to the removal of all Source Values, but not in the writing of all. Bigger does not have any further consequences.

**Return Value**

TRUE, if no error.

**Example**

.. list-table::
   :widths: 50 50
   :header-rows: 1

   * - Function
     - Result
   * - | =MOVEVALUES(:blue:`A2:B2`,\ :red:`A4:B4`)
       |
       | |MOVEVALUES1|

       

     - | After MOVEVALUES
       |
       | |MOVEVALUES2|

     
.. warning:: Only the values will be moved. Formulas will be removed.

