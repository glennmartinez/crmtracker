# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/



jQuery ->
 
 	$('#quote_labouritems_attributes_0_hours').focusout =>
	 	labourhours = document.getElementById('quote_labouritems_attributes_0_hours').value;
	 	
	 	contractor_rate = document.getElementById('quote_labouritems_attributes_0_contractor_rate').value;

	 	itemtotal = Number(labourhours) * Number(contractor_rate);

	 	document.getElementById('quote_labouritems_attributes_0_total').value = itemtotal;

jQuery ->
 
 	$('#quote_labouritems_attributes_0_contractor_name').focusout =>
	 	labourhours = document.getElementById('quote_labouritems_attributes_0_hours').value;
	 	
	 	contractor_rate = document.getElementById('quote_labouritems_attributes_0_contractor_rate').value;

	 	itemtotal = Number(labourhours) * Number(contractor_rate);

	 	document.getElementById('quote_labouritems_attributes_0_total').value = itemtotal;


# This function calculates the markup % against the total.
jQuery ->
 
 	$('#quote_labouritems_attributes_0_muppercent').focusout =>
	 	labouritemtotal = document.getElementById('quote_labouritems_attributes_0_total').value;
	 	labourhours = document.getElementById('quote_labouritems_attributes_0_hours').value;
	 	markuppercent = document.getElementById('quote_labouritems_attributes_0_muppercent').value;
	 	markuppercentvalue = Number(markuppercent) / 100;
	 	markuptotal = Number(labouritemtotal) * markuppercentvalue;
	 	itemtotal = Number(labouritemtotal) + markuptotal
	 	markuphour = Number(markuptotal) / labourhours

	 	document.getElementById('quote_labouritems_attributes_0_muptotal').value = markuptotal;
	 	document.getElementById('quote_labouritems_attributes_0_total').value = itemtotal;
	 	document.getElementById('quote_labouritems_attributes_0_muphourrate').value = markuphour;


