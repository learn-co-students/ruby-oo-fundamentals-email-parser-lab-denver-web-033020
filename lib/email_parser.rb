require 'pry'
class EmailAddressParser 
    attr_accessor :name
    def initialize(name)
        @name = name
    end 
    def parse 
        names = name.split(' ')
        names.map do |name|
            name.delete(',')
        end.uniq
    end 
end 

email_addresses = "john@doe.com, person@somewhere.org"

parser = EmailAddressParser.new(email_addresses)


