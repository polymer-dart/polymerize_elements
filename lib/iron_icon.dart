@JS('PolymerElements')
library iron_icon;
import 'package:js/js.dart';
import 'package:polymer_element/polymer_element.dart';


//@JS('IronIcon')
@PolymerRegister('iron-icon',template:'src/iron-icon/iron-icon.html',native:true)
@BowerImport(ref:'PolymerElements/iron-icon#2.0-preview',import:"iron-icon/iron-icon.html",name:'iron-icon')
class IronIcon extends PolymerElement {
}
