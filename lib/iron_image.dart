@JS('Polymer')
library IronImage;
import 'dart:html';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_flex_layout.dart' as imp0;

/**
 * `iron-image` is an element for displaying an image that provides useful sizing and
 * preloading options not found on the standard `<img>` tag.
 * The `sizing` option allows the image to be either cropped (`cover`) or
 * letterboxed (`contain`) to fill a fixed user-size placed on the element.
 * The `preload` option prevents the browser from rendering the image until the
 * image is fully loaded.  In the interim, either the element's CSS `background-color`
 * can be be used as the placeholder, or the `placeholder` property can be
 * set to a URL (preferably a data-URI, for instant rendering) for an
 * placeholder image.
 * The `fade` option (only valid when `preload` is set) will cause the placeholder
 * image/color to be faded out once the image is rendered.
 * Examples:
 *   Basically identical to `<img src="...">` tag:
 *     <iron-image src="http://lorempixel.com/400/400"></iron-image>
 *   Will letterbox the image to fit:
 *     <iron-image style="width:400px; height:400px;" sizing="contain"
 *       src="http://lorempixel.com/600/400"></iron-image>
 *   Will crop the image to fit:
 *     <iron-image style="width:400px; height:400px;" sizing="cover"
 *       src="http://lorempixel.com/600/400"></iron-image>
 *   Will show light-gray background until the image loads:
 *     <iron-image style="width:400px; height:400px; background-color: lightgray;"
 *       sizing="cover" preload src="http://lorempixel.com/600/400"></iron-image>
 *   Will show a base-64 encoded placeholder image until the image loads:
 *     <iron-image style="width:400px; height:400px;" placeholder="data:image/gif;base64,..."
 *       sizing="cover" preload src="http://lorempixel.com/600/400"></iron-image>
 *   Will fade the light-gray background out once the image is loaded:
 *     <iron-image style="width:400px; height:400px; background-color: lightgray;"
 *       sizing="cover" preload fade src="http://lorempixel.com/600/400"></iron-image>
 * Custom property | Description | Default
 * ----------------|-------------|----------
 * `--iron-image-placeholder` | Mixin applied to #placeholder | `{}`
 * `--iron-image-width` | Sets the width of the wrapped image | `auto`
 * `--iron-image-height` | Sets the height of the wrapped image | `auto`
 * @group Iron Elements
 * @element iron-image
 * @demo demo/index.html
 */

@JS('IronImage')
@PolymerRegister('iron-image',native:true)
@BowerImport(ref:'PolymerElements/iron-image#2.0-preview',import:"iron-image/iron-image.html",name:'iron-image')
abstract class IronImage extends PolymerElement  {
  /**
   * The URL of an image.
   */
  external String get src;
  external set src(String value);

  /**
   * A short text alternative for the image.
   */
  external String get alt;
  external set alt(String value);

  /**
   * When true, the image is prevented from loading and any placeholder is
   * shown.  This may be useful when a binding to the src property is known to
   * be invalid, to prevent 404 requests.
   */
  external bool get preventLoad;
  external set preventLoad(bool value);

  /**
   * Sets a sizing option for the image.  Valid values are `contain` (full
   * aspect ratio of the image is contained within the element and
   * letterboxed) or `cover` (image is cropped in order to fully cover the
   * bounds of the element), or `null` (default: image takes natural size).
   */
  external String get sizing;
  external set sizing(String value);

  /**
   * When a sizing option is used (`cover` or `contain`), this determines
   * how the image is aligned within the element bounds.
   */
  external String get position;
  external set position(String value);

  /**
   * When `true`, any change to the `src` property will cause the `placeholder`
   * image to be shown until the new image has loaded.
   */
  external bool get preload;
  external set preload(bool value);

  /**
   * This image will be used as a background/placeholder until the src image has
   * loaded.  Use of a data-URI for placeholder is encouraged for instant rendering.
   */
  external String get placeholder;
  external set placeholder(String value);

  /**
   * When `preload` is true, setting `fade` to true will cause the image to
   * fade into place.
   */
  external bool get fade;
  external set fade(bool value);

  /**
   * Read-only value that is true when the image is loaded.
   */
  external bool get loaded;
  external set loaded(bool value);

  /**
   * Read-only value that tracks the loading state of the image when the `preload`
   * option is used.
   */
  external bool get loading;
  external set loading(bool value);

  /**
   * Read-only value that indicates that the last set `src` failed to load.
   */
  external bool get error;
  external set error(bool value);

  /**
   * Can be used to set the width of image (e.g. via binding); size may also be
   * set via CSS.
   */
  external num get width;
  external set width(num value);

  /**
   * Can be used to set the height of image (e.g. via binding); size may also be
   * set via CSS.
   * @attribute height
   * @type number
   * @default null
   */
  external num get height;
  external set height(num value);

}
