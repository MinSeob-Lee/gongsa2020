$(function () {
    activateMenu()
    openProfile()
})
const activateMenu = ()=>{
    $(`#mypagemenu li`).click((event) => {
        const url = $(event.target).data('href')
        $(location).attr('href', url)
    })
}
const dateToYMD = function (date) {
    return `${date.getFullYear()}.${date.getMonth()}.${date.getDate()}`;
}
const openProfile = ()=>{
    $.ajax({
        url:'/mypage/myprofile.do',
        type:'POST',
        dataType:'JSON'
    }).done(result => {
        const user = result.user
        const intro = user.intro
        const interest = user.interest
        console.log(user)
        $('#nickname').text(user.nickname)
        $('#reg-date').text(dateToYMD(new Date(user.regDate)))
        $('#grade').text(user.grade)
        if(intro == null || intro.length === 0){
            $('#intro-tags').append(`<span>아직 자기소개를 등록하지 않으셨네요!<br> 자기소개를 추가해보세요!</span>`)
        }else{
            intro.forEach( tag =>{
                const span = `<span>${tag} </span>`
                $('#intro-tags').append(span)
            })
        }
        const interestNullSpan = `<span>아직 관심분야를 등록하지 않으셨어요! 추가해보세요!</span>`
        if(interest == null || interest.length === 0){
            $('#interest-artist'     ).append(interestNullSpan)
            $('#interest-category'   ).append(interestNullSpan)
            $('#interest-genre'      ).append(interestNullSpan)
            $('#interest-performance').append(interestNullSpan)
        }else{
            interest.forEach(tag=>{
                const span = `<span>${tag.interestTag} </span>`
                $(`#interest-${tag.interestCategory}`).append(span)
            })
            if($(`#interest-artist`).children.length === 0){
                $('#interest-artist'     ).append(interestNullSpan)
            }
            if($(`#interest-category`).children.length === 0){
                $('#interest-category').append(interestNullSpan)
            }
            if($(`#interest-genre`).children.length === 0){
                $('#interest-genre').append(interestNullSpan)
            }
            if($(`#interest-performance`).children.length === 0){
                $('#interest-performance').append(interestNullSpan)
            }
        }

    }).fail({

    }).always({

    })
}