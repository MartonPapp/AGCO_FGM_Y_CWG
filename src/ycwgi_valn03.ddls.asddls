@AbapCatalog.sqlViewName: 'YDDL_VALN03DEC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'RANGE VALUE CONVERTED TO CHAR'
define view YCWGI_VALN03 as
select from cuvtab_valn
{  key vtint,
    key slnid,
    key atinn,
    val_code,
    cast(fltp_to_dec( val_from as  abap.dec(8,0) ) as abap.char( 16 )) as value_from_char,
    cast(fltp_to_dec( val_to as  abap.dec(8,0) ) as abap.char( 16 )) as value_to_char
} where val_code = '3'
