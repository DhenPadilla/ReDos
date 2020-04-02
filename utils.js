function measureTime(f, print) {
    var start = process.hrtime();
    f();
    var end = process.hrtime(start);
    if (print === false) {

    } else {
        console.info("Execution time (hr): %ds %dms", end[0], end[1] / 1000000);
    }
    var sec = end[0].toString()
    var millisec = (end[1] / 1000000).toString()
    return sec + "s  " + millisec + "ms"
}

module.exports.measureTime = measureTime;