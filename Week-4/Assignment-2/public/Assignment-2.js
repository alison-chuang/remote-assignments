function ajax(src, callback) {
	fetch(src)
		.then((response) => {
			return response.json(); 
		})
		.then((response) => {
			callback(response);
		})
		.catch((error) => {
			console.log(`Error: ${error}`);
		});
}

function render(data) {
	for (let product of data) {
		let div = document.createElement('div');
		div.innerHTML = JSON.stringify(product);
		document.querySelector('#ajax').appendChild(div);
	}
}

ajax(
	'https://appworks-school.github.io/Remote-Assignment-Data/products',
	function (response) {
		render(response);
	}
);