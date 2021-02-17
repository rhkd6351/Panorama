
/*search button transition left right haha that's mafuxxin funny*/

const search_button = document.querySelector(".li__button");
const searchd_button = document.querySelector(".delete");

const search_page = document.querySelector(".searchplace");

const main = document.querySelector(".main");

search_button.addEventListener("click",()=>{

    search_page.style.transform = "translateX(-100%)";
    main.style.opacity="0.5";

})

searchd_button.addEventListener("click",()=>{
    search_page.style.transform = "translateX(0%)";
    main.style.opacity="1";

})

