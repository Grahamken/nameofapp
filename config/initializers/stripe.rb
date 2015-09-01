if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_sJOCNa8RrravulIWhqL7AyfF',
    :secret_key      => 'sk_test_yn9wI3aNdLU2vQL4pHT3klys'
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_sJOCNa8RrravulIWhqL7AyfF',
    :secret_key      => 'sk_test_yn9wI3aNdLU2vQL4pHT3klys'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
