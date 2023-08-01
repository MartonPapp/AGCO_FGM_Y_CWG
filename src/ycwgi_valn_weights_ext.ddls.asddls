@AbapCatalog.sqlViewName: 'YV_WGHTSEXT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Front weight Rear weight'
define view YCWGI_VALN_WEIGHTS_EXT as 
select from YCWGI_VALN_EXT 
inner join YCWGI_VALN01
    on YCWGI_VALN01.vtint = YCWGI_VALN_EXT.vtint
    and YCWGI_VALN01.slnid = YCWGI_VALN_EXT.slnid
{
    key YCWGI_VALN_EXT.vtint as vtint,
    key YCWGI_VALN_EXT.slnid as slnid,
    max( case when YCWGI_VALN01.atinn = YCWGI_VALN_EXT.front_atinn then YCWGI_VALN01.value_dec end ) as front_weight,
    max( case when YCWGI_VALN01.atinn = YCWGI_VALN_EXT.rear_atinn then YCWGI_VALN01.value_dec end ) as rear_weight,
    
    --YCWGI_VALN_EXT.front_atinn as front_atinn,
    --YCWGI_VALN_EXT.rear_atinn as rear_atinn,
    YCWGI_VALN_EXT.front_atnam as front_atnam,
    YCWGI_VALN_EXT.rear_atnam as rear_atnam
} group by YCWGI_VALN_EXT.vtint, YCWGI_VALN_EXT.slnid, YCWGI_VALN_EXT.front_atnam, YCWGI_VALN_EXT.rear_atnam 
