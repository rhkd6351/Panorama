const gobuttons = document.querySelectorAll(".gobutton");



for(let i=0; i<gobuttons.length; i++){
    gobuttons[i].addEventListener("click",()=>{

        let go = document.querySelector(`.${gobuttons[i].dataset.sectiongo}`);

        go.scrollIntoView({behavior: "smooth", block: "center", inline: "nearest"});
    })
}