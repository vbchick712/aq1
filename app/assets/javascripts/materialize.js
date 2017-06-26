$( document ).on('turbolinks:load', function(){
  $('.datepicker').pickadate({
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 15 // Creates a dropdown of 15 years to control year
  });
  $('.slider').slider({
  	indicators: false

  });
  $(".button-collapse").sideNav();
  $('#modal_invite').modal();
  $('#modal_skip').modal();
  var card_array = [];
  var clue_array =[];
  var i = 0;
  var k = $('.card').length;
// Task Show each event
  $('#show_img').click(function(event){
    event.preventDefault();
    $('.initial_box').css('display', 'none');
    $('#show_img').text('Next Task');
    $('#show_img').css('display', 'none');
    $('.check_answer').css('display', 'block');
    var task_id = "answer" + $('#id')[0].value;

  	if (i < $('.card').length){
  	  if (card_array.length == 0){
  	    card_array.push($('.quest')[i]);
  		  card_array[i].setAttribute('class', 'active');
    	  }else{
    		var j = i-1;
    		card_array[j].setAttribute('class', 'quest');
    		card_array.splice(0,0);
    		card_array.push($('.quest')[i]);
    		card_array[i].setAttribute('class', 'active');
    	}
  	  i++ ;
  	}else{
  	  var j = i-1;
  	  card_array[j].setAttribute('class', 'quest');
    	$('.message').css('display','block');
    	// $('#show_img').attr('onClick', "document.location.href='/quests'");
    	$('.home1234').css('display', 'block');
    	$('#show_img').css('display', 'none');	  
  	};		
  });
    // the "href" attribute of the modal trigger must specify the modal ID that wants to be triggered
    $('.check_answer').click(function(event){
      event.preventDefault();
      var $this = $(this);

      if ( $this.closest('.card-content').find('#answer').val() === $this.closest('.card-content').find('#taskanswer').val() ){
        $('.wrong').css('display', 'none');
        $('.wrong').css('display', 'none');
        $('.right1').css('display', 'block');
        $('.right1').css('display', 'block');
        $('#modal1').modal();
        $('.check_answer').css('display', 'none');
        $('#show_img').css('display', 'block');
        $('.help').fadeOut('slow');
       }else{
        $('.help').fadeIn('slow');
        $('.right1').css('display', 'none');
        $('.right1').css('display', 'none');
        $('.wrong').css('display', 'block');
        $('.wrong').css('display', 'block');
        $('#modal1').modal();
       }

     });
});

