@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZKJAN_I_ZTERM'
@ObjectModel.semanticKey: [ 'Mvgr1', 'Pltyp', 'Datab' ]
define root view entity ZKJAN_C_ZTERM
  provider contract transactional_query
  as projection on ZKJAN_I_ZTERM
{
  key Mvgr1,
  key Pltyp,
  key Datab,
  Datbi,
  Zterm,
  Locallastchangedat
  
}
