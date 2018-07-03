package hxdispose;

#if !macro
@:autoBuild(hxdispose.DisposableMacro.build())
#end
interface IDisposable {
	public function dispose():Void;
}
