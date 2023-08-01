@EndUserText.label: 'TABLE FUNCTION WEIGHT SUM'
define table function YWCTF_WEIGHT_SUM
returns {
  client : abap.clnt;
  modelyear : abap.char(3);
  function1 : abap.char(15);
  function2 : abap.char(15);
  function3 : abap.char(15);
  function4 : abap.char(15);
  function5 : abap.char(15);
  function6 : abap.char(15);
  function7 : abap.char(15);
  function8 : abap.char(15);
  front_weight : abap.dec(10,3);
  rear_weight : abap.dec(10,3);
}
implemented by method ycl_weight_sum=>weight_sum;
