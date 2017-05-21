@JS('Polymer')
library IronMediaQuery;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';


/**
 * `iron-media-query` can be used to data bind to a CSS media query.
 * The `query` property is a bare CSS media query.
 * The `query-matches` property is a boolean representing whether the page matches that media query.
 * Example:
 *     <iron-media-query query="(min-width: 600px)" query-matches="{{queryMatches}}"></iron-media-query>
 * @group Iron Elements
 * @demo demo/index.html
 * @hero hero.svg
 * @element iron-media-query
 */

@JS('IronMediaQuery')
@PolymerRegister('iron-media-query',native:true)
@BowerImport(ref:'PolymerElements/iron-media-query#v2.0.0',import:"iron-media-query/iron-media-query.html",name:'iron-media-query')
abstract class IronMediaQuery extends PolymerElement  {
  /**
   * The Boolean return value of the media query.
   */
  external bool get queryMatches;
  external set queryMatches(bool value);

  /**
   * The CSS media query to evaluate.
   */
  external get JS$query;
  external set JS$query(v);
  /**
   * If true, the query attribute is assumed to be a complete media query
   * string rather than a single media feature.
   */
  external bool get full;
  external set full(bool value);


}
