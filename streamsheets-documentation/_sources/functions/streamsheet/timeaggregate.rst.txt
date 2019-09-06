TIMEAGGREGATE
-----------------------------

Aggregates number values over a specified time period. Timeaggregate saves the aggregated interval values in a TargetRange. The returned value in the cell is aggregated over all numbers within the periode.

**Syntax**

TIMEAGGREGATE(DataCell, [Period, AggregationMethod, TimeSerial, Interval, TargetRange])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - DataCell
     - The data source cell which should evaluate to a number. All other values are ignored.
   * - Period
     - Optional. The time period in seconds in which data is collected. Defaults to 60 seconds.
   * - AggregationMethod
     - Optional. One of the predefined numbers which specifies the aggregation method to use. Defaults to 9.
   * - TimeSerial
     - Optional. A serial number to use as key for each aggregated value. Defaults to :ref:`now`.
   * - Interval
     - | Optional. An interval in seconds at which values should be aggregated. Defaults to the specified period. To not loose any data, an Interval should always be a divisor of the Period.
       | Note: Default Interval collects a different TargetRange as a handwritten equal Period. 
       - Default Interval: collects all values within the specified Period. 
       - Interval equals Period: aggregates all values to one value.
   * - TargetRange
     - Optional. A cell range to write the aggregated values to. Collects aggregation intervals and displays them. Differs if interval is left blank (see interval).


**Aggregation Methods**

.. list-table::
   :widths: 10 15 75
   :header-rows: 1

   * - Number
     - Method
     - Description
   * - 1
     - AVERAGE
     - Calculates the average of all received values.
   * - 2
     - COUNT
     - Counts the number of received values.
   * - 3
     - COUNTA
     - Counts all values which are not zero.
   * - 4
     - MAX
     - Determines the maximum of all received values.
   * - 5
     - MIN
     - Determines the minimum of all received values.
   * - 6
     - PRODUCT
     - Calculates the product of all received values.
   * - 7
     - STDEV.S
     - Currently **not available**!!
   * - 8
     - STDEV.P
     - Currently **not available**!!
   * - 9
     - SUM
     - Calculates the sum of all received values.


**Return Value**

A number value aggregated over all values within specified period.


**Example**

.. list-table::
   :widths: 45 55
   :header-rows: 1

   * - Function
     - Comment
   * - =TIMEAGGREGATE(C2, 20)
     - Calculates the sum of all values read from C2 over a period of 20 seconds.
   * - =TIMEAGGREGATE(C2, 20, 1,,2, D4:E14)
     - Calculates the average each 2 seconds and writes roughly 10 values to target range D4:E14

