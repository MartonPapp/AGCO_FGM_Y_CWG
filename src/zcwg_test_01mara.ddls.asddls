@ClientHandling.algorithm: #SESSION_VARIABLE
@ObjectModel.usageType.dataClass: #MIXED
@ObjectModel.usageType.serviceQuality: #D
@ObjectModel.usageType.sizeCategory: #XL
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Analytics.dataCategory: #CUBE
@VDM.viewType: #COMPOSITE
@AbapCatalog.sqlViewName: 'Z600399615733219'
@EndUserText.label: 'CDS view  600_399_MARA_CWG_ABCD_399'
DEFINE VIEW ZCWG_TEST_01MARA
with parameters 
@Consumption.hidden: true 
@Environment.systemField: #SYSTEM_DATE 
P_KeyDate : sll_validon ,
@Consumption.hidden: true 
@Environment.systemField: #SYSTEM_LANGUAGE 
P_Language : sylangu 
 as  SELECT DISTINCT  
  IBN.MATNR  AS  ConfMaterial  ,  
 IBN.INSTANCE  AS  ProductConfiguration  ,  
 @EndUserText.label: 'CWG_ABCD_D'
cast ( IBSY0001.ATWRT as abap.char( 2 ) )   AS  ZCWG_ABCD_D  ,  
 @EndUserText.label: 'CWG_ABCD_D description'
VALD0001._CharcValueDesc( P_KeyDate: :P_KeyDate )[1:Language = $parameters.P_Language ].CharcValueDescription  AS  ZCWG_ABCD_D_Desc  ,  
 @EndUserText.label: 'CWG_ABCD_C'
cast ( IBSY0002.ATWRT as abap.char( 2 ) )   AS  ZCWG_ABCD_C  ,  
 @EndUserText.label: 'CWG_ABCD_C description'
VALD0002._CharcValueDesc( P_KeyDate: :P_KeyDate )[1:Language = $parameters.P_Language ].CharcValueDescription  AS  ZCWG_ABCD_C_Desc  ,  
 @EndUserText.label: 'CWG_ABCD_B'
cast ( IBSY0003.ATWRT as abap.char( 2 ) )   AS  ZCWG_ABCD_B  ,  
 @EndUserText.label: 'CWG_ABCD_B description'
VALD0003._CharcValueDesc( P_KeyDate: :P_KeyDate )[1:Language = $parameters.P_Language ].CharcValueDescription  AS  ZCWG_ABCD_B_Desc  ,  
 @EndUserText.label: 'CWG_ABCD_A'
cast ( IBSY0004.ATWRT as abap.char( 2 ) )   AS  ZCWG_ABCD_A  ,  
 @EndUserText.label: 'CWG_ABCD_A description'
VALD0004._CharcValueDesc( P_KeyDate: :P_KeyDate )[1:Language = $parameters.P_Language ].CharcValueDescription  AS  ZCWG_ABCD_A_Desc 
  FROM  BSCL_IBIN  AS  IBN 
  INNER JOIN  CABN  AS  CABN0001  ON  CABN0001.ATNAM  = 'CWG_ABCD_D' 
  LEFT OUTER JOIN  BSCL_IBSYMBOL  AS  IBSY0001  ON  IBSY0001.MANDT  = IBN.MANDT AND IBSY0001.IN_RECNO  = IBN.IN_RECNO AND IBSY0001.CharacteristicInternalID  = CABN0001.ATINN 
  LEFT OUTER JOIN  I_ClfnCharcValForKeyDateTP ( P_KeyDate : :P_KeyDate )  AS  VALD0001  ON  VALD0001.CharcInternalID  = CABN0001.ATINN AND VALD0001.CharcValue  = IBSY0001.ATWRT 
  INNER JOIN  CABN  AS  CABN0002  ON  CABN0002.ATNAM  = 'CWG_ABCD_C' 
  LEFT OUTER JOIN  BSCL_IBSYMBOL  AS  IBSY0002  ON  IBSY0002.MANDT  = IBN.MANDT AND IBSY0002.IN_RECNO  = IBN.IN_RECNO AND IBSY0002.CharacteristicInternalID  = CABN0002.ATINN 
  LEFT OUTER JOIN  I_ClfnCharcValForKeyDateTP ( P_KeyDate : :P_KeyDate )  AS  VALD0002  ON  VALD0002.CharcInternalID  = CABN0002.ATINN AND VALD0002.CharcValue  = IBSY0002.ATWRT 
  INNER JOIN  CABN  AS  CABN0003  ON  CABN0003.ATNAM  = 'CWG_ABCD_B' 
  LEFT OUTER JOIN  BSCL_IBSYMBOL  AS  IBSY0003  ON  IBSY0003.MANDT  = IBN.MANDT AND IBSY0003.IN_RECNO  = IBN.IN_RECNO AND IBSY0003.CharacteristicInternalID  = CABN0003.ATINN 
  LEFT OUTER JOIN  I_ClfnCharcValForKeyDateTP ( P_KeyDate : :P_KeyDate )  AS  VALD0003  ON  VALD0003.CharcInternalID  = CABN0003.ATINN AND VALD0003.CharcValue  = IBSY0003.ATWRT 
  INNER JOIN  CABN  AS  CABN0004  ON  CABN0004.ATNAM  = 'CWG_ABCD_A' 
  LEFT OUTER JOIN  BSCL_IBSYMBOL  AS  IBSY0004  ON  IBSY0004.MANDT  = IBN.MANDT AND IBSY0004.IN_RECNO  = IBN.IN_RECNO AND IBSY0004.CharacteristicInternalID  = CABN0004.ATINN 
  LEFT OUTER JOIN  I_ClfnCharcValForKeyDateTP ( P_KeyDate : :P_KeyDate )  AS  VALD0004  ON  VALD0004.CharcInternalID  = CABN0004.ATINN AND VALD0004.CharcValue  = IBSY0004.ATWRT 
 inner join Bscl_Ibsymbol AS rsel on rsel.in_recno = IBN.in_recno and ( 
 rsel.CharacteristicInternalID = CABN0001.ATINN OR  rsel.CharacteristicInternalID = CABN0002.ATINN OR  rsel.CharacteristicInternalID = CABN0003.ATINN OR  rsel.CharacteristicInternalID = CABN0004.ATINN )  
  WHERE  IBN.MANDT  = $session.client AND IBN.OBJECTTYP  = '0002' AND IBN.VALTO  = '99991231235959 ';
