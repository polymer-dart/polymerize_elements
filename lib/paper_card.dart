@JS('Polymer')
library PaperCard;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';


/**
 * Material design: [Cards](https://www.google.com/design/spec/components/cards.html)
 * `paper-card` is a container with a drop shadow.
 * Example:
 *     <paper-card heading="Card Title">
 *       <div class="card-content">Some content</div>
 *       <div class="card-actions">
 *         <paper-button>Some action</paper-button>
 *       </div>
 *     </paper-card>
 * Example - top card image:
 *     <paper-card heading="Card Title" image="/path/to/image.png" alt="image">
 *       ...
 *     </paper-card>
 * ### Accessibility
 * By default, the `aria-label` will be set to the value of the `heading` attribute.
 * ### Styling
 * The following custom properties and mixins are available for styling:
 * Custom property | Description | Default
 * ----------------|-------------|----------
 * `--paper-card-background-color` | The background color of the card | `--primary-background-color`
 * `--paper-card-header-color` | The color of the header text | `#000`
 * `--paper-card-header` | Mixin applied to the card header section | `{}`
 * `--paper-card-header-text` | Mixin applied to the title in the card header section | `{}`
 * `--paper-card-header-image` | Mixin applied to the image in the card header section | `{}`
 * `--paper-card-header-image-text` | Mixin applied to the text overlapping the image in the card header section | `{}`
 * `--paper-card-content` | Mixin applied to the card content section| `{}`
 * `--paper-card-actions` | Mixin applied to the card action section | `{}`
 * `--paper-card` | Mixin applied to the card | `{}`
 * @group Paper Elements
 * @element paper-card
 * @demo demo/index.html
 */

@JS('PaperCard')
@PolymerRegister('paper-card',native:true)
@BowerImport(ref:'PolymerElements/paper-card#v2.0.0',import:"paper-card/paper-card.html",name:'paper-card')
abstract class PaperCard extends PolymerElement  {
  /**
   * The title of the card.
   */
  external String get heading;
  external set heading(String value);

  /**
   * The url of the title image of the card.
   */
  external String get image;
  external set image(String value);

  /**
   * The text alternative of the card's title image.
   */
  external String get alt;
  external set alt(String value);

  /**
   * When `true`, any change to the image url property will cause the
   * `placeholder` image to be shown until the image is fully rendered.
   */
  external bool get preloadImage;
  external set preloadImage(bool value);

  /**
   * When `preloadImage` is true, setting `fadeImage` to true will cause the
   * image to fade into place.
   */
  external bool get fadeImage;
  external set fadeImage(bool value);

  /**
   * This image will be used as a background/placeholder until the src image has
   * loaded. Use of a data-URI for placeholder is encouraged for instant rendering.
   */
  external String get placeholderImage;
  external set placeholderImage(String value);

  /**
   * The z-depth of the card, from 0-5.
   */
  external num get elevation;
  external set elevation(num value);

  /**
   * Set this to true to animate the card shadow when setting a new
   * `z` value.
   */
  external bool get animatedShadow;
  external set animatedShadow(bool value);

  /**
   * Read-only property used to pass down the `animatedShadow` value to
   * the underlying paper-material style (since they have different names).
   */
  external bool get animated;
  external set animated(bool value);


}
