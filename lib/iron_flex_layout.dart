@JS('PolymerElements')
library iron_flex_layout;
import 'package:js/js.dart';
import 'package:polymer_element/polymer_element.dart';
/*
@JS('IronFlexLayout')
class _IronFlexLayout extends PolymerElement {
}
*/


@PolymerRegister('iron-flex-layout',template:'src/iron-flex-layout/iron-flex-layout.html',native:true)
@BowerImport(ref:'PolymerElements/iron-flex-layout#2.0-preview',import:"iron-flex-layout/iron-flex-layout.html",name:'iron-flex-layout')
class IronFlexLayout /*extends _IronFlexLayout*/ {
}
