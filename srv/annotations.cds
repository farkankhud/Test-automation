using MappingService from './service';

annotate MappingService.MappingTable with @(
  UI.HeaderInfo: {
    TypeName      : 'Mapping',
    TypeNamePlural: 'Mappings',
    Title         : { Value: patch_Code },
    Description   : { Value: region }
  },
  UI.SelectionFields: [ patch_Code, region, cost_center ],
  UI.LineItem: [
    { Value: patch_Code },
    { Value: region },
    { Value: cost_center },
    { Value: modifiedAt, Label: 'Changed On' }
  ],
  UI.FieldGroup #General: {
    Data: [
      { Value: patch_Code },
      { Value: region },
      { Value: cost_center }
    ]
  },
  UI.FieldGroup #Admin: {
    Data: [
      { Value: createdBy },
      { Value: createdAt },
      { Value: modifiedBy },
      { Value: modifiedAt }
    ]
  },
  UI.Facets: [
    { $Type: 'UI.ReferenceFacet', ID: 'General', Label: 'General Information', Target: '@UI.FieldGroup#General' },
    { $Type: 'UI.ReferenceFacet', ID: 'Admin',   Label: 'Administrative Data', Target: '@UI.FieldGroup#Admin' }
  ]
);
