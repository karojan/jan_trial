@EndUserText.label: 'kjan bac - Maintain'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define view entity ZKjan_C_Bac
  as projection on ZKjan_I_Bac
{
  key Customer,
  key Salesorg,
  key Distr,
  key Div,
  key Datbi,
  Datab,
  Accnum,
  LastChangedAt,
  @Consumption.hidden: true
  LocalLastChangedAt,
  @Consumption.hidden: true
  SingletonID,
  _KjanBacAll : redirected to parent ZKjan_C_Bac_S
  
}
