@AbapCatalog.sqlViewName: 'YV_VALCCABN'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'valc and cabn'
define view YCWGI_VALC_CABN as 
select from cuvtab_valc
inner join cabn
    on cabn.atinn = cuvtab_valc.atinn
{
    key cuvtab_valc.vtint as vtint,
    key cuvtab_valc.slnid as slnid,
    cabn.atnam as atnam,
    cuvtab_valc.atinn
}
