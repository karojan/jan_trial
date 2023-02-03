@EndUserText.label: 'kjan bac Singleton'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZKjan_I_Bac_S
  as select from I_Language
    left outer join ZKJAN_DB_BAC on 0 = 0
  composition [0..*] of ZKjan_I_Bac as _Bac
{
  key 1 as SingletonID,
  _Bac,
  max( ZKJAN_DB_BAC.LAST_CHANGED_AT ) as LastChangedAtMax,
  cast( '' as SXCO_TRANSPORT) as TransportRequestID,
  cast( 'X' as ABAP_BOOLEAN preserving type) as HideTransport
  
}
where I_Language.Language = $session.system_language
