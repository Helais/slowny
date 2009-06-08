# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_slowny-dev_session',
  :secret      => '838ab81f305ec055e0083187ad6a3c5721e2e3b48137e9183fea7cde857c7719a8c225107e0be131d55ba0b12ba492ed2466972bb24ed8d75b952aff1a929ac3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
