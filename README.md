# Test-automation

Agent-driven SAP CAP projects (one project per branch). Every push runs `.github/workflows/deploy.yml`:

1. **Scaffold** (only if `scaffold.json` exists): runs the same SAP tools as BAS, headless.
   - `cds add hana,xsuaa,approuter,mta --for production` while `mta.yaml` is missing
   - SAP Fiori generator (`yo @sap/fiori:headless`, List Report Object Page V4) for each UI in `scaffold.json` whose `app/<name>/webapp/manifest.json` is missing
   - generated files are committed back to the branch
2. **Build** with `mbt build`, **deploy** with `cf deploy` to the BTP CF trial.

Without `mta.yaml` and `scaffold.json` the pipeline only checks the CF login.

`scaffold.json` example:
```json
{
  "cdsAdd": ["hana", "xsuaa", "approuter", "mta"],
  "apps": [
    { "name": "mappingtable", "namespace": "scrum5", "title": "Mapping Table",
      "serviceName": "MappingService", "servicePath": "/odata/v4/mapping/", "mainEntity": "MappingTable" }
  ]
}
```
