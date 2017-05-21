@JS('Polymer')
library IronQueryParams;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';


/**
 * 
 */

@JS('IronQueryParams')
@PolymerRegister('iron-query-params',native:true)
@BowerImport(ref:'PolymerElements/iron-location#v2.0.0',import:"iron-location/iron-query-params.html",name:'iron-location')
abstract class IronQueryParams extends PolymerElement  {
  /**
   * 
   */
  external String get paramsString;
  external set paramsString(String value);

  /**
   * 
   */
  external  get paramsObject;
  external set paramsObject( value);


}
