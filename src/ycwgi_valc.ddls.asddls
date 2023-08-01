@AbapCatalog.sqlViewName: 'YDDL_VALC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'VALC'
define view YCWGI_VALC
    //with parameters p_vtint : vtint,
    //                p_vcgroup : atinn
    //                  p_modelyear : atinn
as select from cuvtab_valc
{
    //key $parameters.p_vtint as vtint,
    key vtint,
    key slnid,
    cast(valc as abap.char(15)) as vcgroup
    //max( case when cuvtab_valc.atinn = $parameters.p_vcgroup then cuvtab_valc.valc end ) as vcgroup
    //max( case when cuvtab_valc.atinn = $parameters.p_modelyear then cuvtab_valc.valc end ) as modelyear
}
//where cuvtab_valc.vtint = $parameters.p_vtint
//group by vtint, slnid
