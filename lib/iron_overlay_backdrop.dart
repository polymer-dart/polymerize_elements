@JS('PolymerElements')
library IronOverlayBackdrop;
import 'dart:html';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';


/**
 * `iron-overlay-backdrop` is a backdrop used by `Polymer.IronOverlayBehavior`. It should be a
 * singleton.
 * ### Styling
 * The following custom properties and mixins are available for styling.
 * Custom property | Description | Default
 * -------------------------------------------|------------------------|---------
 * `--iron-overlay-backdrop-background-color` | Backdrop background color                                     | #000
 * `--iron-overlay-backdrop-opacity`          | Backdrop opacity                                              | 0.6
 * `--iron-overlay-backdrop`                  | Mixin applied to `iron-overlay-backdrop`.                      | {}
 * `--iron-overlay-backdrop-opened`           | Mixin applied to `iron-overlay-backdrop` when it is displayed | {}
 */

@JS('IronOverlayBackdrop')
@PolymerRegister('iron-overlay-backdrop',native:true)
@BowerImport(ref:'PolymerElements/iron-overlay-behavior#2.0-preview',import:"iron-overlay-behavior/iron-overlay-backdrop.html",name:'iron-overlay-behavior')
abstract class IronOverlayBackdrop extends PolymerElement  {
  /**
   * Returns true if the backdrop is opened.
   */
  external bool get opened;
  external set opened(bool value);

}
