function binarySearchPosition(numbers, target) {
	let l = 0; //low
	let h = numbers.length; //high
	let mid; //中間
	while (l <= h) {
		mid = l + parseInt((h - l)/2);
		if (numbers[mid] === target) {
			return mid;
		} else if (numbers[mid] < target) {
			l = mid + 1;
		} else {
			h = mid - 1;
		}
	}
	return -1;
}
console.log(binarySearchPosition([1, 2, 5, 6, 7], 1)); // should print 0
console.log(binarySearchPosition([1, 2, 5, 6, 7], 6)); // should print 3
