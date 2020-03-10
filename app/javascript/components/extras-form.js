const extrasSelect = document.getElementById("extras-button")

  extrasSelect.addEventListener("click", (displayForm) => {
    let extrasForm = document.getElementById("extras-form")
    extrasForm.classList.add('d-block')
  });
