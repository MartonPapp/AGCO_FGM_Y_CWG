@AbapCatalog.sqlViewName: 'YV_WGHT_SUM_TF'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'WEIGHT SUM EXT FROM TABLE FUNC'
define view YCWGI_TF_WEIGHT_SUM_EXT as 
select from YWCTF_WEIGHT_SUM_EXT
{
    vtnam,
    modelyear,
    function1,
    function2,
    function3,
    function4,
    function5,
    function6,
    function7,
    function8,
    function9,
    function10,
    front_weight,
    rear_weight,
    vcgroup_atnam,
    modelyear_atnam,
    front_atnam,
    rear_atnam
    
}
