CLASS ycl_weight_sum DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_amdp_marker_hdb .
    class-methods weight_sum for table function YWCTF_WEIGHT_SUM.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ycl_weight_sum IMPLEMENTATION.
  METHOD weight_sum BY DATABASE function for hdb language sqlscript options read-only using YWCV_WEIGHT_SUM.
    --declare numrows int := 0;
    --select count(*) into numrows from YWCV_WEIGHT_SUM;
    --if numrows > 1 then
    --    return select top 1 mandt as client, '*' as modelyear, '*' as function1, '*' as function2, '*' as function3, '*' as function4, '*' as function5,
    --                            '*' as function6, '*' as function7, '*' as function8, 0 as front_weight, 0 as rear_weight from YWCV_WEIGHT_SUM;
    --if numrows = 1 then
        return select mandt as client, modelyear, function1, function2, function3, function4, function5, function6, function7, function8, front_weight, rear_weight from YWCV_WEIGHT_SUM;
    --order by client, modelyear, function1, function2, function3, function4, function5, function6, function7, function8;
    --end if;



  ENDMETHOD.

ENDCLASS.
