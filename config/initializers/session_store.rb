# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_BlogDiary_session',
  :secret      => 'ae59576adbf8f8c65a336c12f6584012dcf1719e567c5a6ad2c4e9c2c28e8ac029bc8d3bde8d783088f5f9912199a865ff77540b408ee675badfd0755d5e5195'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
