let rowPerPage = 10
let totalRow = 0
let currPage = 1
$(function(){
    activateMenu()
    generatePointHistory(currPage)
    $(document).on('click', '#myPointListPaginate', function(event){
        event.preventDefault()
        let page = $(event.target).data('page')
        if(page ==='stop'){
            return
        }else{
        $('#point-history-body').empty()
        $('#myPointList').remove()
        generatePointHistory(page)
        }
    })
})

const activateMenu = ()=>{
    $("#mypagemenu li").click(function(){
        const req = $(this).data('href')
        $(location).attr('href', req)
    })
}
const dateToYMD = function (date) {
    return `${date.getFullYear()}.${date.getMonth()+1}.${date.getDate()}`;
}
const generatePagination= function(){
    const template = `<nav aria-label="Page navigation example" id="myPointList"><ul class="pagination justify-content-center" id="myPointListPaginate"></ul></nav>`
    $('.container').append(template)
    const listCount = parseInt(totalRow/rowPerPage+1)
    const prev = `<li class="page-item" id="page-prev" data-page="${currPage === 1 ? 'stop' : currPage-1}"><a class="page-link" aria-label="Previous" data-page="${currPage === 1 ? 'stop' : currPage-1}"><span aria-hidden="true" data-page="${currPage === 1 ? 'stop' : currPage-1}">&laquo;</span></a></li>`
    const next = `<li class="page-item" id="page-next" data-page="${currPage === listCount ? 'stop' : currPage+1}"><a class="page-link" aria-label="Next" data-page="${currPage === listCount ? 'stop' : currPage+1}"><span aria-hidden="true" data-page="${currPage === listCount ? 'stop' : currPage+1}">&raquo;</span></a></li>`
    let pointList =$('#myPointListPaginate')
    $(pointList).append(prev)
    if(listCount < 6){
        for(let i = 1; i <= listCount; i++){
            let list=`<li class="page-item"><a class="page-link" data-page="${i}">${i}</a></li>`
            $(pointList).append(list)
        }
    }else if(listCount - currPage < 3){
        for(let i = listCount-4; i <= listCount; i++){
            let list=`<li class="page-item"><a class="page-link" data-page="${i}">${i}</a></li>`
            $(pointList).append(list)
        }
    }else if(listCount > 5 && currPage > 3){
        for(let i = currPage-1; i <= currPage+2 ; i++){
            let list=`<li class="page-item"><a class="page-link" data-page="${i}">${i}</a></li>`
            $(pointList).append(list)
        }
    }else{
        for(let i = 1; i <= 5; i++){
            let list=`<li class="page-item"><a class="page-link" data-page="${i}">${i}</a></li>`
            $(pointList).append(list)
        }
    }
    $(pointList).append(next)
    if(currPage === 1){
        $('#page-prev').addClass('disabled')
        $('#page-prev .page-link').attr('aria-disabled','true')
    }else{
        $('#page-prev').removeClass('disabled')
        $('#page-prev .page-link').removeAttr('aria-disabled')
    }
    if(currPage===listCount){
        $('#page-next').addClass('disabled')
        $('#page-next .page-link').attr('aria-disabled','true')
    }else{
        $('#page-next').removeClass('disabled')
        $('#page-next .page-link').removeAttr('aria-disabled')
    }
}
const generatePointHistory = (movePage)=>{
    const startRow = (movePage-1) * rowPerPage
    const url = '/mypage/myPoint.do'
    const pageData={
        'startRow' : startRow,
        'rowPerPage' : rowPerPage
    }

    $.ajax({
        url:url,
        contentType: 'application/json; charset=utf-8',
        data:JSON.stringify(pageData),
        type:'POST',
        dataType:'JSON'
    }).done(result => {

        const history = result.pointHistory
        $("#current-point").text(result.currPoint)
        totalRow = result.totalRows


        history.forEach(row=>{
            const item = `<tr id="point-history-list-${row.id}">
                              <td class="history-title">${row.title}</td>
                              <td class="history-reg-date">${dateToYMD(new Date(row.regDate))}</td>
                              <td class="history-method"></td>
                              <td class="history-change"></td>
                          </tr>`
            $(`#point-history-body`).append(item)
            if(row.value > 0){
                $(`#point-history-list-${row.id} .history-method`).text('증가')
                $(`#point-history-list-${row.id} .history-change`).text(row.value)
            }else if(row.value === 0){
                $(`#point-history-list-${row.id} .history-method`).text('변동없음')
                $(`#point-history-list-${row.id} .history-change`).text(row.value)
            }else{
                $(`#point-history-list-${row.id} .history-method`).text('감소')
                $(`#point-history-list-${row.id} .history-change`).text(row.value*-1)
            }
        })

        currPage = parseInt(startRow/10)+1
        generatePagination()

    }).fail({

    }).always({
    })
}