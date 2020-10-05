$(function(){
	
	var pid = $('#pid').val();
	var mnum = $('#mnum').val();
	
	
	$.ajax({
		type:"POST",
		url:"/mate/matedetail.do",
		data:{
			"pid":pid,
			"mnum":mnum
		},
		success:function(data){
			var sessionId = data.sessionUserId;
			
			//공연정보
			var mate = data.mate;
			var performance = data.mate.performance;
			var schedule = data.mate.performance.schedule;
			var hallInfo = data.mate.performance.schedule[0].hallinfo;
			var mateCat = data.mateCategory;
			
			//mateTag정보
			var mateTags = data.mate.mateTags;
			if(!mateTags){
				
				var mateTagName = '';
				for(var i in mateTags){
					mateTagName += mateTags[i].tagName;
					if(i < mateTags.length - 1){
						mateTagName += ', ';
					}
				}
			}
			console.log(mateTagName);
			
			
			var mateCatId = mateCat.id;
			var seatRate = mate.seatRate;
			var pStartDate = performance.startDate;
			var pEndDate = performance.endDate;
			var pTitle = performance.title;
			var pImage = performance.imagePath;
			var pRating = performance.rating;
			var pCat = performance.category;
			var pPlace = hallInfo.name;
			var pShowDate = schedule[0].showDate;
			var pShowTime = schedule[0].showTime;
			var pShowNumber = schedule[0].showNumber;

			
			//공연 정보 화면 출력
			$('#seatRate').text(seatRate);
			$('#pStartDate').text($.datepicker.formatDate('yy-mm-dd',new Date(pStartDate)));
			$('#pEndDate').text($.datepicker.formatDate('yy-mm-dd',new Date(pEndDate)));
			$('#pTitle').text(pTitle);
			$('#pImage').css({"background-image":"url("+pImage+")"});
			$('#pRating').text(pRating);
			$('#pCat').text(pCat);
			$('#pShowDate').text($.datepicker.formatDate('mm월dd일',new Date(pShowDate)));
			
			$('#pShowTime').text(pShowTime);
			$('#pShowNumber').text(pShowNumber);

			//mate Category select Function
			$('#mCat').val(mateCatId).prop("selected",true);
			//태그 추가
			$('#mTag').text(mateTagName);
			$('#tag-update-input-box').val(mateTagName);
			
			//timeline
			var timeline = data.timeline;
			var totalLength = timeline.length;
			$('#totalLength').val(totalLength);
			var type = '';
			chatList(timeline, sessionId);
			$('#chat').scrollTop($('#chat')[0].scrollHeight);

		},
		error:function(){
			alert('잘못된 접근입니다.');
			location.href='/home.do';
		}
		
	})
	
	// chat 실시간 감시
	setInterval(function(){
		
		$.ajax({
			url:"/mate/timelineInterval.do",
			type:"POST",
			data:{
				"pid":pid,
				"mnum":mnum
			},
			success:function(result){
				var sessionId = result.sessionId;
				var data = result.service;
				
				var count = data.count;
				var timeline = data.time;
				if($('#totalLength').val() < count){
					var content = timeline.content;
					var userId = timeline.user.id;
					var regDate = timeline.regDate;
					
					addChat(userId, content, regDate, sessionId);
				}
				$('#totalLength').val(count);
			}
		})
		$('#chat').scrollTop($('#chat')[0].scrollHeight);
	},3000);
	
	//chatsubmitFunction
	$('#chat-submit-btn').click(function(){
		var chatContent = $('#chat-content-box').val();
		if(chatContent == ''){
			return;
		}
		$('#chat-content-box').val('');
		
		$.ajax({
			type:"POST",
			url:"/mate/timeline.do",
			dataType:"json",
			data:{
				"content":chatContent,
				"mnum":mnum
			},
			success:function(data){
				console.log(data);
			}
		})
	})
	
		//hashtag btn Function
		$('#card-x-btn').click(function() {
			$('#mate-override-card').hide();
			$('#mate-card-left').show();
		});
		$('#mate-card-left').click(function() {
			$('#mate-override-card').show();
			$('#mate-card-left').hide();
		});
		$('#tag-update-input-box').keyup(function(key){
			if(key.keyCode == '51'){
				$(this).css('color','blue');
			}
			if(key.keyCode == '188'){
				$(this).val($(this).val()+' ');
			}

		})
		
		//hashTagFunction
		$('#tag-update-btn').click(function(){
			console.log($('#tag-update-input-box').val());
			
			var tagArray = $('#tag-update-input-box').val().replace(/\s/gi,'').replace(/\"/g, "").split(',');
			console.log(tagArray);
			var jsonArray = JSON.stringify(tagArray);
			$.ajax({
				type:"POST",
				url:"/mate/addTag.do",
				dataType:"json",
				data:{
					"mnum":mnum,
					"tags":jsonArray
				},
				success:function(data){
					console.log('receiveData',data);
					var tagName = '';
					for(var i in data){
						tagName += data[i].tagName;
						if(i < data.length - 1){
							tagName += ', ';
						}
					}
					
					$('#mate-plus-hastag-box').hide();
					$('#mTag').text(tagName);
					
				},
				error:function(){
					alert('로그인이 필요합니다.!');
				}
				
			})
		})
		
		//hashTagBtnFunction
		$('#mate-plus-hastag').click(function(){
			
			var $icon = $(this).find('i');
			var isPlus = $(this).find('i').hasClass('fas fa-plus');
		
			
			
			if(isPlus){
				$icon.removeClass('fas fa-plus').addClass('fas fa-minus');
			} else {
				$icon.removeClass('fas fa-minus').addClass('fas fa-plus');
			}
			$('#mate-plus-hastag-box').toggle();
		});
		
		//mateRoomOutFunction
		$('#mate-out-btn').click(function(){
			confirm('정말로 해당 방에서 나가겠습니까?')
		})
	
		
		
		
		$('#cat-change-btn').click(function(){
			var mCatVal = $('#mCat').val();
			$.ajax({
				url:"/mate/updateCat.do",
				type:"Get",
				data:{
					"mnum":mnum,
					"mcat":mCatVal
				},
				success:function(data){
					var mateCatId = data;
					console.log(data);
					$('#mCat').val(mateCatId).prop("selected",true);
					alert('변경이 완료되었습니다.');
				},
				error:function(){
					alert('로그인이 필요한 기능입니다.');
				}
			})
			
			//catChange($mCat.val());
			//$('#mCat').val(mateCatId).prop("selected",true);
		});
		
		
})




	//category change Function
	function catChange(mCat){
		console.log(mCat);
	}




	//timeline function
	function chatList(timeline, sessionId){
		for(var i in timeline){
			var content = timeline[i].content;
			var userId = timeline[i].user.id;
			var regDate = timeline[i].regDate;
			var nickname = timeline[i].user.nickname;
				
			addChat(userId, content, regDate, sessionId);
				
		}
		
	}
	
	
	// Chatting function
	function addChat(userId, content, regDate, sessionId){
		
		var regDateMonth = new Date(regDate).getMonth()+1;
		var regDateDay = new Date(regDate).getDate();
		var regDateHour = new Date(regDate).getHours();
		var regDateMinute = (new Date(regDate).getMinutes() < 10) ? "0"+new Date(regDate).getMinutes() : new Date(regDate).getMinutes();

		var chatrows = '';
			if(userId == sessionId){
				
				chatrows += '<li class="me">'
				chatrows += '<div class="entete">'
				chatrows += '<h3>'+regDateMonth+'월'+regDateDay+'일 ,'+regDateHour+':'+regDateMinute
							+' </h3>'
				chatrows += '<h2 class="ml-1">'+userId+'</h2>'
				chatrows += '<span class="status blue"></span>'
				chatrows += '</div>'
				chatrows += '<div class="triangle"></div>'
				chatrows += '<div class="message">'+content+'</div>'
				chatrows += '</li>'
				
			//상대
			} else {
				chatrows += '<li class="you">'
				chatrows += '<div class="entete">'
				chatrows += '<span class="status green"></span>'
				chatrows += '<h2 class="mr-1">'+userId+'</h2>'
				chatrows += '<h3>'+regDateMonth+'월'+regDateDay+'일 ,'+regDateHour+':'+regDateMinute
							+' </h3>'
				chatrows +=	'</div>'
				chatrows += '<div class="triangle"></div>'
				chatrows += '<div class="message">'+content+'</div>'
				chatrows +=	'</li>'
			}
		$('#chat').append(chatrows);
		
	}
