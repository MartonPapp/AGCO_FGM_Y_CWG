@AbapCatalog.sqlViewName: 'YWCV_WGHTSUM'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'WEIGHT SUM'
define view YWCV_WEIGHT_SUM as 
select from YWCV_WEIGHT_BASE as base1
inner join YWCV_WEIGHT_BASE as base2 on base2.vtint = base1.vtint
                                    and base2.modelyear = base1.modelyear
inner join YWCV_WEIGHT_BASE as base3 on base3.vtint = base1.vtint
                                    and base3.modelyear = base1.modelyear
inner join YWCV_WEIGHT_BASE as base4 on base4.vtint = base1.vtint
                                    and base4.modelyear = base1.modelyear
inner join YWCV_WEIGHT_BASE as base5 on base5.vtint = base1.vtint
                                    and base5.modelyear = base1.modelyear
inner join YWCV_WEIGHT_BASE as base6 on base6.vtint = base1.vtint
                                    and base6.modelyear = base1.modelyear
inner join YWCV_WEIGHT_BASE as base7 on base7.vtint = base1.vtint
                                    and base7.modelyear = base1.modelyear
inner join YWCV_WEIGHT_BASE as base8 on base8.vtint = base1.vtint
                                    and base8.modelyear = base1.modelyear
//inner join YWCV_WEIGHT_BASE as base9 on base9.vtint = base1.vtint
//                                    and base9.modelyear = base1.modelyear
//inner join YWCV_WEIGHT_BASE as base10 on base10.vtint = base1.vtint
//                                    and base10.modelyear = base1.modelyear
{
    base1.mandt,
    base1.modelyear as modelyear,
    base1.vcgroup as function1,
    base2.vcgroup as function2,
    base3.vcgroup as function3,
    base4.vcgroup as function4,
    base5.vcgroup as function5,
    base6.vcgroup as function6,
    base7.vcgroup as function7,
    base8.vcgroup as function8,
//    base9.vcgroup as function9,
//    base10.vcgroup as function10,
    //cast(base1.front_weight + base2.front_weight + base3.front_weight + base4.front_weight + base5.front_weight + base6.front_weight +
    //base7.front_weight + base8.front_weight + base9.front_weight + base10.front_weight as abap.dec(10,3)) as front_weight,
    cast(base1.front_weight + base2.front_weight + base3.front_weight + base4.front_weight + base5.front_weight + base6.front_weight +
    base7.front_weight + base8.front_weight as abap.dec(10,3)) as front_weight,
    //cast(base1.rear_weight + base2.rear_weight + base3.rear_weight + base4.rear_weight + base5.rear_weight + base6.rear_weight +
    //base7.rear_weight + base8.rear_weight + base9.rear_weight + base10.rear_weight as abap.dec(10,3)) as rear_weight
    cast(base1.rear_weight + base2.rear_weight + base3.rear_weight + base4.rear_weight + base5.rear_weight + base6.rear_weight +
    base7.rear_weight + base8.rear_weight as abap.dec(10,3)) as rear_weight
}
