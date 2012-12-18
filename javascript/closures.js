/**
 * Filters elements from an array based on the given predicate
 */
function filter(predicate, array) {
    var filtered = [];
    for(var i = 0; i < array.length; i++){
        var value = array[i];
        if(predicate(value)) {
            filtered.push(value);
        }
    }
    return filtered;
}

var numbers = [12, 32, 1, 3, 2, 2, 234, 236, 632,7, 8];

var filteredNumbers = filter(
    function(x) { return (x > 100) },
    numbers);

print(filteredNumbers);
