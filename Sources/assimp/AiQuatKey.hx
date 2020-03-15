package assimp;

import assimp.math.AiQuaternion;
import cpp.Float64;

@:unreflective
@:include("assimp/scene.h")
@:native('aiQuatKey')
@:structAccess
extern class AiQuatKey {
	@:native("mTime") public var time:Float64;
	@:native("mValue") public var value:AiQuaternion;
}
