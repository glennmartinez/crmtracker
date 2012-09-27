# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


jQuery ->

	$('#quote_labourtotal').focusout =>
		labourtotal = document.getElementById('quote_labourtotal').value;
		changeit = Number(labourtotal)
		materialtotal = document.getElementById('quote_materialtotal').value;

		isnumber = isNaN(changeit)
		if isnumber then alert('this is not a number')	else subtotal = Number(labourtotal) + Number(materialtotal)
		
	 



		document.getElementById('quote_subtotal').value= subtotal;


	$('#quote_materialtotal').focusout =>
		labourtotal = document.getElementById('quote_labourtotal').value;

		materialTotal = document.getElementById('quote_materialtotal').value;

		subtotal = Number(labourtotal) + Number(materialTotal);

		document.getElementById('quote_subtotal').value = subtotal;
 


jQuery ->
 
 	$('#quote_labouritems_attributes_0_hours').focusout =>
	 	labourhours = document.getElementById('quote_labouritems_attributes_0_hours').value;
	 	
	 	contractor_rate = document.getElementById('quote_labouritems_attributes_0_contractor_rate').value;

	 	itemtotal = Number(labourhours) * Number(contractor_rate);

	 	document.getElementById('quote_labouritems_attributes_0_total').value = itemtotal;





