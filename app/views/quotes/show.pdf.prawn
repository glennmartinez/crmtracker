pdf.text "Name: #{@quote.name}", :size => 25, :style => :bold

@quote.labouritems.each do |item|
 pdf.text item.description
 pdf.text item.status
 pdf.text item.contractor

end