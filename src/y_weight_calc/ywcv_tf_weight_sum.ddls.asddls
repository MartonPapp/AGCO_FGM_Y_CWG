@AbapCatalog.sqlViewName: 'YWCV_WGHTSUMTF'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'WEIGHT SUM FROM TABLE FUNC'
define view YWCV_TF_WEIGHT_SUM as 
select from YWCTF_WEIGHT_SUM
{
    modelyear,
    function1,
    function2,
    function3,
    function4,
    function5,
    function6,
    function7,
    function8,
    cast(front_weight as abap.dec(10,3)) as front_weight,
    cast(rear_weight as abap.dec(10,3)) as rear_weight
}
