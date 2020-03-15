package assimp;

import assimp.math.AiVector3D;
import cpp.Float64;

@:unreflective
@:include("assimp/scene.h")
@:native('aiVectorKey')
@:structAccess
extern class AiVectorKey {
	@:native("mTime") public var time:Float64;
	@:native("mValue") public var value:AiVector3D;
}
