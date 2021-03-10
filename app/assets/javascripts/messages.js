scroll_chat = function(){
  if ($('.chat-messages').length > 0) {
    $('.chat-messages').scrollTop($('.chat-messages')[0].scrollHeight)
  }
}

clear_message = function(){
  $("#message_text").val("");
}

$(function(){
  scroll_chat()
  $('#new_message').on('ajax:success', clear_message)
})