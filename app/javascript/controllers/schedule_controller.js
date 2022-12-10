import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="schedule"
export default class extends Controller {
  static targets = [
    'scheduleTemplate',
    'schedules',

  ]

  connect() {
  }

  addSchedule(e) {
    e.preventDefault()
    var s = this.scheduleTemplateTarget.innerHTML.replace(/TEMPLATE_RECORD/g, new Date().getTime())
    this.schedulesTarget.insertAdjacentHTML('beforebegin', s)
  }

  removeSchedule(e) {
    e.preventDefault()
    var item = e.target.closest('.nested-fields')
    item.querySelector('input[name*="_destroy"]').value = 1
    item.style.display = 'none'
  }
}
