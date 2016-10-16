# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('#person_state_id').parent().hide()
  states = $('#person_state_id').html()
  $('#person_country_id').change ->
    country = $('#person_country_id :selected').text()
    escaped_country = country.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(states).filter("optgroup[label='#{escaped_country}']").html()
    if options
      $('#person_state_id').html(options)
      $('#person_state_id').parent().show()
    else
      $('#person_state_id').empty()
      $('#person_state_id').parent().hide()
jQuery ->
  $('#person_town_id').parent().hide()
  towns = $('#person_town_id').html()
  $('#person_state_id').change ->
    state = $('#person_state_id :selected').text()
    escaped_state = state.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(towns).filter("optgroup[label='#{escaped_state}']").html()
    if options
      $('#person_town_id').html(options)
      $('#person_town_id').parent().show()
    else
      $('#person_town_id').empty()
      $('#person_state_id').parent().hide()



