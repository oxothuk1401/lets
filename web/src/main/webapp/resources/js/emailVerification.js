function doAjax() {
    $.ajax({
        url: 'loginValidator',
        data: ({login: $('#login').val()}),
        success: function (data) {
            $('#logintext').html(data);
        }
    });
}

function doAjaxTeacher() {
    $.ajax({
        url: 'checkEmail',
        data: ({userEmail: $('#teachEmail').val()}),
        success: function (data) {
            $('#teacherEmailMess').html(data);

        }
    });
}