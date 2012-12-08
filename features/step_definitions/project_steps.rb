Given /^that client has a project:$/ do |table|
	def current_user
		User.find_by_email('testing@man.net')
		
	end
	table.hashes.each do |attributes|
      @project =@client.projects.create!(attributes)
      @project.user = current_user
    end  
end


