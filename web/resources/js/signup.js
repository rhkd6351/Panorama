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

/* id, password, number check ! */
const email = document.querySelector(".input_id");
const password = document.querySelector(".input__password");
const number = document.querySelector(".input__number");
let text__id =undefined;
let text__password = undefined;

let text__number = undefined;

var pattern_num = /[0-9]/;	// 숫자 

var pattern_eng = /[a-zA-Z]/;	// 문자 

var pattern_spc = /[~!@#$%^&*()_+|<>?:{}]/; // 특수문자

var pattern_010=/[0][1][0]/;



/* email */

const id_error=document.querySelector(".input_error_id");
const id_border= document.querySelector(".id__border");
email.addEventListener('input',email_check);


function email_check( e ) {
    text__id=e.target.value;

    var regex=/([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;

    if (text__id != '' && text__id != 'undefined' && regex.test(text__id)){
        id_error.style.opacity=0;
        id_border.style.borderColor='#ffffff';
        id_error.dataset.error="0";
        input_error_checksita();
    }
    else{
        id_border.style.borderColor='#f15746';
        id_error.style.opacity=1;
    }

}







/* password */
const password_error=document.querySelector(".input_error_password");
const password_border= document.querySelector(".password__border");
password.addEventListener('input', updatePass);

function updatePass(e){
    text__password=e.target.value;
    if( (pattern_num.test(text__password)) && (pattern_eng.test(text__password)) && (pattern_spc.test(text__password))&&(text__password.length>=8 && text__password.length<=16)  ){

        password_error.style.opacity=0;
        password_border.style.borderColor='#ffffff';
        password_error.dataset.error="0";
        input_error_checksita();

    
    }else{
    
    
        password_border.style.borderColor='#f15746';
        password_error.style.opacity=1;
        

    
    }
}

/* number */
const number_error=document.querySelector(".input_error_number");
const number_border= document.querySelector(".number__border");
number.addEventListener('input',updatePhone);

function updatePhone(e){
    text__number=e.target.value;
    if( (pattern_num.test(text__number)) &&(text__number.length===11) &&pattern_010.test(text__number) ){

        number_error.style.opacity=0;
        number_border.style.borderColor='#ffffff';
        number_error.dataset.error="0";
        input_error_checksita();
    
    }else{
    
    
        number_border.style.borderColor='#f15746';
        number_error.style.opacity=1;

    
    }
}


/* date */
const input_date= document.querySelector(".input_error_date");



function aram(){
    input_date.dataset.error="0";
    
    input_error_checksita();


}



/* gender*/
const input_gender= document.querySelector(".input_error_gender");


function aram2(){
    input_gender.dataset.error="0";
    input_error_checksita();

}



/*ID, PASSWORD, NUMBER, GENDER CHECK! */

const input_error=document.querySelectorAll(".input_error");

function input_error_checksita(){

    let check = false;
    for(let i=0; i<input_error.length;i++){
        if(input_error[i].dataset.error==="0"){
            if(i===(input_error.length-1)){
                check=true;
                
            }
        }
        else{
            break;
        }
    
    }
    if(check){
        submit_button.classList.remove("submit_button_notwork");
        
    }
   
}

