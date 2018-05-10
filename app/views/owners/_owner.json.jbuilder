json.extract! owner, :id, :surname, :first_name, :address, :suburb, :postcode, :account_name, :account_number, :bsb, :created_at, :updated_at
json.url owner_url(owner, format: :json)
