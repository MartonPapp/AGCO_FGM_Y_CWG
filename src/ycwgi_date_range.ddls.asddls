@AbapCatalog.sqlViewName: 'YDDL_DATRNG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DATE RANGE'
define view YCWGI_DATE_RANGE
as select from YCWGI_VALN03
{
    key vtint,
    key slnid,
    key atinn,
    cast(value_from_char as abap.dats) as date_from,
    cast(value_to_char as abap.dats) as date_to
}
