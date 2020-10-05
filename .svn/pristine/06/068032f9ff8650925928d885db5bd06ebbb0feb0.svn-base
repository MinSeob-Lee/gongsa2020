$(function(){
	
		
		//mate add function
		$('.add-mate-btn').click(function(){
			console.log($(this));
			console.log($(this).data('mnum'), $(this).data('pid'));
			var mnum = $(this).data('mnum');
			var pid = $(this).data('pid');
		//가득찬 방입니다.
		//이미 메이트가 있는 회원입니다.
		//결제되지 않은 회원입니다.
		//location.href = 'addMate.do?mnum=mnum&pid=pid'
			
			
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
					var con = confirm("정말 해당 방에 참여하시겠습니까? 예약되면 돌이킬 수 없습니다.");
					if(con){
						console.log(1);
						location.href = '/mate/addMateMember.do?pid='+pid+'&mnum='+mnum;
					}
					
				}
			
			})
		});
})