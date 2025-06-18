**What is IaaS**

Infrastructure as a Service (IaaS) is a cloud computing model where providers like AWS, Azure, and GCP deliver virtualized compute, 
networking, and storage resources over the internet. With IaaS, customers can launch virtual machines, configure networks, and attach storage—on-demand—without managing physical hardware.

**Security Implications of IaaS**

1. Shared Responsibility Model
The cloud provider secures the physical infrastructure, hypervisor, and core services.

The customer is responsible for securing:

Operating systems

Applications

Identity and Access Management (IAM)

Data (at rest and in transit)

Network configurations

2. Misconfiguration Risk
Misconfigured security groups, IAM roles, or public S3 buckets can expose resources to the internet.

AWS Config, Security Hub, and Azure Defender help detect these issues.

3. IAM and Access Control
Over-permissioned roles or lack of role separation can lead to privilege escalation or unauthorized access.

Implement least privilege using IAM policies, role assumption boundaries, and multi-factor authentication (MFA).

4. Data Protection
Data must be encrypted at rest (using AWS KMS) and in transit (e.g., using HTTPS/TLS).

Regularly rotate encryption keys and audit access logs. (KMS)

5. Patch and Vulnerability Management
Cloud VMs (EC2) require manual patching unless automated with tools like AWS Systems Manager Patch Manager.

Unpatched systems are a leading attack vector.
