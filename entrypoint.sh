#!/bin/sh
set -eu

curl -X POST -H "Content-Type: application/x-www-form-urlencoded" -H "Authorization: Bearer $ACCESS_TOKEN" --data-urlencode "status=$*" $MASTODON_HOST/api/v1/statuses
