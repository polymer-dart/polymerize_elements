@JS('Polymer')
library PaperProgress;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_range_behavior.dart' as imp0;
part 'paper_progress.polymerize.dart';
/**
 * Material design: [Progress & activity](https://www.google.com/design/spec/components/progress-activity.html)
 * The progress bars are for situations where the percentage completed can be
 * determined. They give users a quick sense of how much longer an operation
 * will take.
 * Example:
 *     <paper-progress value="10"></paper-progress>
 * There is also a secondary progress which is useful for displaying intermediate
 * progress, such as the buffer level during a streaming playback progress bar.
 * Example:
 *     <paper-progress value="10" secondary-progress="30"></paper-progress>
 * ### Styling progress bar:
 * To change the active progress bar color:
 *     paper-progress {
 *        --paper-progress-active-color: #e91e63;
 *     }
 * To change the secondary progress bar color:
 *     paper-progress {
 *       --paper-progress-secondary-color: #f8bbd0;
 *     }
 * To change the progress bar background color:
 *     paper-progress {
 *       --paper-progress-container-color: #64ffda;
 *     }
 * Add the class `transiting` to a paper-progress to animate the progress bar when
 * the value changed. You can also customize the transition:
 *     paper-progress {
 *       --paper-progress-transition-duration: 0.08s;
 *       --paper-progress-transition-timing-function: ease;
 *       --paper-progress-transition-transition-delay: 0s;
 *     }
 * To change the duration of the indeterminate cycle:
 *     paper-progress {
 *       --paper-progress-indeterminate-cycle-duration: 2s;
 *     }
 * The following mixins are available for styling:
 * Custom property                                  | Description                                 | Default
 * -------------------------------------------------|---------------------------------------------|--------------
 * `--paper-progress-container`                     | Mixin applied to container                  | `{}`
 * `--paper-progress-transition-duration`           | Duration of the transition                  | `0.008s`
 * `--paper-progress-transition-timing-function`    | The timing function for the transition      | `ease`
 * `--paper-progress-transition-delay`              | delay for the transition                    | `0s`
 * `--paper-progress-container-color`               | Color of the container                      | `--google-grey-300`
 * `--paper-progress-active-color`                  | The color of the active bar                 | `--google-green-500`
 * `--paper-progress-secondary-color`               | The color of the secondary bar              | `--google-green-100`
 * `--paper-progress-disabled-active-color`         | The color of the active bar if disabled     | `--google-grey-500`
 * `--paper-progress-disabled-secondary-color`      | The color of the secondary bar if disabled  | `--google-grey-300`
 * `--paper-progress-height`                        | The height of the progress bar              | `4px`
 * `--paper-progress-indeterminate-cycle-duration`  | Duration of an indeterminate cycle          | `2s`
 * @group Paper Elements
 * @element paper-progress
 * @hero hero.svg
 * @demo demo/index.html
 */

@JS('PaperProgress')
@PolymerRegister('paper-progress',native:true)
@BowerImport(ref:'PolymerElements/paper-progress#v2.0.0',import:"paper-progress/paper-progress.html",name:'paper-progress')
abstract class PaperProgress extends PolymerElement implements imp0.IronRangeBehavior {
  /**
   * The number that represents the current secondary progress.
   */
  external num get secondaryProgress;
  external set secondaryProgress(num value);

  /**
   * The secondary ratio
   */
  external num get secondaryRatio;
  external set secondaryRatio(num value);

  /**
   * Use an indeterminate progress indicator.
   */
  external bool get indeterminate;
  external set indeterminate(bool value);

  /**
   * True if the progress is disabled.
   */
  external bool get disabled;
  external set disabled(bool value);


}
