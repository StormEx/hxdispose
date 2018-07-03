package ;

import hxmake.idea.IdeaData;
import hxmake.haxelib.HaxelibExt;
import hxmake.test.TestTask;
import hxmake.idea.IdeaPlugin;
import hxmake.haxelib.HaxelibPlugin;

using hxmake.haxelib.HaxelibPlugin;

class HxDisposeMake extends hxmake.Module {
	function new() {
		config.classPath = ["src", "example"];
		config.testPath = ["test"];
		config.devDependencies = [
			"utest" => "haxelib"
		];

		apply(HaxelibPlugin);
		apply(IdeaPlugin);

		update("idea", function(data:IdeaData) {
			data.addHaxeRun("bin/disposable.swf");
			data.hxml = "example/build.hxml";
		});

		library(
			function(ext:HaxelibExt) {
				ext.config.description = "Some stuff for help to dispose";
				ext.config.contributors = ["storm_ex"];
				ext.config.url = "https://github.com/StormEx/hxdispose";
				ext.config.license = "MIT";
				ext.config.version = "0.0.1";
				ext.config.releasenote = "Initial release";
				ext.config.tags = ["dispose", "disposable"];

				ext.pack.includes = ["src", "haxelib.json", "README.md"];
			}
		);

		var tt = new TestTask();
		tt.targets = ["neko", "swf", "js", "node", "cpp", "java", "cs", "php"];
		tt.libraries = ["hxdispose"];
		task("test", tt);
	}
}