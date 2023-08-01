@AbapCatalog.sqlViewName: 'YDDL_WGHTBS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Weight Base'
define view YCWGI_WEIGHT_BASE
    with parameters p_modelyear: atinn,
                    p_vcgroup: atinn,
                    p_front_weight : atinn,
                    p_rear_weight : atinn
as select from YCWGI_VALC_COMP_MODYEAR(p_vcgroup:$parameters.p_vcgroup,p_modelyear:$parameters.p_modelyear) as valc
inner join YCWGI_VALN_WEIGHTS( p_front_weight:$parameters.p_front_weight, p_rear_weight:$parameters.p_rear_weight ) as weights 
               on valc.vtint = weights.vtint
               and valc.slnid = weights.slnid
{
    key valc.vtint,
    key valc.slnid,
    valc.vcgroup as vcgroup,
    valc.modelyear as modelyear,
    weights.front_weight as front_weight,
    weights.rear_weight as rear_weight
}
