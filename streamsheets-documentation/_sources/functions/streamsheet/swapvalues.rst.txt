.. |SWAPVALUES1| image:: /images/SWAPVALUES1.PNG
        :scale: 50%
.. |SWAPVALUES2| image:: /images/SWAPVALUES2.PNG
        :scale: 50%
.. role:: red
.. role:: blue

SWAPVALUES
-----------------------------

Copies the values from the given source range to the target range and vice versa. Beware that only the values are copied and
not formulas. If the target range is a multiple of the source range, the target range is filled repeatedly with the
source values.

**Syntax**

=SWAPVALUES(SourceRange, TargetRange)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Range1
     - Range to exchange
   * - Range2
     - Range to exchange

**Return Value**

TRUE, if successful.

**Example**

.. list-table::
   :widths: 50 50
   :header-rows: 1

   * - Function
     - Result
   * - | =SWAPVALUES(:blue:`A2:B2`,\ :red:`A4:B4`)
       |
       | |SWAPVALUES1|

       

     - | After call of SWAPVALUES
       |
       | |SWAPVALUES2|

     
.. warning:: Only the values will be moved. Formulas will be removed.

