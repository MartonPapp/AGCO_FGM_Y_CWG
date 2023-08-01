@AbapCatalog.sqlViewName: 'YV_INTRNG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Integer Range'
define view YCWGI_INT_RANGE as 
select from YCWGI_VALN03_DEC
{
     key vtint,
    key slnid,
    key atinn,
    cast(value_from_dec as abap.int2) as int_from,
    cast(value_to_dec as abap.int2) as int_to
}
