if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key      => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_sJOCNa8RrravulIWhqL7AyfF',
    :secret_key      => 'sk_test_yn9wI3aNdLU2vQL4pHT3klys'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]