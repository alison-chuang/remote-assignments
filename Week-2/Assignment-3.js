function count(input) {
	let res = {};
	for (let char of input) {
		if (!(char in res)) {
			res[char] = 0;
		}
		res[char] += 1;
	}
	return res;
}
let input1 = ['a', 'b', 'c', 'a', 'c', 'a', 'x'];
console.log(count(input1)); // should print {a:3, b:1, c:2, x:1}

function groupByKey(input) {
	let res = {};
	for (let obj of input) {
		if (!(obj.key in res)) {
			res[obj.key] = 0;
		}
		res[obj.key] += obj.value;
	}
	return res;
}
let input2 = [
	{ key: 'a', value: 3 },
	{ key: 'b', value: 1 },
	{ key: 'c', value: 2 },
	{ key: 'a', value: 3 },
	{ key: 'c', value: 5 },
];
console.log(groupByKey(input2)); // should print {a:6, b:1, c:7}
