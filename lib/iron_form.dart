@JS('Polymer')
library IronForm;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
part 'iron_form.polymerize.dart';


/**
 * `<iron-form>` is a wrapper around the HTML `<form>` element, that can
 * validate and submit both custom and native HTML elements. Note that this
 * is a breaking change from iron-form 1.0, which was a type extension.
 * It has two modes: if `allow-redirect` is true, then after the form submission you
 * will be redirected to the server response. Otherwise, if it is false, it will
 * use an `iron-ajax` element to submit the form contents to the server.
 *   Example:
 *     <iron-form>
 *       <form method="get" action="/form/handler">
 *         <input type="text" name="name" value="Batman">
 *         <input type="checkbox" name="donuts" checked> I like donuts<br>
 *         <paper-checkbox name="cheese" value="yes" checked></paper-checkbox>
 *       </form>
 *     </iron-form>
 * By default, a native `<button>` element will submit this form. However, if you
 * want to submit it from a custom element's click handler, you need to explicitly
 * call the `iron-form`'s `submit` method.
 *   Example:
 *     <paper-button raised onclick="submitForm()">Submit</paper-button>
 *     function submitForm() {
 *       document.getElementById('iron-form').submit();
 *     }
 * If you are not using the `allow-redirect` mode, then you also have the option of
 * customizing the request sent to the server. To do so, you can listen to the `iron-form-presubmit`
 * event, and modify the form's [`iron-ajax`](https://elements.polymer-project.org/elements/iron-ajax)
 * object. However, If you want to not use `iron-ajax` at all, you can cancel the
 * event and do your own custom submission:
 *   Example of modifying the request, but still using the build-in form submission:
 *     form.addEventListener('iron-form-presubmit', function() {
 *       this.request.method = 'put';
 *       this.request.params['extraParam'] = 'someValue';
 *     });
 *   Example of bypassing the build-in form submission:
 *     form.addEventListener('iron-form-presubmit', function(event) {
 *       event.preventDefault();
 *       var firebase = new Firebase(form.getAttribute('action'));
 *       firebase.set(form.serializeForm());
 *     });
 * Note that if you're dynamically creating this element, it's mandatory that you
 * first create the contained `<form>` element and all its children, and only then
 * attach it to the `<iron-form>`:
 *   var wrapper = document.createElement('iron-form');
 *   var form = document.createElement('form');
 *   var input = document.createElement('input');
 *   form.appendChild(input);
 *   document.body.appendChild(wrapper);
 *   wrapper.appendChild(form);
 * @element iron-form
 * @hero hero.svg
 * @demo demo/index.html
 */

@JS('IronForm')
@PolymerRegister('iron-form',native:true)
@BowerImport(ref:'PolymerElements/iron-form#v2.0.1',import:"iron-form/iron-form.html",name:'iron-form')
abstract class IronForm extends PolymerElement  {
  /**
   * Set this to true if you don't want the form to be submitted through an
   * ajax request, and you want the page to redirect to the action URL
   * after the form has been submitted.
   */
  external bool get allowRedirect;
  external set allowRedirect(bool value);

  /**
   * HTTP request headers to send. See PolymerElements/iron-ajax for
   * more details. Only works when `allowRedirect` is false.
   */
  external  get headers;
  external set headers( value);

  /**
   * Set the `withCredentials` flag on the request. See PolymerElements/iron-ajax for
   * more details. Only works when `allowRedirect` is false.
   */
  external bool get withCredentials;
  external set withCredentials(bool value);


}
