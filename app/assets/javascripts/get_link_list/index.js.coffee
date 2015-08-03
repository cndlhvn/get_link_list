$(document).on 'ready page:load', ->
  $('#get_link_list ul li').hover (->
    $(this).children('ul').slideDown("fast")
  ), ->
    $(this).children('ul').slideUp("fast")
