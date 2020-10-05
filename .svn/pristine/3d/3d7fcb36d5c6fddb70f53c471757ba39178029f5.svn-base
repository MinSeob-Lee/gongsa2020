$(function(){
    activateMenu()
    generateList()

    $(document).on('click','#my-mategroup-list .item',function(){
        const mateId = $(this).data('mateId')
        const performanceId = $(this).data('performanceId')
        $(location).attr('href', `/mate/matedetail.do?pid=${performanceId}&mnum=${mateId}`)
    })

})

const activateMenu = ()=>{
    $("#mypagemenu li").click(function(){
        const req = $(this).data('href')
        console.log('/mypage/'+req)
        $(location).attr('href', req)
    })
}

const generateList = ()=>{
    $.ajax({
        url:'/mypage/mymateroom.do',
        type:'POST',
        dataType:'JSON'
    }).done(result => {
        const list = result.mateList
        list.forEach(mate=>{
          
            const itemId = `mate-group-${mate.id}`
            const tags = mate.mateTags
            const members = mate.mateMembers
            const schedule = mate.performance.schedule[0]
            console.log(mate)
            console.log(tags)
            console.log(members)
            console.log(schedule)

            const item = `<div class="item" data-performance-id="${mate.performance.id}" data-mate-id="${mate.id}" id="${itemId}"><div class="item-right"><div class="mt-3"></div>
                              <h2 class="text-danger font-weight-bold text-center mate-seat-type">${mate.seatRate}<span>석</span></h2><div class="mt-3"></div>
                              <h1 class="num mate-perf-date">${dateToMD(new Date(schedule.showDate), '/')}</h1><div class="mt-3"></div>
                              <p class="day mate-weekday"><span>${getWeekday(new Date(schedule.showDate))}</span>요일</p><div class="text-center"></div>
                              <span class="up-border"></span> <span class="down-border"></span></div><div class="item-left">
                              <div class="row"><div class="col-12"><div>
                              <h2 class="title" style="display: inline-block;">${mate.category}</h2>
                              <span class="badge badge-info">${mate.status}</span></div><div class="event text-primary text-truncate mt-2 mate-tags"></div>
                              <div class="mt-5 text-muted\t" style="border-bottom: 1px solid gray;"><i class="fas fa-flag"></i> 인원
                              <span id="mate-mem-now-count-0" class="ml-2 mate-count">${mate.groupCnt}</span>
                              <span>/</span> <span id="mate-mem-tot-count-0 mate-size">${mate.groupsize}</span>
                              </div>
                              <div style="border-bottom: 1px solid gray;">
                              <div class="text-muted mate-user-list">
                              <i class="fas fa-user-friends"></i> 참여자 :</div><div></div></div>
                              <div class="fix"></div><div class="loc"><div class="text-muted">
                              <i class="fas fa-couch"></i> 좌석번호 :
                              <span class="mate-seat-group">${mate.seatGroup}</span>
                              </div></div></div></div></div></div>`
            $(`#my-mategroup-list`).append(item)
            tags.forEach(tag => {
                const tagItem = `<span>${tag}</span>`
                $(`#${itemId} .mate-tags`).append(tagItem.tagName)
            })
            members.forEach(user=>{
                const userItem = `<span class="text-primary">${user.nickname} </span> `
                $(`#${itemId} .mate-user-list`).append(userItem)
            })

        })
    }).fail({

    }).always({

    })
}
const getWeekday = date => {
    const weekdays = ['알','월','화','수','목','금','토']
    return weekdays[date.getDay()]
}
const dateToYMD = function (date) {
    return `${date.getFullYear()}.${date.getMonth()}.${date.getDate()}`;
}
const dateToMD = function (date, sep) {
    return `${date.getMonth()}${sep}${date.getDate()}`;
}
