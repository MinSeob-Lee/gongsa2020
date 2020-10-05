$(function(){

		
		$('.mate-search-page').click(function(){
			console.log($(this).data('page'));
			$('#pageNo').val($(this).data('page'));
			$('#mate-search-form').submit();
		});

		$('#mate-search-page-before').click(function(){
			
			var pageNo = $('#pageNo').val();
			$('#pageNo').val(Number(pageNo) - 1);
			$('#mate-search-form').submit();
		})
		
		$('#mate-search-page-after').click(function(){
			
			var pageNo = $('#pageNo').val();
			$('#pageNo').val(Number(pageNo) + 1);
			$('#mate-search-form').submit();
			
		})
		
		
		
		$('#isFull').click(function(){
			if($('#isFull').is(':checked')){
				$('#isFull').val('Y');
			} else {
				$('#isFull').val('N');
			}
		})
		$('#isEmpty').click(function(){
			if($('#isEmpty').is(':checked')){
				$('#isEmpty').val('Y');
			} else {
				$('#isEmpty').val('N');
			}
		})
	
		//mate add function
		$('.add-mate-btn').click(function(){
			console.log($(this));
			console.log($(this).data('mnum'), $(this).data('pid'));
			var mnum = $(this).data('mnum');
			var pid = $(this).data('pid');
			
			$.ajax({
				type:'POST',
				url:'/mate/beforeAddMate.do',
				data:{
					"mnum":mnum,
					"pid":pid
				},
				success:function(data){
					console.log(data);
					var type = data.type;
					var message = data.message;
					if(type == 0){
						alert(message);
						return;
					} 
					var con = confirm("정말 해당 방에 참여하시겠습니까?");
					if(con){
						console.log(1);
						location.href = '/mate/addMateMember.do?pid='+pid+'&mnum='+mnum;
					}
					
				}
			
			})
 
		});
		//좌석 미리보기 모달
		$('.seat-preview-btn').click(function(){
			$('#seat-preview-modal').modal('show');
			
			$('#R-seats1').empty();
			$('#R-seats2').empty();
			$('#S-seats1').empty();
			$('#S-seats2').empty();
			$('#S-seats3').empty();
			$('#S-seats4').empty();
			$('#A-seats1').empty();
			$('#A-seats2').empty();
			$('#A-seats3').empty();
			$('#A-seats4').empty();
			
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
							seat.style.width='20px'
							seat.style.height='20px'
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
							
							seat.setAttribute('data-seatblock', seatClass)
							seat.setAttribute('data-seatrow', i);
							seat.setAttribute('data-seatcol', j);
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
		
				$rseatsBtn1.addClass('bg-secondary').addClass('R-class-seat');
				$rseatsBtn2.addClass('bg-secondary').addClass('R-class-seat');
				$sseatsBtn1.addClass('bg-secondary').addClass('S-class-seat');
				$sseatsBtn2.addClass('bg-secondary').addClass('S-class-seat');
				$sseatsBtn3.addClass('bg-secondary').addClass('S-class-seat');
				$sseatsBtn4.addClass('bg-secondary').addClass('S-class-seat');
				$aseatsBtn1.addClass('bg-secondary').addClass('A-class-seat');
				$aseatsBtn2.addClass('bg-secondary').addClass('A-class-seat');
				$aseatsBtn3.addClass('bg-secondary').addClass('A-class-seat');
				$aseatsBtn4.addClass('bg-secondary').addClass('A-class-seat');
		
				//버튼 이벤트
					var pId = $('#performance-id').val();
					var mateId = $(this).data('mate');
					$.ajax({
						url:'/mate/seatPreview.do',
						Type:'POST',
						contentType:"application/json",
						data:{
							"performanceId":pId,
							"mateId":mateId
						},
						success:function(result){
							
							//seats
							var seatsArray = result.seats;
					        var aSeatArray = new Array();
					        var bSeatArray = new Array();
					        var cSeatArray = new Array();
					        var dSeatArray = new Array();
					        var eSeatArray = new Array();
					        var fSeatArray = new Array();
					        var gSeatArray = new Array();
					        var hSeatArray = new Array();
					        var iSeatArray = new Array();
					        var jSeatArray = new Array();
					        var rSeatRate = new Array();
					        var sSeatRate = new Array();
					        var aSeatRate = new Array();
					        
							for(var i in seatsArray){
					        	var seatBlock = seatsArray[i].seatBlock;
					        	var seatRow = seatsArray[i].seatRow;
					        	var seatCol = seatsArray[i].seatCol;
					        	var seatRate = seatsArray[i].seatRate;
					        	var groupSize = seatsArray[i].groupSize;
					        	var mateNo = seatsArray[i].mateNo;
					        	var catId = seatsArray[i].categoryId;
					        	var seatStatus = seatsArray[i].seatStatus;
					        	
					        	if(seatBlock == 'A'){
					        		aSeatArray.push(seatsArray[i]);
					        	} else if (seatBlock == 'B'){
					        		bSeatArray.push(seatsArray[i]);
					        	} else if (seatBlock == 'C'){
					        		cSeatArray.push(seatsArray[i]);
					        	} else if (seatBlock == 'D'){
					        		dSeatArray.push(seatsArray[i]);
					        	} else if (seatBlock == 'E'){
					        		eSeatArray.push(seatsArray[i]);
					        	} else if (seatBlock == 'F'){
					        		fSeatArray.push(seatsArray[i]);
					        	} else if (seatBlock == 'G'){
					        		gSeatArray.push(seatsArray[i]);
					        	} else if (seatBlock == 'H'){
					        		hSeatArray.push(seatsArray[i]);
					        	} else if (seatBlock == 'I'){
					        		iSeatArray.push(seatsArray[i]);
					        	} else {
					        		jSeatArray.push(seatsArray[i]);
					        	}
					        	if(seatRate == 'R'){
					        		rSeatRate.push(seatsArray)
					        	} else if (seatRate == 'S'){
					        		sSeatRate.push(seatsArray)
					        	} else if (seatRate == 'A')
					        		aSeatRate.push(seatsArray)
					        }
							seatSetFunction(aSeatArray, $rseatsBtn1);
							seatSetFunction(bSeatArray, $rseatsBtn2);
							seatSetFunction(cSeatArray, $sseatsBtn1);
							seatSetFunction(dSeatArray, $sseatsBtn2);
							seatSetFunction(eSeatArray, $sseatsBtn3);
							seatSetFunction(fSeatArray, $sseatsBtn4);
							seatSetFunction(gSeatArray, $aseatsBtn1);
							seatSetFunction(hSeatArray, $aseatsBtn2);
							seatSetFunction(iSeatArray, $aseatsBtn3);
							seatSetFunction(jSeatArray, $aseatsBtn4);
					       
							//해당 좌석만 표시
							var mateSeats = result.mateSeats;
							var targetMate = mateSeats[0].mateGroup;
							var $btnArray = $('button.seatBtn');
							for(var i = 0; i < $btnArray.length; i++){
								var mateData = $($btnArray[i]).data('mate');
								if(targetMate == mateData){
									$($btnArray[i]).removeClass('bg-secondary').addClass('bg-primary');
								}
								
							}
							
							
						}
						
				
			})
		})
			
			
			
			
			
			
			
			
			
})
	function seatSetFunction(array, targetBtnArray){
		for(var i = 0; i < array.length; i++ ){
			$(targetBtnArray[i]).attr('data-groupsize', array[i].groupSize)
			    		  .attr('data-mate', array[i].mateNo)
			    		  .attr('data-category', array[i].catId)
			    		  .attr('data-seatstatus', array[i].seatStatus);
		}
	}
	