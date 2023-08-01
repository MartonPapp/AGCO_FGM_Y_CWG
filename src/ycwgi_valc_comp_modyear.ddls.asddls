@AbapCatalog.sqlViewName: 'YV_VALCCOMPMYEAR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'COMPONENT AND MODELYEAR'
define view YCWGI_VALC_COMP_MODYEAR 
    with parameters p_vcgroup : atinn,
                    p_modelyear : atinn as 
select from cuvtab_valc
{
    key vtint,
    key slnid,
    cast(max( case when cuvtab_valc.atinn = $parameters.p_vcgroup then cuvtab_valc.valc end ) as abap.char(15)) as vcgroup,
    cast(max( case when cuvtab_valc.atinn = $parameters.p_modelyear then cuvtab_valc.valc end ) as abap.char(3)) as modelyear
}
//where cuvtab_valc.vtint = $parameters.p_vtint
group by vtint, slnid
