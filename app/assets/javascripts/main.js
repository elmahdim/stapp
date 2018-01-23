document.addEventListener('DOMContentLoaded', function(){
    var page_title = document.getElementById('page_title');
    page_title && page_title.addEventListener('focusout', function(event) {
        generateSlug(event.target.value)
    });
}, false);

function generateSlug (value) {
    var page_slug = document.getElementById('page_slug');
    if (page_slug) {
        page_slug.value = reformateTitle(value);
    }
}

function reformateTitle (value) {
    return value
        .trim()
        .toLowerCase()
        .replace(/-+/g, '')
        .replace(/\s+/g, '-')
        .replace(/[^a-z0-9-]/g, '');
}

