#!/bin/sh
set -eu

sh -c "curl -X POST -H 'Content-Type: application/x-www-form-urlencoded' -H 'Authorization: Bearer $MASTODON_ACCESS_TOKEN' --data-urlencode 'status=$*' $MASTODON_INSTANCE/api/v1/statuses"

