// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

//imports boostrap and the application.scss stylesheet in app>stylesheets directory
import "bootstrap";
import "../../../app/javascript/packs/application.js";

//Allows Bootstrap tooltips and popovers to run on the page
document.addEventListener("turbolinks:load", () => {
    $('[data-toggle="tooltip"]').tooltip()
    $('[data-toggle="tooltip"]').popover()
})

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

//LOG IN PAGE - /users/sign_in

$(function(){
    var textfield = $("input[name=user]");
                $('button[type="submit"]').click(function(e) {
                    e.preventDefault();
                    //little validation just to check username
                    if (textfield.val() != "") {
                        //$("body").scrollTo("#output");
                        $("#output").addClass("alert alert-success animated fadeInUp").html("Welcome back " + "<span style='text-transform:uppercase'>" + textfield.val() + "</span>");
                        $("#output").removeClass(' alert-danger');
                        $("input").css({
                        "height":"0",
                        "padding":"0",
                        "margin":"0",
                        "opacity":"0"
                        });
                        //change button text 
                        $('button[type="submit"]').html("continue")
                        .removeClass("btn-info")
                        .addClass("btn-default").click(function(){
                        $("input").css({
                        "height":"auto",
                        "padding":"10px",
                        "opacity":"1"
                        }).val("");
                        });
                        
                        //show avatar
                        $(".avatar").css({
                            "background-image": "url('http://api.randomuser.me/0.3.2/portraits/women/35.jpg')"
                        });
                    } else {
                        //remove success mesage replaced with error message
                        $("#output").removeClass(' alert alert-success');
                        $("#output").addClass("alert alert-danger animated fadeInUp").html("sorry enter a username ");
                    }
                    //console.log(textfield.val());
    
                });
    });
    