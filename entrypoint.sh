#!/bin/sh
set -e
cd /app
/app/.venv/bin/uvicorn sandbox:app --host 0.0.0.0
