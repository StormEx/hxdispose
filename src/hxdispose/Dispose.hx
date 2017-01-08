package hxdispose;

import haxe.macro.Expr;

class Dispose {
	macro public static function dispose(val:Expr) {
		return macro {
			if($val != null) {
				$val.dispose();
				$val = null;
			}
		};
	}

	macro public static function disposeIterable(val:Expr) {
		return macro {
			if($val != null) {
				for(i in $val) {
					i.dispose();
					i = null;
				}
				$val = null;
			}
		};
	}
}