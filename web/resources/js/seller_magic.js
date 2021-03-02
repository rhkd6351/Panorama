const deletebuttons = document.querySelectorAll(".deleteone");
const deleteitembuttons = document.querySelectorAll(".delete_buttons");
const delete_choice_layer= document.querySelector(".delete_layer");

for(let i=0; i<deletebuttons.length;i++){
    deletebuttons[i].addEventListener("click",()=>{


        delete_choice_layer.style.display="block";
        
        beforecheck(deletebuttons[i]);

    })
}


function beforecheck(t){
    for (let i=0; i<deleteitembuttons.length;i++){

        deleteitembuttons[i].addEventListener("click",()=>{
    
            if(deleteitembuttons[i].dataset.input==="True"){
                deleteitem(t);
                delete_choice_layer.style.display="none";

            }
            else{
                delete_choice_layer.style.display="none";
            
            }
            
    
        })
    }
}


function deleteitem(e){
    e.parentNode.parentNode.remove();
}

var pattern_num =  /^[0-9]*$/;		// 숫자 
var pattern_eng = /[a-zA-Z]/;	// 문자 


const inputs = document.querySelectorAll(".input_one");
let text__number = undefined;
for(let i=0;i<inputs.length;i++){
    inputs[i].addEventListener("input", check)
}

function check(e){
    text__number= e.target.value;
    if(e.target.dataset.type==='text'){
        if(pattern_eng.test(text__number)){
            e.target.parentNode.style.borderColor="#000000";
            e.target.parentNode.parentNode.children[2].style.opacity=0;
            e.target.parentNode.parentNode.children[2].dataset.error="0";
            input_error_checksita();


        }
        else{

            e.target.parentNode.style.borderColor="#f15746";
            e.target.parentNode.parentNode.children[2].style.opacity=1;
            e.target.parentNode.parentNode.children[2].dataset.error="1";

        }
    }
    else if (e.target.dataset.type==='number'){
        if(pattern_num.test(text__number)&& !(text__number==="")){
            e.target.parentNode.style.borderColor="#000000";
            e.target.parentNode.parentNode.children[2].style.opacity=0;
            e.target.parentNode.parentNode.children[2].dataset.error="0";
            input_error_checksita();

        }
        else{

            e.target.parentNode.style.borderColor="#f15746";
            e.target.parentNode.parentNode.children[2].style.opacity=1;
            e.target.parentNode.parentNode.children[2].dataset.error="1";

        }
    }
    
}


/*ID, PASSWORD, NUMBER, GENDER CHECK! */

const input_error=document.querySelectorAll(".input_error");
const submit_button= document.querySelector(".brand_enter");


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
const kind_button = document.querySelectorAll(".kinds_button");
const kind_input = document.querySelector("#kinds_one");

for(let i=0; i<kind_button.length;i++){
    kind_button[i].addEventListener("click",(self)=>{
            
        allremove();
        kind_button[i].classList.add("choiced_ver");
        kind_input.value=kind_button[i].innerHTML;
        kind_button[i].parentNode.parentNode.children[2].dataset.error="0";
        input_error_checksita()
        
    })
}
function allremove(){
    for(let i=0; i<kind_button.length;i++){
        
        kind_button[i].classList.remove("choiced_ver");
        
    }
}

const input_file =document.querySelector(".input_file");
const choice_layer= document.querySelector(".choice_layer")

function handleFiles(e){

    console.log(e);
    if(e.length){
        input_file.parentNode.parentNode.children[2].dataset.error="0";
        input_error_checksita()
    }
    else{
        input_file.parentNode.parentNode.children[2].dataset.error="1";

    }
}

const brandlist_plus = document.querySelector(".brand_list_edit");
brandlist_plus.addEventListener("click",()=>{
    choice_layer.style.display="block";
})

const choice_layer__delete= document.querySelector(".delete__choice_layer");

choice_layer__delete.addEventListener("click",()=>{
    choice_layer.style.display="none";

})