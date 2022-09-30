=begin

First the class will need to initalize with a new empty hash to 
contain the passwords

add method will take two strings and add them to the initialized
hash with the service as the key and pw as the value

password_for method will retrive a value from the hash by giving an
argument that matches a key

services method will list all keys contained within the hash

add method will permanently change the hash

password_for and services will not change the state of the hash, just
read from it and output to the terminal

=end

class PasswordManager

    def initialize
        @my_hash = Hash.new
    end

    def valid?(password)
        return (password.length >= 8) && (password.match?(/[!@$%&]/))
    end

    def add(service, password)
        @my_hash[service] = password if valid?(password)
    end

    def password_for(service)
        @my_hash[service]
    end

    def services
        @my_hash.keys
    end

end



#password validator needed

