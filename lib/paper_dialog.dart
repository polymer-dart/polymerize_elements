@JS('PolymerElements')
library paper_dialog;
import 'package:js/js.dart';
import 'package:polymer_element/polymer_element.dart';



//@JS('PaperDialog')


@PolymerRegister('paper-dialog',template:'src/paper-dialog/paper-dialog.html',native:true)
@BowerImport(ref:'PolymerElements/paper-dialog#2.0-preview',import:"paper-dialog/paper-dialog.html",name:'paper-dialog')
abstract class PaperDialog extends PolymerElement {
  bool get opened;
  set opened(bool v);
  void open();
}
