package assimp;

import cpp.Float64;
import cpp.RawPointer;
import cpp.Star;
import cpp.UInt32;

@:unreflective
@:include("assimp/scene.h")
@:native('aiNodeAnim')
@:structAccess
extern class AiNodeAnim {
	@:native("mNodeName") public var name:AiString;
	@:native("mNumPositionKeys") public var numPositionKeys:UInt32;
	@:native("mNumRotationKeys") public var numRotationKeys:UInt32;
	@:native("mNumScalingKeys") public var numScalingKeys:UInt32;

	@:native("mPositionKeys") public var positionKeys:RawPointer<AiVectorKey>;
	@:native("mScalingKeys") public var scalingKeys:RawPointer<AiVectorKey>;
	@:native("mRotationKeys") public var rotationKeys:RawPointer<AiQuatKey>;
}
