Given /^there is a client called "([^\"]*)"$/ do |firstname|
         @client = Factory(:client, :firstname => firstname)
end