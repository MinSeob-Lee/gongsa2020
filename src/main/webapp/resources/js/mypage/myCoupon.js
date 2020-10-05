let rowPerPage = 10
let totalRow = 0
let currPage = 1
$(function () {
    activateMenu()
    generateCouponList(currPage)
    $(document).on('click', '#myCouponListPaginate', function(event){
        event.preventDefault()
        let page = $(event.target).data('page')
        console.log(page)
        if(page==='stop'){
            return
        }else{
        $('#list-body').empty()
        $('#myCouponList').remove()
        generateCouponList(page)
        }
    })
})

const activateMenu = ()=>{
    $("#mypagemenu li").click(function(){
        const req = $(this).data('href')
        $(location).attr('href', req)
    })
}
const generatePagination= function(){
    const template = `<nav aria-label="Page navigation example" id="myCouponList"><ul class="pagination justify-content-center" id="myCouponListPaginate"></ul></nav>`
    $('.container').append(template)
    const listCount = parseInt(totalRow/rowPerPage+1)
    const prev = `<li class="page-item" id="page-prev" data-page="${currPage === 1 ? 'stop' : currPage-1}"><a class="page-link" aria-label="Previous" data-page="${currPage === 1 ? 'stop' : currPage-1}"><span aria-hidden="true" data-page="${currPage === 1 ? 'stop' : currPage-1}">&laquo;</span></a></li>`
    const next = `<li class="page-item" id="page-next" data-page="${currPage === listCount ? 'stop' : currPage+1}"><a class="page-link" aria-label="Next" data-page="${currPage === listCount ? 'stop' : currPage+1}"><span aria-hidden="true" data-page="${currPage === listCount ? 'stop' : currPage+1}">&raquo;</span></a></li>`
    let pointList =$('#myCouponListPaginate')
    $(pointList).append(prev)
    if(listCount < 6){
        for(let i = 1; i <= listCount; i++){
            let list=`<li class="page-item"><a class="page-link" data-page="${i}">${i}</a></li>`
            $(pointList).append(list)
        }
    }else if(listCount > 5 && currPage > 3){
        for(let i = currPage-1; i <= currPage+2 ; i++){
            let list=`<li class="page-item"><a class="page-link" data-page="${i}">${i}</a></li>`
            $(pointList).append(list)
        }
    }else if(listCount > 5 && listCount - currPage < 3){
        for(let i = listCount-4; i <= listCount; i++){
            let list=`<li class="page-item"><a class="page-link" data-page="${i}">${i}</a></li>`
            $(pointList).append(list)
        }
    }else{
        for(let i = 1; i <= listCount; i++){
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
const generateCouponList = (movePage)=>{
    console.log(movePage)
    const startRow = (movePage-1) * rowPerPage
    const pageData={
        'startRow' : startRow,
        'rowPerPage' : rowPerPage
    }
    const url = '/mypage/myCoupon.do'
    $.ajax({
        url:url,
        contentType: 'application/json; charset=utf-8',
        data:JSON.stringify(pageData),
        type:'POST',
        dataType:'JSON'
    }).done(result=>{

        const coupons = result.coupons
        totalRow = result.totalRows
        coupons.forEach(coupon=>{
            const newId = `coupon-list-${coupon.id}`
            const item = `<tr id="${newId}">
                            <td class="coupon-name"></td>
                            <td class="coupon-expDate"></td>
                            <td class="coupon-value"></td>
						</tr>`
            $(`#list-body`).append(item)
            $(`#${newId} .coupon-name`).text(coupon.name)
            if(coupon.value > 99){
                $(`#${newId} .coupon-value`).text(`${coupon.value} 원`)
            }else{
                $(`#${newId} .coupon-value`).text(`${coupon.value}%`)
            }
            $(`#${newId} .coupon-expDate`).text(` ~ ${dateToYMD(new Date(coupon.expDate))}`)

        })
        currPage = parseInt(startRow/10)+1
        generatePagination()
    }).fail({

    }).always({

    })
}
const dateToYMD = function (date) {
    return `${date.getFullYear()}.${date.getMonth()+1}.${date.getDate()}`;
}