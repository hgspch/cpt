# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Cpt_session',
  :secret      => '7a2dedf869bd44336c2204068129a28cb039cd8b36745c9ec469f17515d48b6b36e4bf7300df092d7b75a4b0e31b0f555075e0501fab915fcc2f6d7456486120'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
ActionController::Base.session_store = :active_record_store
