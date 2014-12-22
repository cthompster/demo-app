module Peloton
  CONFIG              = Hash.new { |hash, key|
                          raise ArgumentError.new("#{key} expected but not found in #{hash}")
                        }.merge YAML.load_file(Rails.root.join("config/peloton.yml"))[Rails.env]
  WSDL                = CONFIG['wsdl']

  class << self
    def wsdl
      CONFIG['wsdl']
    end
  end
end
