@JS('PolymerElements')
library IronIconsetSvg;
import 'dart:html';
import 'package:js/js.dart';
import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_meta.dart' as imp0;

/**
 * The `iron-iconset-svg` element allows users to define their own icon sets
 * that contain svg icons. The svg icon elements should be children of the
 * `iron-iconset-svg` element. Multiple icons should be given distinct id's.
 * Using svg elements to create icons has a few advantages over traditional
 * bitmap graphics like jpg or png. Icons that use svg are vector based so
 * they are resolution independent and should look good on any device. They
 * are stylable via css. Icons can be themed, colorized, and even animated.
 * Example:
 *     <iron-iconset-svg name="my-svg-icons" size="24">
 *       <svg>
 *         <defs>
 *           <g id="shape">
 *             <rect x="12" y="0" width="12" height="24" />
 *             <circle cx="12" cy="12" r="12" />
 *           </g>
 *         </defs>
 *       </svg>
 *     </iron-iconset-svg>
 * This will automatically register the icon set "my-svg-icons" to the iconset
 * database.  To use these icons from within another element, make a
 * `iron-iconset` element and call the `byId` method
 * to retrieve a given iconset. To apply a particular icon inside an
 * element use the `applyIcon` method. For example:
 *     iconset.applyIcon(iconNode, 'car');
 */

//@JS('PaperButton')
@PolymerRegister('iron-iconset-svg',native:true)
@BowerImport(ref:'PolymerElements/iron-iconset-svg#2.0-preview',import:"iron-iconset-svg/iron-iconset-svg.html",name:'iron-iconset-svg')
abstract class IronIconsetSvg extends PolymerElement  {
  /**
   * The name of the iconset.
   */
  String get name;
  set name(String value);

  /**
   * The size of an individual icon. Note that icons must be square.
   */
  num get size;
  set size(num value);

  /**
   * Set to true to enable mirroring of icons where specified when they are
   * stamped. Icons that should be mirrored should be decorated with a
   * `mirror-in-rtl` attribute.
   * NOTE: For performance reasons, direction will be resolved once per
   * document per iconset, so moving icons in and out of RTL subtrees will
   * not cause their mirrored state to change.
   */
  bool get rtlMirroring;
  set rtlMirroring(bool value);

}
