$( document ).on('turbolinks:load', function(){
  $('.datepicker').pickadate({
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 15 // Creates a dropdown of 15 years to control year
  });
  $('.slider').slider({
  	indicators: false

  });
  $(".button-collapse").sideNav();

var card_array = [];
var i = 0;

  $('#show_img').click(function(event){
  	event.preventDefault();
  	// console.log($('.card').length);
  	// alert (i.value);
  	// console.log($('.card')[0]); 
	  	
	card_array.push($('.card')[i]);
	console.log(card_array);
	console.log("active");
	  		
	i++;
console.log(i);
	  	 	
  });

});
