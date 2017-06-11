@JS('Polymer')
library Polymer.PaperItemBehavior;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_button_state.dart' as imp0;
import 'package:polymer_elements/iron_control_state.dart' as imp1;

/**
 * `PaperItemBehavior` is a convenience behavior shared by <paper-item> and
 * <paper-icon-item> that manages the shared control states and attributes of
 * the items.
 */

@BowerImport(ref:'PolymerElements/paper-item#v2.0.0',import:"paper-item/paper-item-behavior.html",name:'paper-item')
@JS('PaperItemBehavior')
abstract class PaperItemBehavior implements imp0.IronButtonState,imp1.IronControlState {


}

