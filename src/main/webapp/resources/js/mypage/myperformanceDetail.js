$(function(){
	activateMenu()
})

const activateMenu = ()=>{
    $("#mypagemenu li").click(function(){
        const req = $(this).data('href')
        $(location).attr('href', req)
    })
}