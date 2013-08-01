def clock &block
  hour = (Time.new.hour + 12) % 12
  hour.times(&block)
end