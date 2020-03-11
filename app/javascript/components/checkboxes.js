const checkboxses = document.querySelectorAll('.day-custom');
console.log(checkboxses)

checkboxses.forEach(element => {
  console.log(element)
  element.addEventListener("click", function() {
    this.classList.toggle("active");
  });
})
