@JS('Polymer')
library MarkedElement;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
part 'marked_element.polymerize.dart';

/**
 * Element wrapper for the [marked](https://github.com/chjj/marked) library.
 * `<marked-element>` accepts Markdown source and renders it to a child
 * element with the class `markdown-html`. This child element can be styled
 * as you would a normal DOM element. If you do not provide a child element
 * with the `markdown-html` class, the Markdown source will still be rendered,
 * but to a shadow DOM child that cannot be styled.
 * ### Markdown Content
 * The Markdown source can be specified several ways:
 * #### Use the `markdown` attribute to bind markdown
 *     <marked-element markdown="`Markdown` is _awesome_!">
 *       <div slot="markdown-html"></div>
 *     </marked-element>
 * #### Use `<script type="text/markdown">` element child to inline markdown
 *     <marked-element>
 *       <div slot="markdown-html"></div>
 *       <script type="text/markdown">
 *         Check out my markdown!
 *         We can even embed elements without fear of the HTML parser mucking up their
 *         textual representation:
 *         ```html
 *         <awesome-sauce>
 *           <div>Oops, I'm about to forget to close this div.
 *         </awesome-sauce>
 *         ```
 *       </script>
 *     </marked-element>
 * #### Use `<script type="text/markdown" src="URL">` element child to specify remote markdown
 *     <marked-element>
 *       <div slot="markdown-html"></div>
 *       <script type="text/markdown" src="../guidelines.md"></script>
 *     </marked-element>
 * Note that the `<script type="text/markdown">` approach is *static*. Changes to
 * the script content will *not* update the rendered markdown!
 * Though, you can data bind to the `src` attribute to change the markdown.
 * ```html
 * <marked-element>
 *   <div slot="markdown-html"></div>
 *   <script type="text/markdown" src$="[[source]]"></script>
 * </marked-element>
 * ...
 * <script>
 *   ...
 *   this.source = '../guidelines.md';
 * </script>
 * ```
 * ### Styling
 * If you are using a child with the `markdown-html` class, you can style it
 * as you would a regular DOM element:
 *     [slot="markdown-html"] p {
 *       color: red;
 *     }
 *     [slot="markdown-html"] td:first-child {
 *       padding-left: 24px;
 *     }
 * @element marked-element
 * @group Molecules
 * @hero hero.svg
 * @demo demo/index.html
 */

@JS('MarkedElement')
@PolymerRegister('marked-element',native:true)
@BowerImport(ref:'PolymerElements/marked-element#v2.1.1',import:"marked-element/marked-element.html",name:'marked-element')
abstract class MarkedElement extends PolymerElement  {
  /**
   * The markdown source that should be rendered by this element.
   */
  external String get markdown;
  external set markdown(String value);

  /**
   * Enable GFM line breaks (regular newlines instead of two spaces for breaks)
   */
  external bool get breaks;
  external set breaks(bool value);

  /**
   * Conform to obscure parts of markdown.pl as much as possible. Don't fix any of the original markdown bugs or poor behavior.
   */
  external bool get pedantic;
  external set pedantic(bool value);

  /**
   * Function used to customize a renderer based on the [API specified in the Marked
   * library](https://github.com/chjj/marked#overriding-renderer-methods).
   * It takes one argument: a marked renderer object, which is mutated by the function.
   */
  external Function get renderer;
  external set renderer(Function value);

  /**
   * Sanitize the output. Ignore any HTML that has been input.
   */
  external bool get sanitize;
  external set sanitize(bool value);

  /**
   * Use "smart" typographic punctuation for things like quotes and dashes.
   */
  external bool get smartypants;
  external set smartypants(bool value);

  /**
   * Callback function invoked by Marked after HTML has been rendered.
   * It must take two arguments: err and text and must return the resulting text.
   */
  external Function get callback;
  external set callback(Function value);

  /**
   * A reference to the XMLHttpRequest instance used to generate the
   * network request.
   * @type {XMLHttpRequest}
   */
  external  get xhr;
  external set xhr( value);



  /**
   * 
   */
  external void outputElement();

}
