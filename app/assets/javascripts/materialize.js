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
var k = $('.card').length;

  $('#show_img').click(function(event){
  	event.preventDefault();
  	// $('.card')[0].css('display','inline');
  	// alert (i.value);
  	// console.log(card_array);
    // console.log($('.quest')[i]); 
     console.log($('.card').length); 
	if (i < $('.card').length){
		if (card_array.length == 0){
			card_array.push($('.quest')[i]);
			card_array[i].setAttribute('class', 'active');
  		}
  		else{

  			var j = i-1;
  			card_array[j].setAttribute('class', 'quest');
  			card_array.splice(0,0);
  			card_array.push($('.quest')[i]);
  			card_array[i].setAttribute('class', 'active');
  		}
		i++ ;
		
		
		// console.log("i:" + i);
		// if (i != 0){
		// 	var j = i - 1;
		// 	card_array[j].setAttribute('class', 'quest');
		// 	console.log("j: " + j);
		// }
		
		// console.log(card_array);
		console.log("I:"+i);
		// console.log(k);
		// console.log(j);

	}else{
		var j = i-1;
		alert("a");
		card_array[j].setAttribute('class', 'quest');
  		$('.message').css('display','block');
	} 		
	
	
// console.log(i);
	  	 	
  });

});
