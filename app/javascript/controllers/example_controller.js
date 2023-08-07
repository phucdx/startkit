import { Controller } from '@hotwired/stimulus';
import i18n from '../i18n';

export default class extends Controller {
  connect() {
    // I18n JS
    alert(i18n[currentLocale].hello);

    // Select2
    $('#multiple-select-field').select2({
      theme: 'bootstrap-5',
      width: $(this).data('width')
        ? $(this).data('width')
        : $(this).hasClass('w-100')
        ? '100%'
        : 'style',
      placeholder: $(this).data('placeholder'),
      closeOnSelect: false
    });
  }
}
