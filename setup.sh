#!/bin/bash

set -e

PGPASSWORD=somepassword psql -f /fixtures/database-schema.sql -d todolist -U todolist
