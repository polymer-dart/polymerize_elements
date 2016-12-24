@JS('PolymerElements')
library PaperCard;
import 'dart:html';
import 'package:js/js.dart';
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

//@JS('PaperButton')
@PolymerRegister('paper-card',native:true)
@BowerImport(ref:'PolymerElements/paper-card#2.0-preview',import:"paper-card/paper-card.html",name:'paper-card')
abstract class PaperCard extends PolymerElement  {
  /**
   * The title of the card.
   */
  String get heading;
  set heading(String value);

  /**
   * The url of the title image of the card.
   */
  String get image;
  set image(String value);

  /**
   * The text alternative of the card's title image.
   */
  String get alt;
  set alt(String value);

  /**
   * When `true`, any change to the image url property will cause the
   * `placeholder` image to be shown until the image is fully rendered.
   */
  bool get preloadImage;
  set preloadImage(bool value);

  /**
   * When `preloadImage` is true, setting `fadeImage` to true will cause the
   * image to fade into place.
   */
  bool get fadeImage;
  set fadeImage(bool value);

  /**
   * This image will be used as a background/placeholder until the src image has
   * loaded. Use of a data-URI for placeholder is encouraged for instant rendering.
   */
  String get placeholderImage;
  set placeholderImage(String value);

  /**
   * The z-depth of the card, from 0-5.
   */
  num get elevation;
  set elevation(num value);

  /**
   * Set this to true to animate the card shadow when setting a new
   * `z` value.
   */
  bool get animatedShadow;
  set animatedShadow(bool value);

  /**
   * Read-only property used to pass down the `animatedShadow` value to
   * the underlying paper-material style (since they have different names).
   */
  bool get animated;
  set animated(bool value);

}
