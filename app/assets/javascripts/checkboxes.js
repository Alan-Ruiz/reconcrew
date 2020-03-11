const checkboxses = document.querySelectorAll('.day-custom');
console.log(checkboxses)

checkboxses.forEach(element => {
  element.addEventListener("click", function() {
    element.classList.toggle("day-active");
  });
})
