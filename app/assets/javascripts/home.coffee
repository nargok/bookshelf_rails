# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$('#book_input').on 'show.bs.modal', (event) ->
  button = $(event.relatedTarget)
  title = button.data('whatever')

  modal = $(this)
  modal.find('modal-title').text title
  return