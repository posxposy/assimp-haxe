package assimp;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.Star;

/**
 * ...
 * @author Dmitry Hryppa	https://github.com/dmitryhryppa
 */
@:structAccess
@:unreflective
@:include("assimp/scene.h")
@:native('aiScene')
extern class AiScene {
	public static inline var AI_SCENE_FLAGS_INCOMPLETE:Int = 0x1;
	public static inline var AI_SCENE_FLAGS_VALIDATED:Int = 0x2;
	public static inline var AI_SCENE_FLAGS_VALIDATION_WARNING:Int = 0x4;
	public static inline var AI_SCENE_FLAGS_NON_VERBOSE_FORMAT:Int = 0x8;
	public static inline var AI_SCENE_FLAGS_TERRAIN:Int = 0x10;

	@:native("mFlags") public var flags:Int;
	@:native("mNumAnimations") public var numAnimations:Int;
	@:native("mRootNode") public var rootNode:Star<AiNode>;
	@:native("mMeshes") public var meshes:RawPointer<Star<AiMesh>>;
	@:native("mMaterials") public var materials:RawPointer<Star<AiMaterial>>;
	@:native("mAnimations") public var animations:RawPointer<Star<AiAnimation>>;

	@:native("HasMaterials") public function hasMaterials():Bool;
}

abstract AiSceneMeshes(Pointer<AiMesh>) {
	@:arrayAccess public function get(index:Int):AiMesh {
		return untyped __cpp__("this1[index]");
	}
}
