const gender = document.querySelector(".selectge_out");
const gender_real =document.querySelector(".selectge");
const choice = document.querySelector(".choice_layer");
const submit_button= document.querySelector(".submit_button");

gender.addEventListener("click",(event)=>{
    choice.style.display="block";
})

const choice_button = document.querySelectorAll(".choice_button");
const choice_enter = document.querySelector(".choice_enter");

for(let i=0; i<choice_button.length;i++){
    choice_button[i].addEventListener("click",(self)=>{
        choice_enter.dataset.gender =choice_button[i].dataset.gender;
        allremove();
        choice_button[i].classList.add("choiced_ver");
        if(choice_enter.dataset.gender){
            choice_enter.classList.add("choice_enterd_ver");

        }
    })
}

choice_enter.addEventListener("click",()=>{
    choice.style.display="none";
    gender_real.value=choice_enter.dataset.gender;

})

function allremove(){
    for(let i=0; i<choice_button.length;i++){
        
            choice_button[i].classList.remove("choiced_ver");
        
    }
}

submit_button.addEventListener("click",()=>{
    gender_real.disabled = false;
})


const brand = document.querySelector(".selectbr_out");
const brand_real =document.querySelector(".selectbr");

