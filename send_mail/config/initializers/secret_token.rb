# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
SendMail::Application.config.secret_key_base = 'b4c00e49a89be1cb968c33640257639b9aba3a2ba96ba9ad4987af838331b5e3e7586fd42c15562a86208f502022691826f66af008beee23bed6eca0d7026f88'
