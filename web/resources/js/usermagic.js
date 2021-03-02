const gobuttons = document.querySelectorAll(".gobutton");



for(let i=0; i<gobuttons.length; i++){
    gobuttons[i].addEventListener("click",()=>{

        let go = document.querySelector(`.${gobuttons[i].dataset.sectiongo}`);
        if(go.classList[1]==="Merchandise"){
            go.scrollIntoView({behavior: "smooth", block: "start", inline: "nearest"});

        }
        else{
            go.scrollIntoView({behavior: "smooth", block: "center", inline: "nearest"});

        }
    })
}