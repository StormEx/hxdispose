package hxdispose;

@:forward
abstract DisposableArray<T:IDisposable>(Array<T>) from Array<T> to Array<T> {
	public function new(arr:Array<T>) {
		this = arr;
	}

	public function dispose() {
		if(this != null && this.length > 0)

		for(e in this) {
			Dispose.dispose(e);
		}
	}
}
