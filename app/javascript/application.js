// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import { Turbo } from "@hotwired/turbo-rails";
import "controllers";
import "jquery";
import "lodash";
import "select2";
import "flatpickr";

Turbo.session.drive = false;

const init_select2_tag = (selector) => {
  $(selector).select2({
    tags: true,
  });
};

const init_select2 = (selector) => {
  $(selector).select2();
};

init_select2(".select2");
init_select2_tag(".select2-tag");

$(".flatpick").flatpickr({
  enableTime: true,
  dateFormat: "Y/m/d H:i",
});
