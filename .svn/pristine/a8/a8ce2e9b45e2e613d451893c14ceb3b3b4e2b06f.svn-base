$(function(){
	
	$('#performance-total-seat').val(480);
	$('#R-class').val(96);
	$('#S-class').val(192);
	$('#A-class').val(192);
	
	
	//버튼 이벤트
	var rseats1 = $('#R-seats1');
	var rseats2 = $('#R-seats2');
	var sseats1 = $('#S-seats1');
	var sseats2 = $('#S-seats2');
	var sseats3 = $('#S-seats3');
	var sseats4 = $('#S-seats4');
	var aseats1 = $('#A-seats1');
	var aseats2 = $('#A-seats2');
	var aseats3 = $('#A-seats3');
	var aseats4 = $('#A-seats4');
	
	var possibleSeats = ['available', 'reserved'];
	
	var randomSeat = () => possibleSeats[Math.floor(Math.random() * possibleSeats.length)];
	
	createSeat(rseats1);
	createSeat(rseats2);
	createSeat(sseats1);
	createSeat(sseats2);
	createSeat(sseats3);
	createSeat(sseats4);
	createSeat(aseats1);
	createSeat(aseats2);
	createSeat(aseats3);
	createSeat(aseats4);
	
	function createSeat($div){
		
		for (var i=1;i<5;i++) {
			for (var j=1;j<13;j++) {
				var seat = document.createElement('button');
				seat.style.width='15px'
				seat.style.height='15px'
				seat.style.padding='1px'
				seat.style.margin='0'
							
				seat.setAttribute("class"," btn btn-sm btn-outline-secondary seatBtn")
				var seatClass = '';

				//Seat 구역번호 지정
				if($div.hasClass('A')){
					seatClass = 'A';
				} else if ($div.hasClass('B')){
					seatClass = 'B';
				} else if ($div.hasClass('C')){
					seatClass = 'C';
				} else if ($div.hasClass('D')){
					seatClass = 'D';
				} else if ($div.hasClass('E')){
					seatClass = 'E';
				} else if ($div.hasClass('F')){
					seatClass = 'F';
				} else if ($div.hasClass('G')){
					seatClass = 'G';
				} else if ($div.hasClass('H')){
					seatClass = 'H';
				} else if ($div.hasClass('I')){
					seatClass = 'I';
				} else if ($div.hasClass('J')){
					seatClass = 'J';
				}
				
				var seatNo = seatClass + j
				seat.setAttribute('data-seatrow', i);
				seat.setAttribute('data-seatNo', seatNo);
			//	var possibleSeat = randomSeat();
			//	seat.innerHTML = `
			//	    <svg class="${possibleSeat}" width="5" height="5">
			//	      <use href="#${possibleSeat}"></use>
			//	    </svg>
			//	    `;	
				$div.append(seat);
			}
		}
	}

	
	var $rseatsBtn1 = $('#R-seats1 button')
	var $rseatsBtn2 = $('#R-seats2 button');
	var $sseatsBtn1 = $('#S-seats1 button');
	var $sseatsBtn2 = $('#S-seats2 button');
	var $sseatsBtn3 = $('#S-seats3 button');
	var $sseatsBtn4 = $('#S-seats4 button');
	var $aseatsBtn1 = $('#A-seats1 button');
	var $aseatsBtn2 = $('#A-seats2 button');
	var $aseatsBtn3 = $('#A-seats3 button');
	var $aseatsBtn4 = $('#A-seats4 button');

	$rseatsBtn1.addClass('bg-primary').addClass('R-class-seat');
	$rseatsBtn2.addClass('bg-primary').addClass('R-class-seat');
	$sseatsBtn1.addClass('bg-warning').addClass('S-class-seat');
	$sseatsBtn2.addClass('bg-warning').addClass('S-class-seat');
	$sseatsBtn3.addClass('bg-warning').addClass('S-class-seat');
	$sseatsBtn4.addClass('bg-warning').addClass('S-class-seat');
	$aseatsBtn1.addClass('bg-danger').addClass('A-class-seat');
	$aseatsBtn2.addClass('bg-danger').addClass('A-class-seat');
	$aseatsBtn3.addClass('bg-danger').addClass('A-class-seat');
	$aseatsBtn4.addClass('bg-danger').addClass('A-class-seat');

	//버튼 클릭시 바뀌는 것
	$('.seatBtn').click(function(){
		changeBtnClass($(this));
	})
	
	
	//드래그 & 버튼 클래스 변경
	$( ".selectable" ).selectable();
	
	$('#R-change-btn').click(function(){
		$('button.ui-selected')
			.removeClass('bg-primary')
			.removeClass('bg-warning')
			.removeClass('bg-secondary')
			.removeClass('bg-danger')
			.removeClass('S-class-seat')
			.removeClass('R-class-seat')
			.removeClass('A-class-seat')
			.removeClass('no-class-seat')
			.addClass('bg-primary')
			.addClass('R-class-seat')
		changeSeat();
	})
	$('#S-change-btn').click(function(){
		$('button.ui-selected')
			.removeClass('bg-primary')
			.removeClass('bg-warning')
			.removeClass('bg-secondary')
			.removeClass('bg-danger')
			.removeClass('S-class-seat')
			.removeClass('R-class-seat')
			.removeClass('A-class-seat')
			.removeClass('no-class-seat')
			.addClass('bg-warning')
		 	.addClass('S-class-seat');
		changeSeat();
	})
	$('#A-change-btn').click(function(){
		$('button.ui-selected')
			.removeClass('bg-primary')
			.removeClass('bg-warning')
			.removeClass('bg-secondary')
			.removeClass('bg-danger')
			.removeClass('S-class-seat')
			.removeClass('R-class-seat')
			.removeClass('A-class-seat')
			.removeClass('no-class-seat')
			.addClass('bg-danger')
			.addClass('A-class-seat');
		changeSeat();
	})
	$('#N-change-btn').click(function(){
		$('button.ui-selected')
			.removeClass('bg-primary')
			.removeClass('bg-warning')
			.removeClass('bg-secondary')
			.removeClass('bg-danger')
			.removeClass('S-class-seat')
			.removeClass('R-class-seat')
			.removeClass('A-class-seat')
			.removeClass('no-class-seat')
			.addClass('bg-secondary')
			.addClass('no-class-seat');
		changeSeat();
	})
	
	
	
	
	$.ajax({
		url:'/manager/mateManagerJson.do',
		Type:'POST',
		contentType:"application/json",
		data:{
			
		},
		success:function(result){
			console.log(1);
			console.log('result',result);
			var performanceList = result.performanceList;
			console.log('performanceList',performanceList)
			var pTitle = new Array();
			for(var i in performanceList){
				pTitle[i] = performanceList[i].title;
			}
			 
			$( "#performance-search" ).autocomplete({
				source: pTitle
			});
		}
		
		
	})
	
	var $pImg = $('#pImg');
	var $pName = $('#pName');
	var $pCat = $('#pCat');
	var $pAthu = $('#pAtho');
	var $pStartDate = $('#pStartDate');
	var $pEndDate = $('#pEndDate');
	var $pRunningTime = $('#pRunningTime');
	var $pStartTime = $("#pStartTime" )
	var $pEndTime = $('#pEndTime');
	var $pShowTime = $('#pShowTime');
	
	$('#p-search-btn').click(function(){
		var searchVal = $('#performance-search').val();
		console.log(searchVal);
		
		$.ajax({
			url:'/manager/mateManagerJson.do',
			Type:'POST',
			contentType:"application/json",
			data:{
				
			},
			success:function(result){
				var performanceList = result.performanceList;
				for(var i in performanceList){
					var list = performanceList[i];
					var pTitleArray = list.title;
					
					if(pTitleArray == searchVal){
						console.log(list);
						
						var id = list.performanceId;
						var title = list.title;
						var cat = list.category;
						var startDate = list.startDate;
						var endDate = list.endDate;
						var rating = list.rating;
						var imagePath = list.imagePath;
						var runningTime = list.runningTime;
						$pImg.attr('src',imagePath);
						$pName.text(title);
						$pCat.text(cat);
						$pAthu.text(rating);
						
						startDate = $.datepicker.formatDate('yy-mm-dd',new Date(startDate));
						endDate = $.datepicker.formatDate('yy-mm-dd',new Date(endDate));
						
						$pStartDate.text(startDate);
						
						$pEndDate.text(endDate);
						console.log(runningTime);
						$pRunningTime.text(runningTime);
						
					}
				}
			}
		})
		
	})
	
	$pStartTime.on('click',function(){
		if($('#pRunningTime').text() == ''){
			alert('공연을 먼저 선택해주세요');
			$('#performance-search').focus();
			
			return;
		}
	})
	$pStartTime.timepicker({
		timeFormat: 'HH:mm',
		change:function(time){
				
			var element = $(this), text;
            var timepicker = element.timepicker();
            var startTimeVal = timeToSeconds(timepicker.format(time));
            var runningTimeVal = timeToSeconds($pRunningTime.text());
            var endTimeVal = startTimeVal + runningTimeVal;
            
            $pEndTime.val(secondsToTime(endTimeVal));
            
		}
	});
	
	
	//공연 모달 리스트 컨텐츠
	var $tbody = $('#performance-list-content tbody');
	var $tr = $('#performance-list-content tbody tr');
	$('#performance-list-modal-btn').click(function(){
		$.ajax({
			url:'/manager/mateManagerJson.do',
			Type:'POST',
			contentType:"application/json",
			data:{
				
			},
			success:function(result){
				var performanceList = result.performanceList;
				console.log('performanceList2',performanceList)
				for(var i in performanceList){
					var pNo = performanceList[i].id;
					var pTitle = performanceList[i].title;
					var pCat = performanceList[i].category;
					var pStart = performanceList[i].startDate;
					var pEnd = performanceList[i].endDate;
					var pRate = performanceList[i].rating;
					var pTime = performanceList[i].runningTime;
					var pProvider = performanceList[i].provider;
					var pHall = performanceList[i].hallName;
					var pGenreArray = performanceList[i].genres;
					var pGenre = '';
					for(var j in pGenreArray){
						pGenre += pGenreArray[j] + '/'
					}
					
					
					var rows = '<tr>';
					rows += '<td><input type="radio" name="performance-radio" data-title='+pTitle+' /></td>'
					rows += '<td>'+pNo+'</td>'
					rows += '<td>'+pTitle+'</td>'
					rows += '<td>'+pCat+'</td>' 
					rows += '<td>'+pStart+'</td>'
					rows += '<td>'+pEnd+'</td>'
					rows += '<td>'+pRate+'</td>'
					rows += '<td>'+pTime+'</td>'	
					rows += '<td>'+pHall+'</td>'
					rows += '<td>'+pGenre+'</td></tr>'
					
					$tbody.append(rows);
					
				}
			}
		})
	});
	$('#list-content-choose-btn').click(function(){
		var title = $('input[name=performance-radio]:checked').data('title');
		$('#performance-search').val(title);
		$('#performance-list-modal').modal('hide');
	})
	
	
	
	//메이트 생성
	$('#auto-mate-selected-btn').click(function(){
		$('button.seatBtn').text('');
		var AbtnArrayAll = $('button.seatBtn')
		for(var i = 0; i < AbtnArrayAll.length; i++){
			AbtnArrayAll[i].removeAttribute('data-mate');
		}
		
		var AbtnArray = new Array();
		AbtnArray = $('button.seatBtn:not(.no-class-seat)')
		//AbtnArray = $('button.seatBtn');
		var index = Number($('#mate-select-val').val());
		var j = 1;
		
		if(index == 2){
			for(var i = index-1; i < AbtnArray.length; i+= index ){
				
				AbtnArray[i-1].setAttribute('data-mate',j)
				AbtnArray[i].setAttribute('data-mate',j)
				$('[data-mate='+j+']').addClass('text-dark').addClass('font-weight-bold').text(j);
				j++;
			}
			
		} else if (index == 3){
			
			for(var i = index-1; i < AbtnArray.length; i+= index ){
				
				AbtnArray[i-2].setAttribute('data-mate',j)
				AbtnArray[i-1].setAttribute('data-mate',j)
				AbtnArray[i].setAttribute('data-mate',j)
				$('[data-mate='+j+']').addClass('text-dark').addClass('font-weight-bold').text(j);
				j++;
			}
			
		} else if (index == 4){
			for(var i = index-1; i < AbtnArray.length; i+= index ){
				AbtnArray[i-3].setAttribute('data-mate',j)
				AbtnArray[i-2].setAttribute('data-mate',j)
				AbtnArray[i-1].setAttribute('data-mate',j)
				AbtnArray[i].setAttribute('data-mate',j)
				$('[data-mate='+j+']').addClass('text-dark').addClass('font-weight-bold').text(j);
				j++;
			}

		}
		if($('button.seatBtn:not(.no-class-seat):not([data-mate])').length > 0){
			var array = new Array();
			array = $('button.seatBtn:not(.no-class-seat):not([data-mate])');
			for(var i = 0; i < array.length; i++){
				
				array[i].setAttribute('data-mate',j)
				$('[data-mate='+j+']').addClass('text-dark').addClass('font-weight-bold').text(j);
			}
		}
		$('#mate-room-cnt').val(j-1);
		if($('button.seatBtn:not(.no-class-seat):not([data-mate])').length > 0){
			console.log(11234);
		}
	})

	
	
	
	
	
	
	
	
	
	
})
	function timeToSeconds(time) {
    	time = time.substring(0,5).split(':');
    	return time[0] * 3600 + time[1] * 60;
	}
	function secondsToTime(seconds){
		var hour, min

		hour = parseInt(seconds/3600);
		min = parseInt((seconds%3600)/60);
		sec = seconds%60;

		if (hour.toString().length==1) hour = "0" + hour;
		if (min.toString().length==1) min = "0" + min;

		return hour + ":" + min;
	}

	function changeSeat(){
		var Rseat = $('.R-class-seat').length;
		var Sseat = $('.S-class-seat').length;
		var Aseat = $('.A-class-seat').length;
		var Nseat = $('.no-class-seat').length;
		$('#R-class').val(Rseat);
		$('#S-class').val(Sseat);
		$('#A-class').val(Aseat);
		$('#no-class').val(Nseat);
	}
	

	function changeBtnClass($this){
		
	
		if($this.hasClass('bg-primary')){
			$this.removeClass('bg-primary').removeClass('R-class-seat').addClass('bg-warning').addClass('S-class-seat');
			changeSeat();
			return;
		}
		if($this.hasClass('bg-warning')){
			$this.removeClass('bg-warning').removeClass('S-class-seat').addClass('bg-danger').addClass('A-class-seat');
			changeSeat();
			return;
		}
		if($this.hasClass('bg-danger')){
			$this.removeClass('bg-danger').removeClass('A-class-seat').addClass('bg-secondary').addClass('no-class-seat');
			changeSeat();
			return;
		}
		if($this.hasClass('bg-secondary')){
			$this.removeClass('bg-secondary').removeClass('no-class-seat').addClass('bg-primary').addClass('R-class-seat');
			changeSeat();
			return;
		}
		
	}