#!/usr/bin/env bash
# Run an anonymous Apex file and print only the USER_DEBUG messages (debug-only view)
# Usage: ./run_debug_only.sh path/to/file.apex [orgAlias]
set -euo pipefail
APEX_FILE="${1:-scripts/apex/datetime_test.apex}"
ORG_ALIAS="${2:-MyOrg}"

# Execute and extract logs, then filter USER_DEBUG lines and strip metadata
sfdx force:apex:execute -f "$APEX_FILE" -u "$ORG_ALIAS" --json \
  | jq -r '.result.logs' \
  | grep 'USER_DEBUG' \
  | sed -E 's/^[^|]*\|[^|]*\|[^|]*\|//' 
