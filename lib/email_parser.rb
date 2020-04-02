# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser
    attr_accessor :email_adresses

    def initialize email_adress
        @email_adresses = email_adress
    end

    def parse 
        @email_adresses.split(",").join.split.uniq
    end 
end 

emails1 = "asd@qw.com, per@er.org, Zaza@sugar.net"
parser1 = EmailAddressParser.new(emails1)
parser1.parse 

emails2 = "asd@qw.com per@er.org per@er.org Zaza@sugar.net"
parser2 = EmailAddressParser.new(emails2)
parser2.parse


#binding.pry
