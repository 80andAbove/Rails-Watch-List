const collapse_button = document.querySelector('#button');
const collapse_icon = document.querySelector('.icon');
    // console.log(collapse_icon);
    
collapse_button.addEventListener("click", (event) => {
    if (collapse_icon.classList.contains('fa-chevron-down')) {
        collapse_icon.classList.replace('fa-chevron-down', 'fa-chevron-up');
    } else {
        collapse_icon.classList.replace('fa-chevron-up', 'fa-chevron-down');
    };
});