package hxdispose.tests;

import utest.Assert;

class DisposeTest {
	public function new() {}

	public function testDispose() {
		var c1:C1 = new C1();
		var c2:C2 = new C2();

		Assert.isTrue(c1 != null);
		Assert.isTrue(c2 != null);

		Dispose.dispose(c1);
		Dispose.dispose(c2);

		Assert.isTrue(c1 == null);
		Assert.isTrue(c2 == null);
	}
}

class C1 implements IDisposable {
	public function new() {}

	public function dispose() {

	}
}

class C2 extends C1 {
	public function new() {
		super();
	}

	override public function dispose() {
		super.dispose();
	}
}