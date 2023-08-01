@EndUserText.label: 'TABLE FUNCTION WEIGHT SUM EXT'
define table function YWCTF_WEIGHT_SUM_EXT
returns {
  client : abap.clnt;
  vtnam : vtnam;
  modelyear : abap.char(3);
  function1 : abap.char(15);
  function2 : abap.char(15);
  function3 : abap.char(15);
  function4 : abap.char(15);
  function5 : abap.char(15);
  function6 : abap.char(15);
  function7 : abap.char(15);
  function8 : abap.char(15);
  function9 : abap.char(15);
  function10: abap.char(15);
  front_weight : abap.dec(10,3);
  rear_weight : abap.dec(10,3);
  
  vcgroup_atnam : atnam;
  modelyear_atnam : atnam;
  front_atnam : atnam;
  rear_atnam : atnam;
  
}
implemented by method ycl_weight_sum_ext=>weight_sum;
