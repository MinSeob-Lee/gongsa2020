$(function () {
    activateMenu()
    openProfile()
})
$(document).on('show.bs.modal','#interest-modal', function (event) {

    const genreText = $('#interest-genre').children().text()
    const artistText = $('#interest-artist').children().text()
    const performanceText = $('#interest-performance').children().text()

    const modal = $(this)

    modal.find('#genre-tag').val(genreText)
    modal.find('#artist-tag').val(artistText)
    modal.find('#performance-tag').val(performanceText)
})
$(document).on('show.bs.modal','#intro-tag-update-modal', function (event) {

    const tagText = $('#intro-tags').children().text()

    const modal = $(this)

    modal.find('.modal-body input').val(tagText)
})
$(document).on('click','#update-interest', function () {
    let genreText = $('#genre-tag').val()
    let artistText = $('#artist-tag').val()
    let performanceText = $('#performance-tag').val()

    let updateMap = {'req': 'interest', 'genre': genreText, 'artist': artistText, 'performance': performanceText}
    console.log(updateMap)

    $.ajax({
        url: '/mypage/myProfileUpdate.do',
        contentType: 'application/json; charset=utf-8',
        data: JSON.stringify(updateMap),
        type: 'POST',
        dataType: 'JSON'
    }).done(
        console.log('done')
    ).fail().always(function () {
        location.reload();
    })

})
$(document).on('click','#update-intro', function () {
    let text = $('#introduce-tag').val()
    let updateMap = {'req': 'intro', 'tags': text}
    console.log(updateMap)
    $.ajax(
        {
            url: '/mypage/myProfileUpdate.do',
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify(updateMap),
            type: 'POST',
            dataType: 'JSON'
        }
    ).done().fail().always(function () {
        location.reload();
    })


})
const activateMenu = ()=>{
    $("#mypagemenu li").click(function(){
        const req = $(this).data('href')
        $(location).attr('href', req)
    })
}
const dateToYMD = function (date) {
    return `${date.getFullYear()}.${date.getMonth()}.${date.getDate()}`;
}
const openProfile = () => {
    $.ajax({
    	 url: '/mypage/myprofile.do',
         type: 'POST',
         dataType: 'JSON'
    }).done(result => {
        const user = result.user
        const intro = user.intro
        const interest = user.interest
        console.log(user)
        $('#nickname').text(user.nickname)
        $('#reg-date').text(dateToYMD(new Date(user.regDate)))
        $('#grade').text(user.grade)
        if (intro == null || intro.length === 0) {
            $('#intro-tags').append(`<span>아직 자기소개를 등록하지 않으셨네요!<br> 자기소개를 추가해보세요!</span>`)
        } else {
            intro.forEach((tag, index, arr) => {
                const span = `<span>${tag}</span> `
                $('#intro-tags').append(span)
            })
        }
    	 if (interest == null || interest.length === 0) {
             $('#interest-artist').append(interestNullSpan)
             $('#interest-genre').append(interestNullSpan)
             $('#interest-performance').append(interestNullSpan)
    	 } else {
             interest.forEach(tag => {
            const span = `<span>${tag.interestTag}</span> `
            $(`#interest-${tag.interestCategory}`).append(span)
        })
            
        }

    }).fail({}).always(function(){
    	const interestNullSpan = `<span>아직 관심분야를 등록하지 않으셨어요! 추가해보세요!</span>`
        if($(`#interest-artist`).children().length === 0){
            $('#interest-artist'     ).append(interestNullSpan)
        }
        if($(`#interest-genre`).children().length === 0){
            $('#interest-genre').append(interestNullSpan)
        }
        if($(`#interest-performance`).children().length === 0){
            $('#interest-performance').append(interestNullSpan)
        }
    })
}