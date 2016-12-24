@JS('PolymerElements')
library PaperMaterial;
import 'dart:html';
import 'package:js/js.dart';
import 'package:polymer_element/polymer_element.dart';


/**
 * Material design: [Cards](https://www.google.com/design/spec/components/cards.html)
 * `paper-material` is a container that renders two shadows on top of each other to
 * create the effect of a lifted piece of paper.
 * Example:
 *     <paper-material elevation="1">
 *       ... content ...
 *     </paper-material>
 * @group Paper Elements
 * @demo demo/index.html
 */

//@JS('PaperButton')
@PolymerRegister('paper-material',native:true)
@BowerImport(ref:'PolymerElements/paper-material#2.0-preview',import:"paper-material/paper-material.html",name:'paper-material')
abstract class PaperMaterial extends PolymerElement  {
  /**
   * The z-depth of this element, from 0-5. Setting to 0 will remove the
   * shadow, and each increasing number greater than 0 will be "deeper"
   * than the last.
   * @attribute elevation
   * @type number
   * @default 1
   */
  num get elevation;
  set elevation(num value);

  /**
   * Set this to true to animate the shadow when setting a new
   * `elevation` value.
   * @attribute animated
   * @type boolean
   * @default false
   */
  bool get animated;
  set animated(bool value);

}
