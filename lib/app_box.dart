@JS('PolymerElements')
library AppBox;
import 'dart:html';
import 'package:js/js.dart';
import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/app_scroll_effects_behavior.dart' as imp0;
import 'package:polymer_elements/iron_resizable_behavior.dart' as imp1;

/**
 * app-box is a container element that can have scroll effects - visual effects based on
 * scroll position. For example, the parallax effect can be used to move an image at a slower
 * rate than the foreground.
 * ```html
 * <app-box style="height: 100px;" effects="parallax-background">
 *   <img slot="background" src="picture.png" style="width: 100%; height: 600px;">
 * </app-box>
 * ```
 * Notice the `background` attribute in the `img` element; this attribute specifies that that
 * image is used as the background. By adding the background to the light dom, you can compose
 * backgrounds that can change dynamically. Alternatively, the mixin `--app-box-background-front-layer`
 * allows to style the background. For example:
 * ```css
 *   .parallaxAppBox {
 *     --app-box-background-front-layer: {
 *       background-image: url(picture.png);
 *     };
 *   }
 * ```
 * Finally, app-box can have content inside. For example:
 * ```html
 * <app-box effects="parallax-background">
 *   <h2>Sub title</h2>
 * </app-box>
 * ```
 * #### Importing the effects
 * To use the scroll effects, you must explicitly import them in addition to `app-box`:
 * ```html
 * <link rel="import" href="/bower_components/app-layout/app-scroll-effects/app-scroll-effects.html">
 * ```
 * #### List of effects
 * * **parallax-background**
 * A simple parallax effect that vertically translates the backgrounds based on a fraction
 * of the scroll position. For example:
 * ```css
 * app-header {
 *   --app-header-background-front-layer: {
 *     background-image: url(...);
 *   };
 * }
 * ```
 * ```html
 * <app-header style="height: 300px;" effects="parallax-background">
 *   <app-toolbar>App name</app-toolbar>
 * </app-header>
 * ```
 * The fraction determines how far the background moves relative to the scroll position.
 * This value can be assigned via the `scalar` config value and it is typically a value
 * between 0 and 1 inclusive. If `scalar=0`, the background doesn't move away from the header.
 * ## Styling
 * Mixin | Description | Default
 * ----------------|-------------|----------
 * `--app-box-background-front-layer` | Applies to the front layer of the background | {}
 * @group App Elements
 * @element app-box
 * @demo app-box/demo/document-scroll.html Document Scroll
 * @demo app-box/demo/scrolling-region.html Scrolling Region
 */

//@JS('PaperButton')
@PolymerRegister('app-box',native:true)
@BowerImport(ref:'PolymerElements/app-layout#2.0-preview',import:"app-layout/app-box/app-box.html",name:'app-layout')
abstract class AppBox extends PolymerElement with imp0.AppScrollEffectsBehavior,imp1.IronResizableBehavior {

}
