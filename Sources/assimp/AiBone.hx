package assimp;

import cpp.RawPointer;

@:unreflective
@:include("assimp/scene.h")
@:native('aiBone')
@:structAccess
extern class AiBone {
	@:native("mNumWeights") public var numWeights:Int;
	@:native("mName") public var name:AiString;
	@:native("mWeights") public var weights:RawPointer<AiVertexWeight>;
}
