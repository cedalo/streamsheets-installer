SWITCH
-----------------------------

The SWITCH Function switches values, by defining switch conditions and a default value if the switch conditions are not met. The amount of switch conditions is not limited.

**Syntax**

=SWITCH(LookupKey, KeyValue1, Value1, ..., KeyValueN, ValueN[, DefaultValue])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - LookupKey
     - Key to check
   * - KeyValue1, Value1, KeyValue2, Value2 ..., KeyValueN, ValueN
     - Key/Value pairs to find Key in.
   * - DefaultValue
     - Optional. Return value, if KeyValue is not found.

**Return Value**

Default Value when switch condition is not met. 
ValueN, if LookupKey matched KeyValueN.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =SWITCH(2, 1, "Sun", 2, "Mon", 3, "Tue", "None")
     - "Mon"
     - The key 2 corresponds to the value "Mon".
   * - =SWITCH(4, 1, "Sun", 2, "Mon", 3, "Tue", "None")
     - "None"
     - The key 4 could not be found.

