$(document).ready(function(){

    /* ---------- CHANGE EMAIL ------------------ */
    const change_email = document.querySelectorAll(".change_email");
    const email_opt = document.querySelectorAll(".email_opt");

    /* ---------- PREFERENCE TAB ------------------ */
    const preference_bar = document.querySelectorAll(".bar");
    const preference_opt = document.querySelectorAll(".pref_opt");

    /* ---------- CHANGE PASSWORD ------------------ */
    const change_password = document.querySelectorAll(".change_password");
    const pass_opt = document.querySelectorAll(".pass_opt");


    $(".bar").addClass("visible");

    $(email_opt).on("click",function(){
        change_email.forEach(tab => {
            tab.classList.add("visible");
        });
        preference_bar.forEach(tab => {
            tab.classList.remove("visible");
        })
        change_password.forEach(tab => {
            tab.classList.remove("visible");
        })
    })

    $(preference_opt).on("click",function(){
        preference_bar.forEach(tab => {
            tab.classList.add("visible");
        })
        change_email.forEach(tab=>{
            tab.classList.remove("visible");
        })  
        change_password.forEach(tab => {
            tab.classList.remove("visible");
        })
    })

    $(pass_opt).on("click",function(){
        change_password.forEach(tab => {
            tab.classList.add("visible");
        })
        preference_bar.forEach(tab=>{
            tab.classList.remove("visible");
        })  
        change_email.forEach(tab => {
            tab.classList.remove("visible");
        })
    })

    const button_icon = document.querySelectorAll(".fONwsr");
    button_icon.forEach(clickedTab => {
      clickedTab.addEventListener('click',() => {
        button_icon.forEach(tab => {
          tab.classList.remove('border_active');
        });
        clickedTab.classList.add('border_active')
      })
    })

})