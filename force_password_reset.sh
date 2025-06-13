#!/bin/bash

# Get list of all IAM users
users=$(aws iam list-users --query "Users[*].UserName" --output text)

echo "Forcing password reset for users with console access..."

for user in $users; do
    # Check if user has a login profile (i.e., console password set)
    aws iam get-login-profile --user-name "$user" > /dev/null 2>&1

    if [ $? -eq 0 ]; then
        echo "✅ Forcing password reset for: $user"
        aws iam update-login-profile --user-name "$user" --password-reset-required
    else
        echo "⏭ Skipping $user (no console access)"
    fi
done

echo "Done."

