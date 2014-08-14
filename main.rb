require_relative 'source'
require 'pry'

def valid_ip_addresses(text)
  text.scan(/(?:\d{1,3}\.){3}\d{1,3}/)
end

def valid_mit_ip_addresses(text)
  text.scan(/18\.(?:\d{1,3}\.){2}\d{1,3}/)
end

def non_mit_ip_addresses(text)
  # valid_ip_addresses(text).select { |address| !valid_mit_ip_addresses(text).include?(address) }
  text.scan(/\b(?!18)(?:\d{1,3}\.){3}\d{1,3}\b/)
end

def valid_phone_numbers(text)
  text.scan(/[2-9]\d{2}-\d{3}-\d{4}/).uniq
end

def area_codes(text)
  text.scan(/[2-9]\d{2}(?=-\d{3}-\d{4})/).uniq
end

def email_addresses(text)
  text.scan(/\w+@\w+\.\w+/)
end

def zip_codes(text)
  text.scan(/\b\d{5}\b/)
end

def hex_colors(text)
  text.scan(/(?<=#)\h{3,6}\b/)
end
