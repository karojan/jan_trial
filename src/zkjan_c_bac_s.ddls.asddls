@EndUserText.label: 'kjan bac Singleton - Maintain'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@ObjectModel.semanticKey: [ 'SingletonID' ]
define root view entity ZKjan_C_Bac_S
  provider contract transactional_query
  as projection on ZKjan_I_Bac_S
{
  key SingletonID,
  LastChangedAtMax,
  TransportRequestID,
  HideTransport,
  _Bac : redirected to composition child ZKjan_C_Bac
  
}
