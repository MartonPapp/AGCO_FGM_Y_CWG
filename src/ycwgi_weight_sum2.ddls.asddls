@AbapCatalog.sqlViewName: 'YV_WEIGHT_SUM2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Weight SUM'
define view YCWGI_WEIGHT_SUM2
    with parameters p_modelyear: atinn,
                    p_vcgrpoup: atinn,
                    p_front_weight : atinn,
                    p_rear_weight : atinn
as select from YCWGI_WEIGHT_BASE(p_modelyear:$parameters.p_modelyear,p_vcgroup:$parameters.p_vcgrpoup,p_front_weight:$parameters.p_front_weight, p_rear_weight:$parameters.p_rear_weight) as base1
inner join YCWGI_WEIGHT_BASE(p_modelyear:$parameters.p_modelyear,p_vcgroup:$parameters.p_vcgrpoup,p_front_weight:$parameters.p_front_weight, p_rear_weight:$parameters.p_rear_weight) as base2
    on  base1.vtint = base2.vtint
    and base1.modelyear = base2.modelyear
inner join YCWGI_WEIGHT_BASE(p_modelyear:$parameters.p_modelyear,p_vcgroup:$parameters.p_vcgrpoup,p_front_weight:$parameters.p_front_weight, p_rear_weight:$parameters.p_rear_weight) as base3
    on  base1.vtint = base3.vtint
    and base1.modelyear = base3.modelyear
inner join YCWGI_WEIGHT_BASE(p_modelyear:$parameters.p_modelyear,p_vcgroup:$parameters.p_vcgrpoup,p_front_weight:$parameters.p_front_weight, p_rear_weight:$parameters.p_rear_weight) as base4
    on  base1.vtint = base4.vtint
    and base1.modelyear = base4.modelyear    
inner join YCWGI_WEIGHT_BASE(p_modelyear:$parameters.p_modelyear,p_vcgroup:$parameters.p_vcgrpoup,p_front_weight:$parameters.p_front_weight, p_rear_weight:$parameters.p_rear_weight) as base5
    on  base1.vtint = base5.vtint
    and base1.modelyear = base5.modelyear
inner join YCWGI_WEIGHT_BASE(p_modelyear:$parameters.p_modelyear,p_vcgroup:$parameters.p_vcgrpoup,p_front_weight:$parameters.p_front_weight, p_rear_weight:$parameters.p_rear_weight) as base6
    on  base1.vtint = base6.vtint
    and base1.modelyear = base6.modelyear
inner join YCWGI_WEIGHT_BASE(p_modelyear:$parameters.p_modelyear,p_vcgroup:$parameters.p_vcgrpoup,p_front_weight:$parameters.p_front_weight, p_rear_weight:$parameters.p_rear_weight) as base7
    on  base1.vtint = base7.vtint
    and base1.modelyear = base7.modelyear
inner join YCWGI_WEIGHT_BASE(p_modelyear:$parameters.p_modelyear,p_vcgroup:$parameters.p_vcgrpoup,p_front_weight:$parameters.p_front_weight, p_rear_weight:$parameters.p_rear_weight) as base8
    on  base1.vtint = base8.vtint
    and base1.modelyear = base8.modelyear
inner join YCWGI_WEIGHT_BASE(p_modelyear:$parameters.p_modelyear,p_vcgroup:$parameters.p_vcgrpoup,p_front_weight:$parameters.p_front_weight, p_rear_weight:$parameters.p_rear_weight) as base9
    on  base1.vtint = base9.vtint
    and base1.modelyear = base9.modelyear
inner join YCWGI_WEIGHT_BASE(p_modelyear:$parameters.p_modelyear,p_vcgroup:$parameters.p_vcgrpoup,p_front_weight:$parameters.p_front_weight, p_rear_weight:$parameters.p_rear_weight) as base10
    on  base1.vtint = base10.vtint
    and base1.modelyear = base10.modelyear
{
    base1.vtint as vtint,
    base1.modelyear as modelyear,
    base1.vcgroup as function1,
    base2.vcgroup as function2,
    base3.vcgroup as function3,
    base4.vcgroup as function4,
    base5.vcgroup as function5,
    base6.vcgroup as function6,
    base7.vcgroup as function7,
    base8.vcgroup as function8,
    base9.vcgroup as function9,
    base10.vcgroup as function10,
    
    cast(base1.front_weight + base2.front_weight + base3.front_weight + base4.front_weight + base5.front_weight + base6.front_weight +
    base7.front_weight + base8.front_weight + base9.front_weight + base10.front_weight as abap.dec(10,3)) as front_weight,
    cast(base1.rear_weight + base2.rear_weight + base3.rear_weight + base4.rear_weight + base5.rear_weight + base6.rear_weight +
    base7.rear_weight + base8.rear_weight + base9.rear_weight + base10.rear_weight as abap.dec(10,3)) as rear_weight
}
