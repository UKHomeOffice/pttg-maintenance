Proving Things static maintenance page
=

[![Build Status](https://drone.digital.homeoffice.gov.uk/api/badges/UKHomeOffice/pttg-maintenance/status.svg)](https://drone.digital.homeoffice.gov.uk/UKHomeOffice/pttg-maintenance)

[![Docker Repository on Quay](https://quay.io/repository/ukhomeofficedigital/pttg-maintenance/status "Docker Repository on Quay")](https://quay.io/repository/ukhomeofficedigital/pttg-maintenance)

Overview
-

Provides a maintenance page that can be displayed after an ingress update

## Find Us

* [GitHub]
* [Quay.io]

### Technical Notes

This container provides a mount for nginx to serve static html content

To use this page traffic should be routed from the frontend to this service rather than the UI service.

As an example [pttg-ip-fm-ui ingress config] can be switched to [pttg-ip-fm-ui ingress maintenance config]



### Infrastructure

This service is packaged as a Docker image and stored on [Quay.io]

This service currently runs in AWS and has an associated [kubernetes configuration]

## Building

This service is built using Gradle on Drone using [Drone yaml]

## Versioning

For the versions available, see the [tags on this repository].

## Authors

See the list of [contributors] who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENCE.md]
file for details.



[contributors]:                     https://github.com/UKHomeOffice/pttg-maintenance/graphs/contributors
[Quay.io]:                          https://quay.io/repository/ukhomeofficedigital/pttg-maintenance
[kubernetes configuration]:         https://github.com/UKHomeOffice/kube-pttg-maintenance
[Drone yaml]:                       .drone.yml
[tags on this repository]:          https://github.com/UKHomeOffice/pttg-maintenance/tags
[LICENCE.md]:                       LICENCE.md
[GitHub]:                           https://github.com/UKHomeOffice/pttg-maintenance
[pttg-ip-fm-ui ingress config]:     https://github.com/UKHomeOffice/kube-pttg-ip-fm-ui/blob/master/kd/ingress.yaml
[pttg-ip-fm-ui ingress maintenance config]: https://github.com/UKHomeOffice/kube-pttg-ip-fm-ui/blob/master/kd/ingress-maintenance.yaml