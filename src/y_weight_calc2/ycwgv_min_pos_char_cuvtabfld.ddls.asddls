@AbapCatalog.sqlViewName: 'YV_MINPOSCHAR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Minimum position for char characteristic'
define view YCWGV_MIN_POS_CHAR_CUVTABFLD as 
select from ycwgv_cuvtabfld_cabn
{
    key vtint,
    min(vtpos) as vtpos
    
} where atfor = 'CHAR'
  group by vtint
