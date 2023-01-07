function countAandB (input){
  var i = 0 
  var letterCount = 0
  for (i = 0 ; i < input.length; i++){
        if (input[i] === "a") {
            letterCount += 1;
        } else if (input[i] === "b"){
            letterCount += 1;
        }
    }
   return letterCount
}


function toNumber (input) {
    let result = []
    var number 
    const a =  'a'.charCodeAt(0)
    for (i = 0 ; i < input.length; i++) {
        number = input[i].charCodeAt(0) - a + 1;
        result.push(number)
    }
    return result
}

let input1 = ['a', 'b', 'c', 'a', 'c', 'a', 'c'];
console.log(countAandB(input1));
console.log(toNumber(input1));

let input2 = ['e', 'd', 'c', 'd', 'e'];
console.log(countAandB(input2));
console.log(toNumber(input2));
