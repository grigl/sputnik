Uploadcare::Rails::Engine.configure do
  config.uploadcare.public_key = 'e75dfc8bd6745c800a28'
  config.uploadcare.private_key = '387cfdf33984ed4cd649'
  config.uploadcare.widget_version = '0.8'

  # Set the following to true if you don't want to propagate exceptions
  # that are happening while storing a file (e.g. storing a file
  # which no longer exists). They all are written to logger.error anyway.
  config.uploadcare.silence_save_errors = false
end