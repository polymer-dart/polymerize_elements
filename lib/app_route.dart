@JS('Polymer')
library AppRoute;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
part 'app_route.polymerize.dart';

/**
 * `app-route` is an element that enables declarative, self-describing routing
 * for a web app.
 * > *n.b. app-route is still in beta. We expect it will need some changes. We're counting on your feedback!*
 * In its typical usage, a `app-route` element consumes an object that describes
 * some state about the current route, via the `route` property. It then parses
 * that state using the `pattern` property, and produces two artifacts: some `data`
 * related to the `route`, and a `tail` that contains the rest of the `route` that
 * did not match.
 * Here is a basic example, when used with `app-location`:
 *     <app-location route="{{route}}"></app-location>
 *     <app-route
 *         route="{{route}}"
 *         pattern="/:page"
 *         data="{{data}}"
 *         tail="{{tail}}">
 *     </app-route>
 * In the above example, the `app-location` produces a `route` value. Then, the
 * `route.path` property is matched by comparing it to the `pattern` property. If
 * the `pattern` property matches `route.path`, the `app-route` will set or update
 * its `data` property with an object whose properties correspond to the parameters
 * in `pattern`. So, in the above example, if `route.path` was `'/about'`, the value
 * of `data` would be `{"page": "about"}`.
 * The `tail` property represents the remaining part of the route state after the
 * `pattern` has been applied to a matching `route`.
 * Here is another example, where `tail` is used:
 *     <app-location route="{{route}}"></app-location>
 *     <app-route
 *         route="{{route}}"
 *         pattern="/:page"
 *         data="{{routeData}}"
 *         tail="{{subroute}}">
 *     </app-route>
 *     <app-route
 *         route="{{subroute}}"
 *         pattern="/:id"
 *         data="{{subrouteData}}">
 *     </app-route>
 * In the above example, there are two `app-route` elements. The first
 * `app-route` consumes a `route`. When the `route` is matched, the first
 * `app-route` also produces `routeData` from its `data`, and `subroute` from
 * its `tail`. The second `app-route` consumes the `subroute`, and when it
 * matches, it produces an object called `subrouteData` from its `data`.
 * So, when `route.path` is `'/about'`, the `routeData` object will look like
 * this: `{ page: 'about' }`
 * And `subrouteData` will be null. However, if `route.path` changes to
 * `'/article/123'`, the `routeData` object will look like this:
 * `{ page: 'article' }`
 * And the `subrouteData` will look like this: `{ id: '123' }`
 * `app-route` is responsive to bi-directional changes to the `data` objects
 * they produce. So, if `routeData.page` changed from `'article'` to `'about'`,
 * the `app-route` will update `route.path`. This in-turn will update the
 * `app-location`, and cause the global location bar to change its value.
 * @element app-route
 * @demo demo/index.html
 * @demo demo/data-loading-demo.html
 * @demo demo/simple-demo.html
 */

@JS('AppRoute')
@PolymerRegister('app-route',native:true)
@BowerImport(ref:'PolymerElements/app-route#v2.0.0',import:"app-route/app-route.html",name:'app-route')
abstract class AppRoute extends PolymerElement  {
  /**
   * The URL component managed by this element.
   */
  external  get route;
  external set route( value);

  /**
   * The pattern of slash-separated segments to match `route.path` against.
   * For example the pattern "/foo" will match "/foo" or "/foo/bar"
   * but not "/foobar".
   * Path segments like `/:named` are mapped to properties on the `data` object.
   */
  external String get pattern;
  external set pattern(String value);

  /**
   * The parameterized values that are extracted from the route as
   * described by `pattern`.
   */
  external  get data;
  external set data( value);

  /**
   * @type {?Object}
   */
  external  get queryParams;
  external set queryParams( value);

  /**
   * The part of `route.path` NOT consumed by `pattern`.
   */
  external  get tail;
  external set tail( value);

  /**
   * Whether the current route is active. True if `route.path` matches the
   * `pattern`, false otherwise.
   */
  external bool get active;
  external set active(bool value);


}
