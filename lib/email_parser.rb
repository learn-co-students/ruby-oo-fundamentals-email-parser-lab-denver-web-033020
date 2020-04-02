require 'pp'

# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailAddressParser

    attr_accessor :emailList
    #initialize email list
    def initialize(emails)
        @emailList = emails
    end
    
    #parse email list 
    def parse
        emailList.split(/, | /).uniq
    end


end

# how do you know when to use @emails vs just email? @ is used to differentiate (for Ruby) that the variable in the class is different than an incoming arguement of the same name 
# how do you see what <attr_reader :emails> is doing using pry?
#clarification on what is happening when I write: emails.split(/, | /).uniq