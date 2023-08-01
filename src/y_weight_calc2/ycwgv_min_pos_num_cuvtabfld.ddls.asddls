@AbapCatalog.sqlViewName: 'YV_MINPOSNUM'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Minimum position for numeric characteristic'
define view ycwgv_min_pos_num_cuvtabfld as 
select from ycwgv_cuvtabfld_cabn
{
    key vtint,
    min(vtpos) as vtpos
    
} where atfor = 'NUM'
  group by vtint
