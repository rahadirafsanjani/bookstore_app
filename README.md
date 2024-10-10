# README

Prerequisites
Ensure you have the following software installed:

Redis: v7.0.15
PostgreSQL: v16.4 (Ubuntu 16.04-0ubuntu0.24.04.2)
Ruby: v3.3.5 (2024-09-03 revision ef084cc8f4) [x86_64-linux]
Rails: v7.2.1

Getting Started
Follow these steps to set up your development environment:
1. bundle install
2. rails db:setup
3. rails db:migrate
4. rails s or bin/dev
5. sidekiq

Running Test 
bundle exec rspec spec/models --format documentation --format json --out ./spec_report/rspec_report.json
