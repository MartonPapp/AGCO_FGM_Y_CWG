@AbapCatalog.sqlViewName: 'YV_INTINRANGE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Integer in range'
define view YCWGI_INT_IN_RANGE 
with parameters p_value : abap.int2 as 
select from YCWGI_INT_RANGE
{
    key vtint,
    key slnid,
    $parameters.p_value as value
} where int_from <= $parameters.p_value 
  and  int_to >= $parameters.p_value
