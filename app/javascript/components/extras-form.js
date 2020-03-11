const extrasSelect = document.getElementById("extras-button")
  extrasSelect.addEventListener("click", (displayForm) => {
    extrasSelect.classList.add('d-none')
    const extrasForm = document.getElementById("extras-form")
    extrasForm.classList.add('d-block')
  });
