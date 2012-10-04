

jquery ->

	$("quote_labouritems_attributes_0_contractor_name").attr("data-update-elements", function(data) { 
	    data = $.parseJSON(data);

	    data.id = "new value";

	    return JSON.stringify(data);

	});
