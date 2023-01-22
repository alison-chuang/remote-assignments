//按按鈕後會發生的函式，用n製造出新的url，抓出對應的總合值，最後插入html呈現在網頁
function fetchData() {
    const n = document.getElementById('inputField').value;
    fetch (`http://localhost:3000/data?number=${n}`)
        .then(res => res.json())
        .then (data => {
            document.getElementById('ajax').innerHTML =
         `<h2>The &sum; of ${n} is ${data.result}</h2>`;    
        });
}


//     function sendAJAX() {
//     const result = fetchData(n)
//     console.log(result)  

// var xhr = new XMLHttpRequest();
// xhr.onreadystatechange = function() {
//     if (xhr.readtState === 4) {
//         if (xhr.status === 200) {
//         const n = document.getElementById('inputField').val();
//         const result = fetchData(n)
//         sendAJAX(n, result)
//     } else {
//         alert(xhr.statusText)
//     }
//     }
// };
// xhr.open('GET', `http://localhost:3000/data?number=${n}`);
// xhr.send();

