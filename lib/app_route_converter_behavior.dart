@JS('Polymer')
library Polymer.AppRouteConverterBehavior;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
part 'app_route_converter_behavior.polymerize.dart';

/**
 * Provides bidirectional mapping between `path` and `queryParams` and a
 * app-route compatible `route` object.
 * For more information, see the docs for `app-route-converter`.
 */

@BowerImport(ref:'PolymerElements/app-route#v2.0.2',import:"app-route/app-route-converter-behavior.html",name:'app-route')
@JS('AppRouteConverterBehavior')
abstract class AppRouteConverterBehavior  {
  /**
   * A model representing the deserialized path through the route tree, as
   * well as the current queryParams.
   * A route object is the kernel of the routing system. It is intended to
   * be fed into consuming elements such as `app-route`.
   * @type {?Object}
   */
  external  get route;
  external set route( value);

  /**
   * A set of key/value pairs that are universally accessible to branches of
   * the route tree.
   * @type {?Object}
   */
  external  get queryParams;
  external set queryParams( value);

  /**
   * The serialized path through the route tree. This corresponds to the
   * `window.location.pathname` value, and will update to reflect changes
   * to that value.
   */
  external String get path;
  external set path(String value);

  /**
   * 
   */
  external void created();

}

