@AbapCatalog.sqlViewName: 'YWCV_WGHTS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'WEIGHTS'
define view YWCV_WEIGHTS as 
select from YCWGI_VALN01
{
    key YCWGI_VALN01.vtint as vtint,
    key YCWGI_VALN01.slnid as slnid,
    max( case when YCWGI_VALN01.atinn = '0000000989' then YCWGI_VALN01.value_dec end ) as front_weight,
    max( case when YCWGI_VALN01.atinn = '0000000988' then YCWGI_VALN01.value_dec end ) as rear_weight
} where  vtint = '0000000034'
  group by YCWGI_VALN01.vtint, YCWGI_VALN01.slnid
  
