#!/bin/sh

POLICY_PATH="/ext/appsec/local-policy.yaml"
TARGET_PATH="/etc/cp/policy/local_policy.yaml"
COMMAND_PATH="/usr/sbin/open-appsec-ctl"

# Wait until the open-appsec-ctl command becomes available
while [ ! -f "$COMMAND_PATH" ]; do
    echo "Waiting for $COMMAND_PATH to be available..."
    sleep 5
done

echo "$COMMAND_PATH is now available. Continuing..."

# Wait until the policy file is available
while [ ! -f "$POLICY_PATH" ]; do
    echo "Waiting for policy file $POLICY_PATH to be available..."
    sleep 5
done

echo "Policy file $POLICY_PATH is available. Continuing..."

# Wait until the agent process is running
while ! pgrep -f "cp-nano-agent" > /dev/null; do
    echo "Waiting for cp-nano-agent process to start..."
    sleep 5
done

if [ ! -d "/etc/cp/policy" ]; then
    echo "Directory /etc/cp/policy does not exist. Creating it..."
    mkdir -p /etc/cp/policy
else
    echo "Directory /etc/cp/policy already exists."
fi

# Copy the policy file to the target path
cp "$POLICY_PATH" "$TARGET_PATH"
echo "Policy file copied to $TARGET_PATH."

echo "cp-nano-agent process is running. Applying policy..."

# Apply the policy using the command
$COMMAND_PATH --apply-policy $POLICY_PATH