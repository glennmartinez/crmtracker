Given /^that client has a project:$/ do |table|
	table.hashes.each do |attributes|
      @client.projects.create!(attributes)
    end  
end


