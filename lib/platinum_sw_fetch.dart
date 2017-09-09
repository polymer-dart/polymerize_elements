@JS('Polymer')
library PlatinumSwFetch;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/platinum_sw_registerable_behavior.dart' as imp0;
part 'platinum_sw_fetch.polymerize.dart';
/**
 * The `<platinum-sw-fetch>` element creates custom [`fetch` event](https://slightlyoff.github.io/ServiceWorker/spec/service_worker/#fetch-event-section)
 * handlers for given URL patterns. Possible use cases include:
 * - Using a special caching strategy for specific URLs.
 * - Returning static "fallback" responses instead of network errors when a remote API
 * is unavailable.
 * In short, any scenario in which you'd like a service worker to intercept network
 * requests and provide custom response handling.
 * If you'd like a single caching policy applied to all same-origin requests, then an alternative
 * to using `<platinum-sw-fetch>` is to use `<platinum-sw-cache>` with the `defaultCacheStategy`
 * property set.
 * Under the hood, the [sw-toolbox](https://github.com/googlechrome/sw-toolbox) library is used
 * for all the request handling logic.
 * `<platinum-sw-fetch>` needs to be a child element of `<platinum-sw-register>`.
 * An example configuration is:
 *     <platinum-sw-register auto-register>
 *       <platinum-sw-import-script href="custom-fetch-handler.js"></platinum-sw-import-script>
 *       <platinum-sw-fetch handler="customFetchHandler"
 *                          path="/(.*)/customFetch"></platinum-sw-fetch>
 *     </platinum-sw-register>
 * This implies that there's a `custom-fetch-handler.js` file in the same directory as the current
 * page, which defines a `sw-toolbox` compliant
 * [request handler](https://github.com/googlechrome/sw-toolbox#request-handlers) named
 * `customFetchHandler`. This definition is imported using `<platinum-sw-import-script>`. The
 * `<platinum-sw-fetch>` element takes care of mapping which request paths are handled by
 * `customFetchHandler`.
 * Anything not matching the `path` pattern is ignored by `<platinum-sw-fetch>`,
 * and it's possible to have multiple `<platinum-sw-fetch>` elements that each define different
 * paths and different handlers. The path matching is performed top-down, starting with the first
 * `<platinum-sw-fetch>` element.
 * The `path` will, by default, only match same-origin requests. If you'd like to define a custom
 * handler for requests on a specific cross-origin domain, you must use the `origin` parameter
 * in conjunction with `path` to match the domains you'd like to handle.
 */

@JS('PlatinumSwFetch')
@PolymerRegister('platinum-sw-fetch',native:true)
@BowerImport(ref:'PolymerElements/platinum-sw#2.0-preview',import:"platinum-sw/platinum-sw-fetch.html",name:'platinum-sw')
abstract class PlatinumSwFetch extends PolymerElement implements imp0.PlatinumSwRegisterableBehavior {


}
