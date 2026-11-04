namespace scrum.validation;

using { managed } from '@sap/cds/common';

entity validation_table : managed {
  key patch_Code  : String(10) @title: 'Patch Code';
      region      : String(20) @title: 'Region';
      cost_center : String(4)  @title: 'Cost Center';
}
