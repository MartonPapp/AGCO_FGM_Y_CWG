@AbapCatalog.sqlViewName: 'YDDL_VALN01DEC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'SINGLE VALUE CONVERTED TO DEC'
define view YCWGI_VALN01 as 
select from cuvtab_valn {
    key vtint,
    key slnid,
    key atinn,
    fltp_to_dec( val_from as  abap.dec(10,3) ) as value_dec 
} where val_code = '1'
