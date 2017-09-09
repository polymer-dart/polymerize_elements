@JS('Polymer')
library PaperBadge;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_resizable_behavior.dart' as imp0;
part 'paper_badge.polymerize.dart';
/**
 * `<paper-badge>` is a circular text badge that is displayed on the top right
 * corner of an element, representing a status or a notification. It will badge
 * the anchor element specified in the `for` attribute, or, if that doesn't exist,
 * centered to the parent node containing it.
 * Badges can also contain an icon by adding the `icon` attribute and setting
 * it to the id of the desired icon. Please note that you should still set the
 * `label` attribute in order to keep the element accessible. Also note that you will need to import
 * the `iron-iconset` that includes the icons you want to use. See [iron-icon](../iron-icon)
 * for more information on how to import and use icon sets.
 * Example:
 *     <div style="display:inline-block">
 *       <span>Inbox</span>
 *       <paper-badge label="3"></paper-badge>
 *     </div>
 *     <div>
 *       <paper-button id="btn">Status</paper-button>
 *       <paper-badge icon="favorite" for="btn" label="favorite icon"></paper-badge>
 *     </div>
 *     <div>
 *       <paper-icon-button id="account-box" icon="account-box" alt="account-box"></paper-icon-button>
 *       <paper-badge icon="social:mood" for="account-box" label="mood icon"></paper-badge>
 *     </div>
 * ### Styling
 * The following custom properties and mixins are available for styling:
 * Custom property | Description | Default
 * ----------------|-------------|----------
 * `--paper-badge-background` | The background color of the badge | `--accent-color`
 * `--paper-badge-opacity` | The opacity of the badge | `1.0`
 * `--paper-badge-text-color` | The color of the badge text | `white`
 * `--paper-badge-width` | The width of the badge circle | `20px`
 * `--paper-badge-height` | The height of the badge circle | `20px`
 * `--paper-badge-margin-left` | Optional spacing added to the left of the badge. | `0px`
 * `--paper-badge-margin-bottom` | Optional spacing added to the bottom of the badge. | `0px`
 * `--paper-badge` | Mixin applied to the badge | `{}`
 * @group Paper Elements
 * @element paper-badge
 * @demo demo/index.html
 */

@JS('PaperBadge')
@PolymerRegister('paper-badge',native:true)
@BowerImport(ref:'PolymerElements/paper-badge#v2.0.0',import:"paper-badge/paper-badge.html",name:'paper-badge')
abstract class PaperBadge extends PolymerElement implements imp0.IronResizableBehavior {
  /**
   * The id of the element that the badge is anchored to. This element
   * must be a sibling of the badge.
   */
  external String get JS$for;
  external set JS$for(String value);

  /**
   * The label displayed in the badge. The label is centered, and ideally
   * should have very few characters.
   */
  external String get label;
  external set label(String value);

  /**
   * An iron-icon ID. When given, the badge content will use an
   * `<iron-icon>` element displaying the given icon ID rather than the
   * label text. However, the label text will still be used for
   * accessibility purposes.
   */
  external String get icon;
  external set icon(String value);

  /**
   * Returns the target element that this badge is anchored to. It is
   * either the element given by the `for` attribute, or the immediate parent
   * of the badge.
   */
  external void target();

}
