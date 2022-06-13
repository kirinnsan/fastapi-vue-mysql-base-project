#! /usr/bin/env bash

# install library
poetry add install

# Let the DB start
python /app/app/backend_pre_start.py

# Run migrations
alembic upgrade head

# Create initial data in DB
python /app/app/initial_data.py

# app execute
# uvicorn main:app --reload --host 0.0.0.0 --port 80

uvicorn app.main:app --reload --host 0.0.0.0 --port 80
