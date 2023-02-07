@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '##GENERATED zkjan_zterm'
define root view entity ZKJAN_I_ZTERM
  as select from zkjan_a_zterm as zterm
{
  key mvgr1 as Mvgr1,
  key pltyp as Pltyp,
  key datab as Datab,
  datbi as Datbi,
  zterm as Zterm,
  @Semantics.systemDateTime.lastChangedAt: true
  lastchangedat as Lastchangedat,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  locallastchangedat as Locallastchangedat
  
}
