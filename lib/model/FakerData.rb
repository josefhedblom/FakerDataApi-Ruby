class FakerData
  
    def initialize()
      @file = File.open("./lib/FakerDataFiles/faker-data.js", 'w')
    end
    
    def generate_data
      @fakerData = []
      100.times do |i|
          first_name      = Faker::Name.first_name
          last_name       = Faker::Name.last_name
          country         = Faker::Address.country
          city            = Faker::Address.city
          street_address  = Faker::Address.street_address
          zip_code        = Faker::Address.zip_code
          @fakerData << {
              "id": 1 + i, 
              "first_name": "#{first_name}",
              "last_name": "#{last_name}",
              "email": "#{first_name.downcase}#{last_name.downcase}@eample.com",
              "country": "#{country}",
              "city": "#{city}",
              "street_address": "#{street_address}",
              "zip_code": "#{zip_code}"
          }
      end
      @file.puts JSON.pretty_generate(@fakerData)
      @file.close
    end
  
    def read_file
      @file = File.open("./lib/FakerDataFiles/faker-data.js", 'r')
    end
  end