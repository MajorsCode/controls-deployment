**Incident Response Plan**

This document outlines a structured incident response plan (IRP) to handle security breaches, using AWS-native tools and best practices.

**Phases of Incident Response**

1. Preparation
- Deploy AWS services: GuardDuty, CloudTrail, Config, Security Hub.
- Configure Amazon SNS for alerting.
- Establish incident response runbooks.
- Ensure IAM policies enforce least privilege.
- Enable logging and monitoring across all AWS services.

2. Identification
- Monitor alerts from GuardDuty (e.g., unusual API calls, unauthorized ports).
- Analyze CloudTrail logs to trace user or attacker actions.
- Use Security Hub to correlate and prioritize findings.

3. Contain
- Use AWS Systems Manager Session Manager to isolate the EC2 instance (remove it from ELB, detach IAM roles, block storage).
- Apply temporary NACLs or Security Group rules to block outbound traffic.
- Rotate IAM credentials using Secrets Manager.

4. Removal
- Remove malware and rootkits using Amazon Inspector.
- Terminate compromised resources and redeploy.
- Revoke exposed credentials or tokens.

5. Recovery
- Provision healthy AMI or Docker image.
- Restore data from RDS snapshots or S3 versioning.
- Validate application behavior before returning traffic.

6. Knowledge Transfer
- Document the incident in a report within Confluence, Teams or other Central location for Org retrieval, easy access.
- Update detection and response policies to prevent repeated behavior.
- Add guardrails to prevent recurrence.


**Tools Used**
- **GuardDuty** for threat detection
- **CloudTrail & Config** for traceability
- **IAM & KMS** for access control and encryption
- **AWS Systems Manager** for automated response and remediation


