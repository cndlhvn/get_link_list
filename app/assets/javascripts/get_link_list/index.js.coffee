$(document).on 'turbolinks:load', ->
  $('#get_link_list ul li').hover (->
    $(this).children('ul').stop(true,true).slideDown("fast")
  ), ->
    $(this).children('ul').stop(true,true).slideUp("fast")
