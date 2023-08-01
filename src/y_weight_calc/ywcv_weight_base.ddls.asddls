@AbapCatalog.sqlViewName: 'YWCV_WGHTBS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'WEIGHT BASE'
define view YWCV_WEIGHT_BASE as 
select from YWCV_COMP_MODYEAR as valc
inner join YWCV_WEIGHTS as valn on valn.vtint = valc.vtint
                                and valn.slnid = valc.slnid
{
    key valc.mandt,
    key valc.vtint as vtint,
    valc.vcgroup as vcgroup,
    valc.modelyear as modelyear,
    valn.front_weight as front_weight,
    valn.rear_weight as rear_weight
}
