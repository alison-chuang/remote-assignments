//取值cookie由字串轉換為object
function getCookie() {
    return document.cookie.split('; ').reduce((prev, current) => {
        const [name, ...value] = current.split('=');
        prev[name] = value.join('=');
        return prev;
    }, {});
}

//取值後插入html顯示於網頁
function renderName(name) {
    $('#inputName').html(
        `How have you been, ${name}? `
    );
}

//若曾存過cookie直接顯示於網頁
function existingCookie() {
    const cookie = getCookie();
    if ('name' in cookie ) {  // checks if a property is defined on an object
        renderName(cookie.name);
    }
}

//打myName API後
existingCookie();

//按按鈕後會發生的事
$('button').on('click', function () {
    const name = $('#name').val();
    $.ajax({
        type: 'GET',
        url: `/trackName?name=${name}`,
        success: function(result){
            renderName(name);
        }
    });
});
