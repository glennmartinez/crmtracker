 


 var LabourItems = {
   rate: null,
   hours: null,
   total: null,
   init: function(object) {
      this.rate = parseInt($(object).children('.rate').first().val(), 10);
      // var rate = $(object).children('.rate').first();
      this.hours =parseInt($(object).children('.hours').first().val(), 10);
      this.total = this.rate * this.hours;
      this.updateTotal(object);
   },
   updateTotal: function(object) {
      $(object).children('.total').first().val(this.total || 0);
   }
}

//reactTochange for those inputs that you want to observe
$('.labouritems input').on("keyup", function() {
   $('.labouritems').each( function(key,value){
      LabourItems.init(this);
   });
});
