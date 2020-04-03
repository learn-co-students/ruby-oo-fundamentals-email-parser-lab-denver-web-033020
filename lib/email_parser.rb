require "pry"
# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :email_addresses
    
    def initialize(email_address)
        @email_addresses = email_address
    end

    def parse
        email_names = @email_addresses.split(/[, ]/).uniq
        email_names.reject! do |email| 
            email.empty?
        end
        email_names
    end
end

