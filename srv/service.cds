using { scrum.mapping as db } from '../db/schema';

service MappingService @(path: '/odata/v4/mapping') {
  @odata.draft.enabled
  entity MappingTable as projection on db.mapping_table;
}
