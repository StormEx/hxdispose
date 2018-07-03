package hxdispose;

#if macro
import haxe.macro.Expr.Field;
import haxe.macro.Context;

class DisposableMacro {
	public function new() {
	}

	macro static public function build():Array<Field> {
		return Context.getBuildFields();
	}
}
#end