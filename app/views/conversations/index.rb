<div class="container">
  <h1 class="title">Messages</h1>
</div>
<div class="container" >
  <% @users.each do |user| %>
    <% if user.id != current_user.id %>
        <%= button_to "Message #{@sticker.user.username}", conversations_path(sender_id: current_user.id, recipient_id: @sticker.user.id), method: "post", class: 'button is-warning has-text-black' %>
    <% end %>
  <% end %>
</div>

<div class="container">
<h3 class="subtitle">Conversations</h3>
<% @conversations.each do |conversation| %>
    <% if conversation.sender_id == current_user.id || conversation.recipient_id == current_user.id %>
        <% if conversation.sender_id == current_user.id %>
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