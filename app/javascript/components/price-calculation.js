const dateSelec = document.getElementById("date-selec")
const totPriceSelect = document.getElementById('tot-price-days')

if (dateSelec){

  dateSelec.addEventListener("change", (event) => {
  // const arrOfDates = event.target.value.split(', ');
  const numOfDays = event.target.value.split(', ').length;

  console.log(event.target.value)
  if (event.target.value) {
    totPriceSelect.classList.add('d-block');
  } else {
    totPriceSelect.classList.remove('d-block');
  }

  let totalPriceDays = document.querySelector('.total-price-days');
  let totalPrice = document.getElementById('total-price');
  const locationPrice = parseInt(document.getElementById('location-price').innerText);
  // total price takes the 0 from the hteml, and we want to asign it the number of days we got from flatpickr
  totalPriceDays.innerText = numOfDays;
  totalPrice.innerText = numOfDays * locationPrice;
});
}
