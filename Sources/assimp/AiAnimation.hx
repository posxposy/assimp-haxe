package assimp;

import cpp.Float64;
import cpp.RawPointer;
import cpp.Star;
import cpp.UInt32;

@:structAccess
@:unreflective
@:include("assimp/scene.h")
@:native('aiAnimation')
extern class AiAnimation {
	@:native("mTicksPerSecond") public var ticksPerSecond:Float64;
	@:native("mDuration") public var duration:Float64;
	@:native("mName") public var name:AiString;
	@:native("mNumChannels") public var numChannels:UInt32;
	@:native("mNumMeshChannels") public var numMeshChannels:UInt32;
	@:native("mChannels") public var channels:RawPointer<Star<AiNodeAnim>>;
	@:native("mMeshChannels") public var meshChannels:RawPointer<Star<AiMeshAnim>>;
}
