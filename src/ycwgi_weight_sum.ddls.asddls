@AbapCatalog.sqlViewName: 'YV_WEIGHT_SUM'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Weight SUM'
define view YCWGI_WEIGHT_SUM
    with parameters p_front_weight : atinn,
                    p_rear_weight : atinn,
                    p_date : abap.dats
as select from YCWGI_VALC as valc
inner join YCWGI_VALN_WEIGHTS( p_front_weight:$parameters.p_front_weight, p_rear_weight:$parameters.p_rear_weight ) as weights 
               on valc.vtint = weights.vtint
               and valc.slnid = weights.slnid
inner join YCWGI_DATE_IN_RANGE(p_date:$parameters.p_date) as date 
               on valc.vtint = date.vtint
               and valc.slnid = date.slnid
{
    key valc.vtint,
    //key valc.slnid,
    max(valc.vcgroup) as vcgroup,
    date.val_date as valdate,
    sum(weights.front_weight) as front_weight,
    sum(weights.rear_weight) as rear_weight
    
} group by valc.vtint, date.val_date
