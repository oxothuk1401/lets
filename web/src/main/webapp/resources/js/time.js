window.onload = function(){
    (function showTime(){
        var date = new Date(),
            time,
            hours,
            minutes;

        if (date.getHours() < 10) {
            hours = "0" + date.getHours();
        } else {
            hours = date.getHours();
        }

        if (date.getMinutes() < 10) {
            minutes = "0" + date.getMinutes();
        } else {
            minutes = date.getMinutes();
        }

        time = hours + ":" + minutes;

        document.getElementById('currentTime').innerHTML = time;

        window.setTimeout(showTime, 1000);
    })();
};