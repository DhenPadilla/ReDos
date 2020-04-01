function measureTime(f, print) {
    var start = process.hrtime();
    f();
    var end = process.hrtime(start);
    if (print === false) {

    } else {
        console.info("Execution time (hr): %ds %dms", end[0], end[1] / 1000000);
    }
    return ("%ds % dms", end[0], end[1] / 1000000);
}

module.exports.measureTime = measureTime;