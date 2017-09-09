@JS('Polymer')
library PlatinumSwCache;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/platinum_sw_registerable_behavior.dart' as imp0;
part 'platinum_sw_cache.polymerize.dart';
/**
 * The `<platinum-sw-cache>` element makes it easy to precache specific resources, perform runtime
 * caching, and serve your cached resources when a network is unavailable.
 * Under the hood, the [sw-toolbox](https://github.com/googlechrome/sw-toolbox) library is used
 * for all the caching and request handling logic.
 * `<platinum-sw-cache>` needs to be a child element of `<platinum-sw-register>`.
 * A simple, yet useful configuration is
 *     <platinum-sw-register auto-register>
 *       <platinum-sw-cache></platinum-sw-cache>
 *     </platinum-sw-register>
 * This is enough to have all of the resources your site uses cached at runtime, both local and
 * cross-origin.
 * (It uses the default `defaultCacheStrategy` of "networkFirst".)
 * When there's a network available, visits to your site will go against the network copy of the
 * resources, but if someone visits your site when they're offline, all the cached resources will
 * be used.
 */

@JS('PlatinumSwCache')
@PolymerRegister('platinum-sw-cache',native:true)
@BowerImport(ref:'PolymerElements/platinum-sw#2.0-preview',import:"platinum-sw/platinum-sw-cache.html",name:'platinum-sw')
abstract class PlatinumSwCache extends PolymerElement implements imp0.PlatinumSwRegisterableBehavior {
  /**
   * The caching strategy used for all requests, both for local and cross-origin resources.
   * For a list of strategies, see the [`sw-toolbox` documentation](https://github.com/GoogleChrome/sw-toolbox#built-in-handlers).
   * Specify a strategy as a string, without the "toolbox" prefix. E.g., for
   * `toolbox.networkFirst`, set `defaultCacheStrategy` to "networkFirst".
   * Note that the "cacheFirst" and "cacheOnly" strategies are not recommended, and may be
   * explicitly prevented in a future release. More information can be found at
   * https://github.com/PolymerElements/platinum-sw#cacheonly--cachefirst-defaultcachestrategy-considered-harmful
   * @see {@link https://github.com/GoogleChrome/sw-toolbox#built-in-handlers}
   */
  external String get defaultCacheStrategy;
  external set defaultCacheStrategy(String value);

  /**
   * If set to true, this element will not set up service worker caching. This is useful to
   * conditionally enable or disable caching depending on the build environment.
   */
  external bool get disabled;
  external set disabled(bool value);

  /**
   * Used to provide a list of URLs that are always precached as soon as the service worker is
   * installed. Corresponds to  [`sw-toolbox`'s `precache()` method](https://github.com/GoogleChrome/sw-toolbox#toolboxprecachearrayofurls).
   * This is useful for URLs that that wouldn't necessarily be picked up by runtime caching,
   * i.e. a list of resources that are needed by one of the subpages of your site, or a list of
   * resources that are only loaded via user interaction.
   * `precache` can be used in conjunction with `cacheConfigFile`, and the two arrays will be
   * concatenated.
   * @see {@link https://github.com/GoogleChrome/sw-toolbox#toolboxprecachearrayofurls}
   */
  external List get precache;
  external set precache(List value);


}
