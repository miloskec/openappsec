# What is open-appsec?

**open-appsec** is an open-source, fully automated Web Application & API Security solution. It is powered by a machine learning engine that continuously analyzes users' HTTP/S requests as they visit the website or API.

The analysis includes the application structure and how users interact with the content to identify patterns and automatically stop and block malicious requests and bad actors.

open-appsec provides pre-emptive threat protection against OWASP Top-10 and zero-day attacks. Thanks to machine learning, there is no need for threat signature upkeep and exception handling, which is common in many WAF solutions.

It can be deployed as an add-on to Kubernetes Ingress Controller, NGINX, and Kong API Gateway (Envoy support is coming soon) on many platforms and solutions.

The project GitHub is available [here](https://github.com/openappsec).

## Main Features of open-appsec

- **Machine Learning-based Application Firewall**:
  - Stop application layer attacks, including OWASP Top 10, with minimal tuning and no false positives.
  - Pre-emptive (no software updates) protection for zero-days such as Log4Shell and Spring4Shell.

- **API Security**:
  - Stop malicious API access and abuse.
  - Enforce API schema (Premium Edition).

- **Bot Prevention**:
  - Identify and stop automated attacks before they negatively impact the bottom line or customer experience (Premium Edition).

- **Intrusion Prevention**:
  - Full IPS Engine with support for custom Snort 3.0 signatures.
  - Protections for over 2,800 WEB CVEs, based on Check Point's award-winning NSS-Certified IPS (Premium Edition).

- **File Security**:
  - Prevent malicious files from being uploaded into web apps and API servers.
  - The engine scans HTTP traffic, analyzes uploaded files, and consults a vast cloud repository for the file's reputation (Premium Edition).

- **Rate Limiting**:
  - Safeguard your websites and APIs by setting a cap on the number of requests that can be made within a certain period.
  - Rate limiting can be based on identifiers such as IP address (Community Edition) or keys within JWT, cookies, or headers (Premium Edition) [Coming soon].

- **HTTPS Traffic Inspection**:
  - SSL certificates and private keys can be stored locally or in public cloud secrets storage (AWS/Azure).

- **Integration**:
  - Supports integration into modern environments and workloads (public cloud & Kubernetes) and CI/CD workflows.
  - Compatible with NGINX Ingress Controller, NGINX, NGINX Proxy Manager, and Kong Gateway on Kubernetes, Linux Servers, and Containers (Docker).

- **Ease of Ongoing Management and Maintenance**:
  - Enterprise-grade SaaS Web UI, GraphQL API, and Infrastructure-as-Code using Terraform.


## This implementation is Docker (Locally Managed)
[You can find more details here.](https://docs.openappsec.io/getting-started/start-with-docker/install-with-docker-locally-managed).


## UML Diagram
![Open AppSec ](https://github.com/miloskec/openappsec/blob/master/opanappsec.png)

