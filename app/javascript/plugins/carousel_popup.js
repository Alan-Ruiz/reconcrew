const carouselPopUp = () => {
  const popUp = document.querySelector('.carousel-popup')
  if (popUp) {
    const triggers = document.querySelectorAll('.carousel-trigger')
    const body = document.querySelector("body")
    triggers.forEach(trigger => {
      trigger.addEventListener("click", () => {
        popUp.style.display='block'
        window.scrollTo(0, 0)
        body.style.overflow = "hidden"
        const close = document.querySelector('.popup-close')
        close.addEventListener("click", () => {
          popUp.style.display='none'
          body.style.overflow = "scroll"
        })
      })
    }
  )
  }
}

export {carouselPopUp}
