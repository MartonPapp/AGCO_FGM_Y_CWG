@AbapCatalog.sqlViewName: 'YV_CUVTABFLDCABN'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cuvtab_fld and cabn'
define view ycwgv_cuvtabfld_cabn as 
select from cuvtab_fld as fld
inner join cabn 
    on cabn.atinn = fld.atinn
inner join cuvtab
    on cuvtab.vtint = fld.vtint
{
    key fld.vtint,
    key fld.atinn,
    key fld.vtpos,
    cuvtab.vtnam,
    cabn.atnam,
    cabn.atfor
} 
