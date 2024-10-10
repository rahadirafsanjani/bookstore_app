# Prerequisites

Ensure you have the following software installed:

- PostgreSQL: 16.4 
- Ruby: 3.3.5 
- Rails: 7.2.1
- Redis: 7.0.15 
- Node: 20.18
- Yarn: 4.5

# Getting Started
Follow these steps to set up your development environment:

- bundle install
- rails db:setup
- rails db:migrate
- rails s or bin/dev


# Running Test 
bundle exec rspec spec/models --format documentation --format json --out ./spec_report/rspec_report.json

# Starting Redis
- redis-server

# Starting Sidekiq
- bundle exec sidekiq

# See Cron/Worker Job
- localhost:3000/sidekiq