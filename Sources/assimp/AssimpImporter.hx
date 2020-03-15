package assimp;

import cpp.ConstStar;
import haxe.io.BytesData;

/**
 * ...
 * @author Dmitry Hryppa	https://github.com/dmitryhryppa
 */
@:headerCode('
	#include <assimp/Importer.hpp>
	#include <assimp/postprocess.h>
')
@:headerClassCode('
	Assimp::Importer* importer;
')
class AssimpImporter {
	public function new():Void {
		untyped __cpp__("importer = new Assimp::Importer()");
	}

	public function readFileFromMemory(bytesData:BytesData, flags:AiPostProcess):ConstStar<AiScene> {
		return untyped __cpp__('importer->ReadFileFromMemory((const void*)&({0}[0]), {1}, {2})', bytesData, bytesData.length, flags);
	}

	public function readFile(path:String, flags:Int):ConstStar<AiScene> {
		return untyped __cpp__('importer->ReadFile({0}.c_str(), {1})', path, flags);
	}

	/**
	 * Free current scene
	 */
	public function freeScene():Void {
		untyped __cpp__('importer->FreeScene()');
	}

	public function destroy():Void {
		untyped __cpp__("delete importer");
	}
}
