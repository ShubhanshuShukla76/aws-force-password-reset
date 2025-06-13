# 🔐 AWS Force Password Reset Tool

This script enforces password rotation by requiring all IAM users **with console access** to reset their passwords on next login.  
It checks each IAM user and applies the `--password-reset-required` flag to maintain compliance with password policies.

---

## 🔧 Requirements

Make sure the AWS CLI is configured and your user/role has these IAM permissions:

- `iam:ListUsers`
- `iam:GetLoginProfile`
- `iam:UpdateLoginProfile`

---

## 🚀 Usage

### 1. Clone the repository
```bash
git clone https://github.com/yourusername/aws-force-password-reset.git
cd aws-force-password-reset


##  2. Make the script executable
chmod +x force_password_reset.sh

3. Run the script
./force_password_reset.sh


✅ What It Does
🔍 Lists all IAM users in the account
👤 Checks if each user has console login access (i.e., login profile exists)
🔁 If yes, enforces password reset using --password-reset-required
⏭ Skips service accounts or users without console access automatically

📌 Notes
This script only affects human users with console access
Ideal for enforcing password policies like 45-day expiry
Can be scheduled or extended for automated compliance

📄 License
This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.


🤝 Contribute
Found an issue or want to add a feature?
Pull requests are welcome!

Let me know if you'd like to add:
- A badge (e.g. Bash, AWS Certified)
- GitHub Actions status
- CSV output/log support documented

I can help polish the whole repo presentation.



