@JS('PolymerElements')
library AppRouteConverter;
import 'dart:html';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/app_route_converter_behavior.dart' as imp0;

/**
 * `app-route-converter` provides a means to convert a path and query
 * parameters into a route object and vice versa. This produced route object
 * is to be fed into route-consuming elements such as `app-route`.
 * > n.b. This element is intended to be a primitive of the routing system and for
 * creating bespoke routing solutions from scratch. To simply include routing in
 * an app, please refer to [app-location](https://github.com/PolymerElements/app-route/blob/master/app-location.html)
 * and [app-route](https://github.com/PolymerElements/app-route/blob/master/app-route.html).
 * An example of a route object that describes
 * `https://elements.polymer-project.org/elements/app-route-converter?foo=bar&baz=qux`
 * and should be passed to other `app-route` elements:
 *     {
 *       prefix: '',
 *       path: '/elements/app-route-converter',
 *       __queryParams: {
 *         foo: 'bar',
 *         baz: 'qux'
 *       }
 *     }
 * `__queryParams` is private to discourage directly data-binding to it. This is so
 * that routing elements like `app-route` can intermediate changes to the query
 * params and choose whether to propagate them upstream or not. `app-route` for
 * example will not propagate changes to its `queryParams` property if it is not
 * currently active. A public queryParams object will also be produced in which you
 * should perform data-binding operations.
 * Example Usage:
 *     <iron-location path="{{path}}" query="{{query}}"></iron-location>
 *     <iron-query-params
 *         params-string="{{query}}"
 *         params-object="{{queryParams}}">
 *     </iron-query-params>
 *     <app-route-converter
 *         path="{{path}}"
 *         query-params="{{queryParams}}"
 *         route="{{route}}">
 *     </app-route-converter>
 *     <app-route route='{{route}}' pattern='/:page' data='{{data}}'>
 *     </app-route>
 * This is a simplified implementation of the `app-location` element. Here the
 * `iron-location` produces a path and a query, the `iron-query-params` consumes
 * the query and produces a queryParams object, and the `app-route-converter`
 * consumes the path and the query params and converts it into a route which is in
 * turn is consumed by the `app-route`.
 * @element app-route-converter
 * @demo demo/index.html
 */

@JS('AppRouteConverter')
@PolymerRegister('app-route-converter',native:true)
@BowerImport(ref:'PolymerElements/app-route#2.0-preview',import:"app-route/app-route-converter.html",name:'app-route')
abstract class AppRouteConverter extends PolymerElement with imp0.AppRouteConverterBehavior {

}
