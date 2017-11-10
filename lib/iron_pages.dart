@JS('Polymer')
library IronPages;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_resizable_behavior.dart' as imp0;
import 'package:polymer_elements/iron_selectable.dart' as imp1;

part 'iron_pages.polymerize.dart';

/**
 * `iron-pages` is used to select one of its children to show. One use is to cycle through a list of
 * children "pages".
 * Example:
 *     <iron-pages selected="0">
 *       <div>One</div>
 *       <div>Two</div>
 *       <div>Three</div>
 *     </iron-pages>
 *     <script>
 *       document.addEventListener('click', function(e) {
 *         var pages = document.querySelector('iron-pages');
 *         pages.selectNext();
 *       });
 *     </script>
 * @group Iron Elements
 * @hero hero.svg
 * @demo demo/index.html
 */

@JS('IronPages')
@PolymerRegister('iron-pages',native:true)
@BowerImport(ref:'PolymerElements/iron-pages#v2.0.0',import:"iron-pages/iron-pages.html",name:'iron-pages')
abstract class IronPages extends PolymerElement implements imp0.IronResizableBehavior,imp1.IronSelectableBehavior {
  /**
   * handler immediately changes it back
   */
  external String get activateEvent;
  external set activateEvent(String value);


}
