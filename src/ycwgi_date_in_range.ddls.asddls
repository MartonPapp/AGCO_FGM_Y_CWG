@AbapCatalog.sqlViewName: 'YDDL_DATINRNG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Date in range'
define view YCWGI_DATE_IN_RANGE
    with parameters p_date : abap.dats
as select from YCWGI_DATE_RANGE
{
     key vtint,
    key slnid,
    //key atinn,
    $parameters.p_date as val_date
} where date_from <= $parameters.p_date 
  and  date_to >= $parameters.p_date
