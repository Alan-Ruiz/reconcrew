import Rails from 'rails-ujs'
import Flatpickr from 'stimulus-flatpickr'

export default class extends Flatpickr {
  connect() {
    this.config = {
      altInput: true,
      altFormat: 'd-m-Y',
      showMonths: 2,
      mode: 'multiple'
    }

    super.connect();
  }

  monthChange() {
    this.fetchDates()
  }

  yearChange() {
    this.fetchDates()
  }

  fetchDates() {
    const month = this.fp.currentMonth
    const year = this.fp.currentYear

    fetch(`${this.url}?month=${month}&year=${year}`), {
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': Rails.csrfToken()
      },
      credentials: 'same-origin'
    }
  }

  get url() {
    if (this.data.has('url')) {
      return this.data.get('url')
    } else {
      return null;
    }
  }
}
