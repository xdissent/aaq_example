# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_aaq_test_session',
  :secret      => 'c4184b28781bebe9b246b6f0fc3bf88629a376cf5f06f9c6953f1d3e9a58b1af23a304cbd3f1da6644ade30bb5445822d0117b90abaae9b343fd9e081b7a4fc3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
