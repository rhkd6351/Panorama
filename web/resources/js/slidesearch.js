/*search button transition left right haha that's mafuxxin funny*/

const search_button = document.querySelector(".search");
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

/*menu button click wow delete  */

const search_button2 = document.querySelector(".search2");
search_button2.addEventListener("click",()=>{

    search_page.style.transform = "translateX(-100%)";
    main.style.opacity="0.5";

})

const search_delete = document.querySelector(".deletet");
const hambug = document.querySelector(".menu__plus");
const menu_small =document.querySelector(".menusmall");

hambug.addEventListener("click",()=>{

    menu_small.style.display="block";
    setTimeout(() => {
        menu_small.style.opacity=1;

    }, 100);


})


search_delete.addEventListener("click",()=>{

    menu_small.style.opacity=0;

    setTimeout(() => {
        menu_small.style.display="none";

    }, 300);
})