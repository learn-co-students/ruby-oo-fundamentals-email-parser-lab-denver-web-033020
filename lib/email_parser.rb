require "pry"
class EmailAddressParser
    attr_accessor :unformatted_email_addresses
    
    def initialize(unformatted_email_addresses)
        @unformatted_email_addresses = unformatted_email_addresses

    end 
    def parse
        unformatted_email_addresses.split(/, | /).uniq
    end

end 


=begin
ORIGINAL PROMPT BELOW. NO CODE STRUCTURE TO BEGIN WITH
#Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
=end


=begin
MY COMMENTS ABOUT THIS LAB

Objective
You are given a string of email addresses that are separated by a comma as shown below
unformatted_email_addresses = "avi@test.com, arel@test.com"

Separate email addresses so that each email is an element of an array. 

parser = EmailAddressParser.new(unformatted_email_addresses)
#instantiating an object called parser in class EmailAddressParser.
#You are applying initialize method to unformatted_email_addresses as soon as parser object is created.


parser.parse
# => ["john@doe.com", "person@somewhere.org"]

If we were to apply the parse method to our object parser, we will get an array of individual email addresses as an element. 

MY CODE
# create a class called EmailAddressParser
class EmailAddressParser
    attr_accessor :unformatted_emails_addreses
# We are usign initialize to forego creating a setter and getter method so we can make unformatted emails accessible within class
    def initialize(unformatted_emails_addresses)
        @unformatted_emails_addresses = unformatted_emails_addresses
    end 
# this is the meat of the method we want - parse 
#take unformatted_email _addresses and delete the commas in between email addresses.
#perform .split method on a string and set each word - email address- as an element of an array
#take out any duplicates.    
    def parse
        unformatted_email_addresses.delete(',').split.uniq 
    end

end 
=end