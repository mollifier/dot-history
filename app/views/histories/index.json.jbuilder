json.array!(@histories) do |history|
  json.extract! history, :id, :raw_line, :command_name, :command_argument, :comment, :device_id
  json.url history_url(history, format: :json)
end
