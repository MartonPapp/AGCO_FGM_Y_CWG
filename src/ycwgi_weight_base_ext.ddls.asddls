@AbapCatalog.sqlViewName: 'YV_WGHTBSEXT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Weight Base'
define view YCWGI_WEIGHT_BASE_EXT as 
select from YCWGI_VALC_COMP_MODYEAR_EXT as valc
inner join  YCWGI_VALN_WEIGHTS_EXT as valn
    on valn.vtint = valc.vtint
    and valn.slnid = valc.slnid
{
    key valc.vtint as vtint,
    --key valc.slnid as slnid,
    valc.vtnam as vtnam,
    valc.vcgroup as vcgroup,
    valc.modelyear as modelyear,
    valn.front_weight as front_weight,
    valn.rear_weight as rear_weight,
    
    --valc.vcgroup_atinn as vcgroup_atinn,
    --valc.modelyear_atinn as modelyear_atinn,
    --valn.front_atinn as front_atinn,
    --valn.rear_atinn as rear_atinn,
    valc.vcgroup_atnam as vcgroup_atnam,
    valc.modelyear_atnam as modelyear_atnam,
    valn.front_atnam as front_atnam,
    valn.rear_atnam as rear_atnam
}
