jQuery(function($)
{
    $(document).on('ajax:success', 'new', function(e, data, status, xhr) {
        if ('post' in data) {
            $("#post-list").prepend(data.post);
            $("#post-title").val("");
            $("#post-content").val("");
        }
    });
    $(document).on('ajax:error', 'form', function(e, data, status, error) {
        $("#post-list").prepend(data.post);
    });
});