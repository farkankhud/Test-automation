using { scrum.validation as db } from '../db/schema';

service ValidationService @(path: '/odata/v4/validation') {
  @odata.draft.enabled
  entity ValidationTable as projection on db.validation_table;
}
