const qtyInput = document.querySelector(".qtyInput");

function eventholly(e,event,fuc){
    e.addEventListener(`${event}`,(e)=>{
        fuc(e);
      
    })
}

function number__plus_minus(e){
    if(e.wheelDeltaY>0){
        qtyInput.value++;

    }
    else if(qtyInput.value>1 && e.wheelDeltaY<0){
        qtyInput.value--;

    }

}

eventholly(qtyInput,'wheel',number__plus_minus);


const buyset = document.querySelector(".buyable");
const input__button = document.querySelector(".disabled2 ");
let size__buy = undefined;
function buy__check(e){
    size__buy= e.target.value;
    if(size__buy){
        input__button.classList.remove("submit_button_notwork2");
    }
    else{
        input__button.classList.add("submit_button_notwork2");


    }

}

eventholly(buyset,'change',buy__check);


const Quantity = document.querySelector(".qtyInput");

eventholly(input__button,"click",makeable)

function makeable(e){
    Quantity.disabled = false;
}
