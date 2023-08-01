@AbapCatalog.sqlViewName: 'YV_WEIGHTS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Front weight Rear weight'
define view YCWGI_VALN_WEIGHTS
    with parameters p_front_weight : atinn,
                    p_rear_weight : atinn
as select from YCWGI_VALN01
{
    key vtint,
    key slnid,
    max( case when YCWGI_VALN01.atinn = $parameters.p_front_weight then YCWGI_VALN01.value_dec end ) as front_weight,
    max( case when YCWGI_VALN01.atinn = $parameters.p_rear_weight then YCWGI_VALN01.value_dec end ) as rear_weight
} group by vtint, slnid
