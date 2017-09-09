@JS('Polymer')
library IronLocation;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
part 'iron_location.polymerize.dart';

/**
 * The `iron-location` element manages binding to and from the current URL.
 * iron-location is the first, and lowest level element in the Polymer team's
 * routing system. This is a beta release of iron-location as we continue work
 * on higher level elements, and as such iron-location may undergo breaking
 * changes.
 * #### Properties
 * When the URL is: `/search?query=583#details` iron-location's properties will be:
 *   - path: `'/search'`
 *   - query: `'query=583'`
 *   - hash: `'details'`
 * These bindings are bidirectional. Modifying them will in turn modify the URL.
 * iron-location is only active while it is attached to the document.
 * #### Links
 * While iron-location is active in the document it will intercept clicks on links
 * within your site, updating the URL pushing the updated URL out through the
 * databinding system. iron-location only intercepts clicks with the intent to
 * open in the same window, so middle mouse clicks and ctrl/cmd clicks work fine.
 * You can customize this behavior with the `urlSpaceRegex`.
 * #### Dwell Time
 * iron-location protects against accidental history spamming by only adding
 * entries to the user's history if the URL stays unchanged for `dwellTime`
 * milliseconds.
 * @demo demo/index.html
 */

@JS('IronLocation')
@PolymerRegister('iron-location',native:true)
@BowerImport(ref:'PolymerElements/iron-location#v2.0.0',import:"iron-location/iron-location.html",name:'iron-location')
abstract class IronLocation extends PolymerElement  {
  /**
   * The pathname component of the URL.
   */
  external String get path;
  external set path(String value);

  /**
   * The query string portion of the URL.
   */
  external get JS$query;
  external set JS$queryPart(v);
  /**
   * The hash component of the URL.
   */
  external String get hash;
  external set hash(String value);

  /**
   * If the user was on a URL for less than `dwellTime` milliseconds, it
   * won't be added to the browser's history, but instead will be replaced
   * by the next entry.
   * This is to prevent large numbers of entries from clogging up the user's
   * browser history. Disable by setting to a negative number.
   */
  external num get dwellTime;
  external set dwellTime(num value);

  /**
   * A regexp that defines the set of URLs that should be considered part
   * of this web app.
   * Clicking on a link that matches this regex won't result in a full page
   * navigation, but will instead just update the URL state in place.
   * This regexp is given everything after the origin in an absolute
   * URL. So to match just URLs that start with /search/ do:
   *     url-space-regex="^/search/"
   * @type {string|RegExp}
   */
  external String get urlSpaceRegex;
  external set urlSpaceRegex(String value);


}
