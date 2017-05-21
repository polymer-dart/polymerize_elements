@JS('Polymer')
library Polymer.IronA11yKeysBehavior;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';


/**
 * `Polymer.IronA11yKeysBehavior` provides a normalized interface for processing
 * keyboard commands that pertain to [WAI-ARIA best practices](http://www.w3.org/TR/wai-aria-practices/#kbd_general_binding).
 * The element takes care of browser differences with respect to Keyboard events
 * and uses an expressive syntax to filter key presses.
 * Use the `keyBindings` prototype property to express what combination of keys
 * will trigger the callback. A key binding has the format
 * `"KEY+MODIFIER:EVENT": "callback"` (`"KEY": "callback"` or
 * `"KEY:EVENT": "callback"` are valid as well). Some examples:
 *      keyBindings: {
 *        'space': '_onKeydown', // same as 'space:keydown'
 *        'shift+tab': '_onKeydown',
 *        'enter:keypress': '_onKeypress',
 *        'esc:keyup': '_onKeyup'
 *      }
 * The callback will receive with an event containing the following information in `event.detail`:
 *      _onKeydown: function(event) {
 *        console.log(event.detail.combo); // KEY+MODIFIER, e.g. "shift+tab"
 *        console.log(event.detail.key); // KEY only, e.g. "tab"
 *        console.log(event.detail.event); // EVENT, e.g. "keydown"
 *        console.log(event.detail.keyboardEvent); // the original KeyboardEvent
 *      }
 * Use the `keyEventTarget` attribute to set up event handlers on a specific
 * node.
 * See the [demo source code](https://github.com/PolymerElements/iron-a11y-keys-behavior/blob/master/demo/x-key-aware.html)
 * for an example.
 */

@BowerImport(ref:'PolymerElements/iron-a11y-keys-behavior#v2.0.0',import:"iron-a11y-keys-behavior/iron-a11y-keys-behavior.html",name:'iron-a11y-keys-behavior')
@JS('IronA11yKeysBehavior')
abstract class IronA11yKeysBehavior  {
  /**
   * The EventTarget that will be firing relevant KeyboardEvents. Set it to
   * `null` to disable the listeners.
   * @type {?EventTarget}
   */
  external  get keyEventTarget;
  external set keyEventTarget( value);

  /**
   * If true, this property will cause the implementing element to
   * automatically stop propagation on any handled KeyboardEvents.
   */
  external bool get stopKeyboardEventPropagation;
  external set stopKeyboardEventPropagation(bool value);

  /**
   * 
   */
  external void registered();

  /**
   * 
   */
  external void attached();

  /**
   * 
   */
  external void detached();

  /**
   * Can be used to imperatively add a key binding to the implementing
   * element. This is the imperative equivalent of declaring a keybinding
   * in the `keyBindings` prototype property.
   */
  external void addOwnKeyBinding();

  /**
   * When called, will remove all imperatively-added key bindings.
   */
  external void removeOwnKeyBindings();

  /**
   * Returns true if a keyboard event matches `eventString`.
   * @param {KeyboardEvent} event
   * @param {string} eventString
   * @return {boolean}
   */
  external void keyboardEventMatchesKeys();

}

