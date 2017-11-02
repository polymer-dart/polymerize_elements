@JS('Polymer')
library Polymer.AppLocalizeBehavior;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';

part 'app_localize_behavior.polymerize.dart';

/**
 * `Polymer.AppLocalizeBehavior` wraps the [format.js](http://formatjs.io/) library to
 * help you internationalize your application. Note that if you're on a browser that
 * does not natively support the [Intl](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl)
 * object, you must load the polyfill yourself. An example polyfill can
 * be found [here](https://github.com/andyearnshaw/Intl.js/).
 * `Polymer.AppLocalizeBehavior` supports the same [message-syntax](http://formatjs.io/guides/message-syntax/)
 * of format.js, in its entirety; use the library docs as reference for the
 * available message formats and options.
 * Sample application loading resources from an external file:
 *     <dom-module id="x-app">
 *        <template>
 *         <div>{{localize('hello', 'name', 'Batman')}}</div>
 *        </template>
 *        <script>
 *           Polymer({
 *             is: "x-app",
 *             behaviors: [
 *               Polymer.AppLocalizeBehavior
 *             ],
 *             properties: {
 *               language: {
 *                 value: 'en'
 *               },
 *             }
 *             attached: function() {
 *               this.loadResources(this.resolveUrl('locales.json'));
 *             },
 *           });
 *        &lt;/script>
 *     </dom-module>
 * Alternatively, you can also inline your resources inside the app itself:
 *     <dom-module id="x-app">
 *        <template>
 *         <div>{{localize('hello', 'name', 'Batman')}}</div>
 *        </template>
 *        <script>
 *           Polymer({
 *             is: "x-app",
 *             behaviors: [
 *               Polymer.AppLocalizeBehavior
 *             ],
 *             properties: {
 *               language: {
 *                 value: 'en'
 *               },
 *               resources: {
 *                 value: function() {
 *                   return {
 *                     'en': { 'hello': 'My name is {name}.' },
 *                     'fr': { 'hello': 'Je m\'apelle {name}.' }
 *                   }
 *               }
 *             }
 *           });
 *        &lt;/script>
 *     </dom-module>
 */

@BowerImport(ref:'PolymerElements/app-localize-behavior#v2.0.0',import:"app-localize-behavior/app-localize-behavior.html",name:'app-localize-behavior')
@JS('AppLocalizeBehavior')
abstract class AppLocalizeBehavior  {
  /**
   * The language used for translation.
   */
  external String get language;
  external set language(String value);

  /**
   * The dictionary of localized messages, for each of the languages that
   * are going to be used. See http://formatjs.io/guides/message-syntax/ for
   * more information on the message syntax.
   * For example, a valid dictionary would be:
   * this.resources = {
   *  'en': { 'greeting': 'Hello!' }, 'fr' : { 'greeting': 'Bonjour!' }
   * }
   */
  external  get resources;
  external set resources( value);

  /**
   * Optional dictionary of user defined formats, as explained here:
   * http://formatjs.io/guides/message-syntax/#custom-formats
   * For example, a valid dictionary of formats would be:
   * this.formats = {
   *    number: { USD: { style: 'currency', currency: 'USD' } }
   * }
   */
  external  get formats;
  external set formats( value);

  /**
   * If true, will use the provided key when
   * the translation does not exist for that key.
   */
  external bool get useKeyIfMissing;
  external set useKeyIfMissing(bool value);

  /**
   * Translates a string to the current `language`. Any parameters to the
   * string should be passed in order, as follows:
   * `localize(stringKey, param1Name, param1Value, param2Name, param2Value)`
   */
  external Function get localize;
  external set localize(Function value);

  /**
   * If true, will bubble up the event to the parents
   */
  external bool get bubbleEvent;
  external set bubbleEvent(bool value);

  /**
   * Translates a string to the current `language`. Any parameters to the
   * string should be passed in order, as follows:
   * `localize(stringKey, param1Name, param1Value, param2Name, param2Value)`
   */
  // external void localize();

  /**
   * 
   */
  external void loadResources([String path,String language, String merge]);

}

