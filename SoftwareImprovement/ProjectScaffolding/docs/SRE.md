# SRE Checklist

## Level 1 (Test, Build and Deploy)

### Tests

1. [o] Unit tests exist to ensure basic functionality.
2. [-] An integration test exists to ensure your service works as a running entity.

### Build

1. [-] You have an automated build of your master branch via a CI tool. I.e.
       Jenkins/TravisCI.
2. [-] Users are able to build your project locally without having to install the
       the dependencies, or their is a single script that can be used to install and
       uninstall the dependencies.

### Deploy

1. [-] You have the ability to deploy via a single command. This can be either a
       Makefile target, Script, etc...

## Level 2 (Documentation and Continuous Integration)

### Documentation

1. [-] Development, Deployment, and Testing are all documented and linked in the main
       README.
2. [-] Architectural Design Review documents exists for all major decisions about the
       service.

### Continuous Integration

1. [-] Continous Integration file (Jenkinsfile/.travis.yaml) exists, and is linked to
       the Continous Integration Environment.
2. [-] Continous Integration file runs build and test at minimum.

## Level 3 (Security, Monitoring)

### Security

1. [-] Self Security Review has been completed.

### Monitoring

1. [-] Monitoring exists for anything that might become an immediate response issue.
2. [-] Alerts exists for anything that might become an immediate response issue.
3. [-] SLA exists for the service to describe what is an immediate response issue,
       and generally expected behavior.

## Level 4 (System Testing, Architecture and Runbooks)

### System Testing

1. [-] System test exists that ensures the service works with the entire system as
       expected. Test(s) must be automated.
2. [-] Load test should exist that describes the peak capacity for your system.

### Architecture

#### Diagrams

1. [-] System Diagram should exist that details the design of your system without
       any dependent services.
2. [-] System Diagram should exist that details the design of your system as it
       integrates into the architecture of the project as a whole

### Runbooks

[Runbook Template]

1. [-] Runbooks exist for all immediate response issues.
2. [-] Escalation policy exists for issues that aren't covered in runbooks.

#### Owner Information

* __How to Contact__
  * _Hipchat/Slack_:
  * _Email_:

## Level 5 (Automation, Reporting, Planning

### Automation

#### Automated Testing

1. [-] All testing is automated and part of the CI pipeline. Testing must also be
       runnable from the command line.

#### Automated Deploy

1. [-] Continuous Deploy must be available, but doesn't have to be turned on.

### Planning

#### Volume Estimates

1. [-] Volume estimates must be provided for the next 6 months, with a new volume
       estimate every 6 months going forward.
2. [-] Volume estimates should be gone over every 6 months to determine any issues
       in estimation.

#### Growth Planning

1. [-] Horizontal and Vertical Scaling must be documented on what the expectations
       are for either form.

#### Dependencies

1. [-] Internal Dependencies should be listed.
2. [-] External Dependencies should be listed.

### Reporting

1. [-] Reporting should exist to get the State of the System at a glance.
2. [-] Daily, Weekly, and Monthly Report should be available via UI or automated
       reporting mechanism.

[Runbook Template]: ./sre/runbooks/RunbookTemplate.md
