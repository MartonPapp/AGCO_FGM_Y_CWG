CLASS ycl_weight_sum_ext DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_amdp_marker_hdb .
    class-methods weight_sum for table function YWCTF_WEIGHT_SUM_EXT.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ycl_weight_sum_ext IMPLEMENTATION.
  METHOD weight_sum BY DATABASE function for hdb language sqlscript options read-only using YCWGI_WEIGHT_SUM_EXT.
    --declare numrows int := 0;
    --select count(*) into numrows from YCWGI_WEIGHT_SUM_EXT;
    --if numrows > 1 then
    --    return select top 1 mandt as client, '*' as modelyear, '*' as function1, '*' as function2, '*' as function3, '*' as function4, '*' as function5,
    --       '*' as function6, '*' as function7, '*' as function8,  '*' as function9, '*' as function10,  0 as front_weight, 0 as rear_weight from YCWGI_WEIGHT_SUM_EXT;
    --else
        return select top 1 mandt as client, vtnam, modelyear, function1, function2, function3, function4, function5,
                        function6, function7, function8, function9, function10, front_weight, rear_weight,
                        vcgroup_atnam, modelyear_atnam, front_atnam, rear_atnam
           from YCWGI_WEIGHT_SUM_EXT;
    --end if;
  ENDMETHOD.



ENDCLASS.
