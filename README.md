# Test-automation

Agent-driven SAP CAP projects. Every push builds the MTA and deploys it to the BTP Cloud Foundry trial
(see `.github/workflows/deploy.yml`). Without an `mta.yaml` the pipeline only checks the CF login.
