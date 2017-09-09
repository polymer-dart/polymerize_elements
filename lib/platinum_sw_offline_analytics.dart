@JS('Polymer')
library PlatinumSwOfflineAnalytics;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/platinum_sw_registerable_behavior.dart' as imp0;
part 'platinum_sw_offline_analytics.polymerize.dart';
/**
 * The `<platinum-sw-offline-analytics>` element registers a service worker handler to
 * intercept requests for Google Analytics pings.
 * If the HTTP GET for the ping is successful (because the browser is online), then everything
 * proceeds as it normally would. If the HTTP GET fails, the ping request is saved to IndexedDB, and each time the service worker
 * script starts up it will attempt to "replay" those saved ping requests, giving up after one day
 * has passed.
 * The [`qt`](https://developers.google.com/analytics/devguides/collection/protocol/v1/parameters#qt)
 * URL parameter is automatically added to the replayed HTTP GET and set to the number of
 * milliseconds that has passed since the initial ping request was attempted, to ensure that the
 * original time attribution is correct.
 * `<platinum-sw-offline-analytics>` does not take care of setting up Google Analytics on your
 * page, and assumes that you have [properly configured](https://support.google.com/analytics/answer/1008080)
 * the Google Analytics tracking code registered elsewhere on your page.
 * Since `<platinum-sw-offline-analytics>` is only useful if the page that is being tracked with
 * Google Analytics works offline, it's best used in conjunction with the `<platinum-sw-cache>`
 * element, which takes care of caching your site's resources and serving them while offline.
 * A basic configuration is
 *     <platinum-sw-register auto-register>
 *       <platinum-sw-offline-analytics></platinum-sw-offline-analytics>
 *       <platinum-sw-cache></platinum-sw-cache>
 *     </platinum-sw-register>
 */

@JS('PlatinumSwOfflineAnalytics')
@PolymerRegister('platinum-sw-offline-analytics',native:true)
@BowerImport(ref:'PolymerElements/platinum-sw#2.0-preview',import:"platinum-sw/platinum-sw-offline-analytics.html",name:'platinum-sw')
abstract class PlatinumSwOfflineAnalytics extends PolymerElement implements imp0.PlatinumSwRegisterableBehavior {


}
