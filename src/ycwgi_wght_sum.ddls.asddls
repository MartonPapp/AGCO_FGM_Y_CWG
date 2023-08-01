@AbapCatalog.sqlViewName: 'YV_WGHTSUM'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'weight sum'
define view YCWGI_WGHT_SUM as 
select from YCWGI_WEIGHT_BASE_EXT as base1
inner join YCWGI_WEIGHT_BASE_EXT as base2
    on  base1.vtint = base2.vtint
    and base1.modelyear = base2.modelyear
    --and base1.vcgroup_atinn = base2.vcgroup_atinn
    --and base1.modelyear_atinn = base2.modelyear_atinn
    --and base1.front_atinn = base2.front_atinn
    --and base1.rear_atinn = base2.rear_atinn
    and base1.vcgroup_atnam = base2.vcgroup_atnam
    and base1.modelyear_atnam = base2.modelyear_atnam
    and base1.front_atnam = base2.front_atnam
    and base1.rear_atnam = base2.rear_atnam
inner join YCWGI_WEIGHT_BASE_EXT as base3
    on  base1.vtint = base3.vtint
    and base1.modelyear = base3.modelyear
    --and base1.vcgroup_atinn = base3.vcgroup_atinn
    --and base1.modelyear_atinn = base3.modelyear_atinn
    --and base1.front_atinn = base3.front_atinn
    --and base1.rear_atinn = base3.rear_atinn
    and base1.vcgroup_atnam = base3.vcgroup_atnam
    and base1.modelyear_atnam = base3.modelyear_atnam
    and base1.front_atnam = base3.front_atnam
    and base1.rear_atnam = base3.rear_atnam
inner join YCWGI_WEIGHT_BASE_EXT as base4
    on  base1.vtint = base4.vtint
    and base1.modelyear = base4.modelyear
    --and base1.vcgroup_atinn = base4.vcgroup_atinn
    --and base1.modelyear_atinn = base4.modelyear_atinn
    --and base1.front_atinn = base4.front_atinn
    --and base1.rear_atinn = base4.rear_atinn
    and base1.vcgroup_atnam = base4.vcgroup_atnam
    and base1.modelyear_atnam = base4.modelyear_atnam
    and base1.front_atnam = base4.front_atnam
    and base1.rear_atnam = base4.rear_atnam
inner join YCWGI_WEIGHT_BASE_EXT as base5
    on  base1.vtint = base5.vtint
    and base1.modelyear = base5.modelyear
    --and base1.vcgroup_atinn = base5.vcgroup_atinn
    --and base1.modelyear_atinn = base5.modelyear_atinn
    --and base1.front_atinn = base5.front_atinn
    --and base1.rear_atinn = base5.rear_atinn
    and base1.vcgroup_atnam = base5.vcgroup_atnam
    and base1.modelyear_atnam = base5.modelyear_atnam
    and base1.front_atnam = base5.front_atnam
    and base1.rear_atnam = base5.rear_atnam
inner join YCWGI_WEIGHT_BASE_EXT as base6
    on  base1.vtint = base6.vtint
    and base1.modelyear = base6.modelyear
    --and base1.vcgroup_atinn = base6.vcgroup_atinn
    --and base1.modelyear_atinn = base6.modelyear_atinn
    --and base1.front_atinn = base6.front_atinn
    --and base1.rear_atinn = base6.rear_atinn
    and base1.vcgroup_atnam = base6.vcgroup_atnam
    and base1.modelyear_atnam = base6.modelyear_atnam
    and base1.front_atnam = base6.front_atnam
    and base1.rear_atnam = base6.rear_atnam
inner join YCWGI_WEIGHT_BASE_EXT as base7
    on  base1.vtint = base7.vtint
    and base1.modelyear = base7.modelyear
    --and base1.vcgroup_atinn = base7.vcgroup_atinn
    --and base1.modelyear_atinn = base7.modelyear_atinn
    --and base1.front_atinn = base7.front_atinn
    --and base1.rear_atinn = base7.rear_atinn
    and base1.vcgroup_atnam = base7.vcgroup_atnam
    and base1.modelyear_atnam = base7.modelyear_atnam
    and base1.front_atnam = base7.front_atnam
    and base1.rear_atnam = base7.rear_atnam
inner join YCWGI_WEIGHT_BASE_EXT as base8
    on  base1.vtint = base8.vtint
    and base1.modelyear = base8.modelyear
    --and base1.vcgroup_atinn = base8.vcgroup_atinn
    --and base1.modelyear_atinn = base8.modelyear_atinn
    --and base1.front_atinn = base8.front_atinn
    --and base1.rear_atinn = base8.rear_atinn
    and base1.vcgroup_atnam = base8.vcgroup_atnam
    and base1.modelyear_atnam = base8.modelyear_atnam
    and base1.front_atnam = base8.front_atnam
    and base1.rear_atnam = base8.rear_atnam
inner join YCWGI_WEIGHT_BASE_EXT as base9
    on  base1.vtint = base9.vtint
    and base1.modelyear = base9.modelyear
    --and base1.vcgroup_atinn = base9.vcgroup_atinn
    --and base1.modelyear_atinn = base9.modelyear_atinn
    --and base1.front_atinn = base9.front_atinn
    --and base1.rear_atinn = base9.rear_atinn
    and base1.vcgroup_atnam = base9.vcgroup_atnam
    and base1.modelyear_atnam = base9.modelyear_atnam
    and base1.front_atnam = base9.front_atnam
    and base1.rear_atnam = base9.rear_atnam
inner join YCWGI_WEIGHT_BASE_EXT as base10
    on  base1.vtint = base10.vtint
    and base1.modelyear = base10.modelyear
    --and base1.vcgroup_atinn = base10.vcgroup_atinn
    --and base1.modelyear_atinn = base10.modelyear_atinn
   -- and base1.front_atinn = base10.front_atinn
    --and base1.rear_atinn = base10.rear_atinn
    and base1.vcgroup_atnam = base10.vcgroup_atnam
    and base1.modelyear_atnam = base10.modelyear_atnam
    and base1.front_atnam = base10.front_atnam
    and base1.rear_atnam = base10.rear_atnam
{
    --base1.vtint as vtint,
    base1.vtnam as vtnam,
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
    
    --base1.vcgroup_atinn as vcgroup_attin,
    --base1.modelyear_atinn as modelyear_attin,
    --base1.front_atinn as front_attin,
    --base1.rear_atinn as rear_atinn,
    base1.vcgroup_atnam as vcgroup_atnam,
    base1.modelyear_atnam as modelyear_atnam,
    base1.front_atnam as front_atnam,
    base1.rear_atnam as rear_atnam,
    
    cast(base1.front_weight + base2.front_weight + base3.front_weight + base4.front_weight + base5.front_weight + base6.front_weight +
    base7.front_weight + base8.front_weight + base9.front_weight + base10.front_weight as abap.dec(10,3)) as front_weight,
    cast(base1.rear_weight + base2.rear_weight + base3.rear_weight + base4.rear_weight + base5.rear_weight + base6.rear_weight +
    base7.rear_weight + base8.rear_weight + base9.rear_weight + base10.rear_weight as abap.dec(10,3)) as rear_weight
}
