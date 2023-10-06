#!/bin/sh
set -e
cd /app
/app/.venv/bin/uvicorn sandbox:app
