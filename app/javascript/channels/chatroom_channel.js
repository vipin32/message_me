import consumer from "channels/consumer"

consumer.subscriptions.create("ChatroomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel

    // alert(data.foo)

    $("#message_box").append("<div class='outgoing_msg'><div class='sent_msg'><p>"+ data.foo +", Test</p><span class='time_date'> 11:01 AM    |    Today</span></div></div>");
    // $("#message_box").text('dfghjkvbnm');
  }
});
