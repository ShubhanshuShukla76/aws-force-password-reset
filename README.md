# AWS Force Password Reset Tool

This script enforces password rotation by requiring all IAM users with console access to reset their passwords on next login. It checks each IAM user and applies the `--password-reset-required` flag for compliant access policy enforcement.

## 🔧 Requirements

- AWS CLI configured with sufficient IAM permissions:
  - `iam:ListUsers`
  - `iam:GetLoginProfile`
  - `iam:UpdateLoginProfile`

## 🚀 Usage

1. Clone the repo:
   ```bash
   git clone https://github.com/yourusername/aws-force-password-reset.git
   cd aws-force-password-reset
Make the script executable:

bash
Copy
Edit
chmod +x force_password_reset.sh
Run the script:

bash
Copy
Edit
./force_password_reset.sh
✅ What It Does
Lists all IAM users

Checks if the user has a console login profile

If so, applies a forced password reset

Users with no console login access are skipped automatically.
