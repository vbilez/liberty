$ = jQuery;
$("<style type='text/css'>.invalid-input{ background-color: pink !important;}</style>").appendTo("head");
$(document).ready(function () {
    var form = $('form#video-post-form');
    var fieldsToValidate = form.children('input[type="text"]');
    var youtubeRegex = /^(?:https?:\/\/)?(?:www\.)?(?:youtu\.be\/|youtube\.com\/(?:embed\/|v\/|watch\?v=|watch\?.+&v=))((\w|-){11})(?:\S+)?$/;
    var selectField = $('#video-post-form select[name="category"]');
    var lastUploadCategory = getCookie('lastUploadCategory');
    function getCookie(name) {
        var matches = document.cookie.match(new RegExp(
            "(?:^|; )" + name.replace(/([\.$?*|{}\(\)\[\]\\\/\+^])/g, '\\$1') + "=([^;]*)"
        ));
        return matches ? decodeURIComponent(matches[1]) : undefined;
    }
    function correctInput(handle) {
        handle.removeClass('invalid-input');
        handle.next().is("#input-error") ? handle.next().remove() : null;
    }
    function invalidInput(handle, errMgs, errSpanId, errCssClass) {
        console.log(errCssClass);
        errSpanId === undefined ? errSpanId = 'input-error' : null;
        errCssClass === undefined ? errCssClass = 'invalid-input' : null;
        if (typeof errMgs !== 'string') { console.error("errMsg must be of type string")}
        !handle.next().is("#" + errSpanId) ?
            handle.addClass(errCssClass).after('<span id="'+ errSpanId +'" style="color: grey"> ' + errMgs + '</span>')
            : null;
    }
    if (lastUploadCategory !== undefined) {
        selectField.children('option[value="'+ lastUploadCategory +'"]').attr("selected","selected");
    }
    fieldsToValidate.change(function () {
        var self = $(this);
        switch(self.attr('id')) {
            case 'link':
                if (youtubeRegex.test(self.val())) {
                    correctInput(self);
                    $('input#thumbnail').val('https://img.youtube.com/vi/' + self.val().substr(self.val().indexOf('=')+1) + '/mqdefault.jpg');
                } else invalidInput(self, "must be a valid youtube link");
                break;
            case 'title':
                var maxChar = 24;
                self.val().length < maxChar ? correctInput(self) : invalidInput(self, "maximum number of characters is " + maxChar);
                break;
            default:
                break;
        }
    });
    form.submit(function (e) {
        fieldsToValidate.each(function () {
            var self = $(this);
            if (self.hasClass('invalid-input')) {
                invalidInput($('input[type="submit"]'), 'Invalid input', 'no-submit', 'no-submit');
                e.preventDefault()
            } else {
                var currentCategory = selectField.val();
                document.cookie = "lastUploadCategory=" + currentCategory;
            }
        });
    })
});
