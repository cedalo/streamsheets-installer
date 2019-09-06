.. |COPYVALUES1| image:: /images/COPYVALUES1.PNG
        :scale: 50%
.. |COPYVALUES2| image:: /images/COPYVALUES2.PNG
        :scale: 50%
.. role:: red
.. role:: blue

COPYVALUES
-----------------------------

Copies the values from the given source range to the target range. Beware that only the values are copied and
not formulas. If the target range is a multiple of the source range, the target range is filled repeatedly with the
source values.

**Syntax**

=COPYVALUES(SourceRange, TargetRange)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - SourceRange
     - Source Range to retrieve data from
   * - TargetRange
     - Target Range to copy values to. If Range smaller or bigger as Source Range values will be added accordingly (less input or multiple input).

**Return Value**

TRUE, if successful.

**Example**

.. list-table::
   :widths: 50 50
   :header-rows: 1

   * - Function
     - Result
   * - | =COPYVALUES(:blue:`A2:B2`,\ :red:`A4:B4`)
       |
       | |COPYVALUES1|

       

     - |
       |
       | |COPYVALUES2|

       

.. warning:: Only the values will be moved. Formulas will be removed.

