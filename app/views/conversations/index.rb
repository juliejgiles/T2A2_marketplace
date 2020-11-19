<div class="container">
  <h1 class="title">Messages</h1>
</div>





<div class="container">
<h3 class="subtitle">Conversations</h3>
<% @conversations.each do |conversation| %>
    <% if conversation.sender_id == current_user.id || conversation.recipient_id == current_user.id %>
        <% if conversation.sender.id == current_user.id %>
            <% recipient = User.find(conversation.recipient_id) %>
        <% else %>
            <% recipient = User.find(conversation.sender_id) %>
        <% end %>
        <% unless current_user.id == recipient_id %>
            <div class="columns"> 
                <div class="column">
                    <%= link_to recipient.username, conversation_messages_path(conversation) %>
                </div>
            </div>
    <% end %>
<% end %>
</div>
