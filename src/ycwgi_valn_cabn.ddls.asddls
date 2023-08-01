@AbapCatalog.sqlViewName: 'YV_VALNCABN'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'valn cabn'
define view YCWGI_VALN_CABN as 
select from cuvtab_valn
inner join cabn
    on cabn.atinn = cuvtab_valn.atinn
{
    key cuvtab_valn.vtint as vtint,
    key cuvtab_valn.slnid as slnid,
    cabn.atnam as atnam,
    cuvtab_valn.atinn
}
