$(function() {
  // Sidebar toggle behavior
  $('#sidebarCollapse').on('click', function() {
    $('#sidebar, #content').toggleClass('active');
  });
	$('#sidenav-icon').click(function(){
		$(this).toggleClass('open');
	});
	$(window).scroll(function(){
		
		if($(window).scrollTop() > 10){
			$('#navbar-top').removeClass('transparent');
			$('#navbar-top i, #navbar-top a, #navbar-top span').removeClass('custom-color').addClass('text-white');
			$('#sidenav-icon span').css('background-color','#fff');
			$('#search-box').css('border-color','#fff');
		} else {
			$('#navbar-top').addClass('transparent');
			$('#navbar-top i, #navbar-top a, #navbar-top span').removeClass('text-white').addClass('custom-color');
			$('#sidenav-icon span').css('background-color','#FFAF0A');
			$('#search-box').css('border-color','#FFAF0A');
		
		}
	})
	
});
