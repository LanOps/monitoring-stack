### LanOps Monitoring Stack

Monitoring for ya boiz


### Gathering Metics

#### CAdvisor

cAdvisor (Container Advisor) provides container users an understanding of the resource usage and performance characteristics of their running containers. Set to deploy globally over ALL hosts.

#### Node Exporter

Prometheus exporter for hardware and OS metrics exposed by NIX kernels, written in Go with pluggable metric collectors. Set to deploy globally over ALL hosts.

#### Prometheus Rancher Exporter

Exposes the health of Stacks / Services and Hosts from the Rancher API, to a Prometheus compatible endpoint. Set to deploy on Node hosts ONLY

### Displaying Metrics

#### Prometheus

Prometheus, a Cloud Native Computing Foundation project, is a systems and service monitoring system. It collects metrics from configured targets at given intervals, evaluates rule expressions, displays the results, and can trigger alerts if some condition is observed to be true. Set to deploy Monitoring hosts ONLY

#### Grafana

Grafana is an open source, feature rich metrics dashboard and graph editor for Graphite, Elasticsearch, OpenTSDB, Prometheus and InfluxDB. Set to deploy Monitoring hosts ONLY

### Configuring Metrics

#### Prom Conf

Simple container designed to populate prometheus configuration using dns autodiscovery, when deployed as part of the Prometheus catalog entry in Rancher. Set to deploy onto Database hosts ONLY

#### Graf DB

Pre-configured Grafana sqllite config database, designed to be used in the Prometheus community catalog entry for Rancher. Set to deploy onto Database hosts ONLY