@AbapCatalog.sqlViewName: 'YCWGV_BASE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ABCD BASE'
define view YCWG_ABCD_V_BASE as 
select from cuvtab_valc
{
    key vtint,
    key slnid,
    key atinn,
    valc
} where vtint = '0000000037'    //VT_CWG_A
     or vtint = '0000000038'    //VT_CWG_B
     or vtint = '0000000039'    //VT_CWG_C
     or vtint = '0000000040'    //VT_CWG_D
