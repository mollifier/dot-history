json.array!(@devices) do |device|
  json.extract! device, :id, :token, :name, :user_id
  json.url device_url(device, format: :json)
end
