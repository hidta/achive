
ready = ->
  $(window).scroll ->
    element = $('#page-top-btn')
    visible = element.is(':visible')
    elementblog = $('#page-top-blogs-btn')
    height = $(window).scrollTop()
    if height > 400
      element.fadeIn() if !visible
    else if height > 200
      elementblog.fadeIn() if !visible
    else
      element.fadeOut()
      elementblog.fadeOut()
  $(document).on 'click', '#move-page-top', ->
    $('html, body').animate({ scrollTop: 0 }, 'slow')

$(document).ready(ready)
$(document).on('page:load', ready)