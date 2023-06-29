import { Controller } from "@hotwired/stimulus"
import i18n from '../i18n'

export default class extends Controller {
  connect() {
    alert(i18n[currentLocale].hello)
  }
}
