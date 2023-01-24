//取值cookie由字串轉換為object
function getCookie() {
    return document.cookie.split('; ').reduce((prev, current) => {
        const [name, ...value] = current.split('=');
        prev[name] = value.join('=');
        return prev;
    }, {});
}

//取值後插入 html 顯示於網頁，並且把 html form 刪除
function renderName(name) {
    $('#inputName').html(
        `<h2>How have you been, ${name}?<h2> `
    );
    $("#form").html("");
}

//檢查 cookie (若曾存過 cookie 直接顯示於網頁，且不會顯示 html form)
function existingCookie() {
    const cookie = getCookie();
    if ('name' in cookie ) {  // checks if a property is defined on an object
        renderName(cookie.name);
    }
}

//打 myName API 後
existingCookie();

//按按鈕後會發生的事
$('button').on('click', function () {
    const name = $('#name').val();
    $.ajax({
        type: 'GET',
        url: `/trackName?name=${name}`,
        success: function(result){
            renderName(name);
            },
        error: function(result) {
            alert("Error");
            }
        });     
    });

