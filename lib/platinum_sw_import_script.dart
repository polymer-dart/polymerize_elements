@JS('Polymer')
library PlatinumSwImportScript;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/platinum_sw_registerable_behavior.dart' as imp0;
part 'platinum_sw_import_script.polymerize.dart';
/**
 * The `<platinum-sw-import-script>` element is used to import a JavaScript file that is executed
 * each time the service worker starts up.
 * `<platinum-sw-import-script>` needs to be a child element of `<platinum-sw-register>`.
 * A common use case is to define a custom request handler for a `fetch` event, but it can be used
 * for any type of code that you want to be executed by the service worker.
 *     <platinum-sw-register auto-register>
 *       <platinum-sw-import-script href="custom-fetch-handler.js"></platinum-sw-import-script>
 *       <platinum-sw-fetch handler="customFetchHandler"
 *                          path="/(.*)/customFetch"></platinum-sw-fetch>
 *     </platinum-sw-register>
 * You can specify multiple `<platinum-sw-import-script>` elements, each one corresponding to a
 * different JavaScript file. The JavaScript files will be loaded in the order in which the
 * `<platinum-sw-import-script>` elements appear. Under the hood, this results in an
 * [`importScripts()`](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/importScripts)
 * call made from the context of the service worker.
 */

@JS('PlatinumSwImportScript')
@PolymerRegister('platinum-sw-import-script',native:true)
@BowerImport(ref:'PolymerElements/platinum-sw#2.0-preview',import:"platinum-sw/platinum-sw-import-script.html",name:'platinum-sw')
abstract class PlatinumSwImportScript extends PolymerElement implements imp0.PlatinumSwRegisterableBehavior {


}
