#!/bin/sh

# Send the HTTP headers required for a JSON response
echo "Content-Type: application/json"
echo ""

# Send the JSON response body
# Using date for a dynamic response
echo "{"
echo "  \"status\": \"ok\","
echo "  \"message\": \"FIO tester API is running\","
echo "  \"timestamp\": \"$(date -uIs)\""
echo "}"
