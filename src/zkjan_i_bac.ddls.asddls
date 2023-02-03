@EndUserText.label: 'kjan bac'
@AccessControl.authorizationCheck: #CHECK
define view entity ZKjan_I_Bac
  as select from ZKJAN_DB_BAC
  association to parent ZKjan_I_Bac_S as _KjanBacAll on $projection.SingletonID = _KjanBacAll.SingletonID
{
  key CUSTOMER as Customer,
  key SALESORG as Salesorg,
  key DISTR as Distr,
  key DIV as Div,
  key DATBI as Datbi,
  DATAB as Datab,
  ACCNUM as Accnum,
  @Semantics.systemDateTime.lastChangedAt: true
  LAST_CHANGED_AT as LastChangedAt,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  LOCAL_LAST_CHANGED_AT as LocalLastChangedAt,
  1 as SingletonID,
  _KjanBacAll
  
}
