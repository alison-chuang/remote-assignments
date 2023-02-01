//A. callback
function delayedResult(n1, n2, delayTime, callback) {
	setTimeout(() => {
		callback(n1+n2);
	}, delayTime);
}
delayedResult(4, 5, 3000, function(result) {
	console.log(result);
});

delayedResult(-5, 10, 2000, function(result) {
	console.log(result);
});

//B. promise
function delayedResultPromise(n1, n2, delayTime) {
	return new Promise((resolve, reject) => {
		setTimeout(() => {
			resolve(n1+n2);
		}, delayTime);
	});
}
delayedResultPromise(4, 5, 3000).then(console.log);

//C. async.await
async function main() {
	const result = await delayedResultPromise(3, 4, 5000);
	console.log(result);
}
main();
