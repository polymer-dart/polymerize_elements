@JS('Polymer')
library PaperListbox;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_menu_behavior.dart' as imp0;
part 'paper_listbox.polymerize.dart';
/**
 * Material design: [Menus](https://www.google.com/design/spec/components/menus.html)
 * `<paper-listbox>` implements an accessible listbox control with Material Design styling. The focused item
 * is highlighted, and the selected item has bolded text.
 *     <paper-listbox>
 *       <paper-item>Item 1</paper-item>
 *       <paper-item>Item 2</paper-item>
 *     </paper-listbox>
 * An initial selection can be specified with the `selected` attribute.
 *     <paper-listbox selected="0">
 *       <paper-item>Item 1</paper-item>
 *       <paper-item>Item 2</paper-item>
 *     </paper-listbox>
 * Make a multi-select listbox with the `multi` attribute. Items in a multi-select listbox can be deselected,
 * and multiple item can be selected.
 *     <paper-listbox multi>
 *       <paper-item>Item 1</paper-item>
 *       <paper-item>Item 2</paper-item>
 *     </paper-listbox>
 * ### Styling
 * The following custom properties and mixins are available for styling:
 * Custom property | Description | Default
 * ----------------|-------------|----------
 * `--paper-listbox-background-color`   | Menu background color                                            | `--primary-background-color`
 * `--paper-listbox-color`              | Menu foreground color                                            | `--primary-text-color`
 * `--paper-listbox`                    | Mixin applied to the listbox                                        | `{}`
 * ### Accessibility
 * `<paper-listbox>` has `role="listbox"` by default. A multi-select listbox will also have
 * `aria-multiselectable` set. It implements key bindings to navigate through the listbox with the up and
 * down arrow keys, esc to exit the listbox, and enter to activate a listbox item. Typing the first letter
 * of a listbox item will also focus it.
 * @group Paper Elements
 * @element paper-listbox
 * @hero hero.svg
 * @demo demo/index.html
 */

@JS('PaperListbox')
@PolymerRegister('paper-listbox',native:true)
@BowerImport(ref:'PolymerElements/paper-listbox#v2.0.0',import:"paper-listbox/paper-listbox.html",name:'paper-listbox')
abstract class PaperListbox extends PolymerElement implements imp0.IronMenuBehavior {


}
