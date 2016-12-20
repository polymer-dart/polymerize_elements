@JS('PolymerElements')
library paper_checkbox;
import 'package:js/js.dart';
import 'package:polymer_element/polymer_element.dart';

// @JS('PaperCheckbox')
@PolymerRegister('paper-checkbox',template:'src/paper-checkbox/paper-checkbox.html',native:true)
@BowerImport(ref:'PolymerElements/paper-checkbox#2.0-preview',import:"paper-checkbox/paper-checkbox.html",name:'paper-checkbox')
class PaperCheckbox extends PolymerElement {
}
