package assimp;
import cpp.Pointer;
import cpp.RawPointer;

/**
 * ...
 * @author Dmitry Hryppa	http://themozokteam.com/
 */

@:unreflective
@:include("assimp/scene.h")
@:native('aiScene')
extern class AiScene 
{
    public static inline var AI_SCENE_FLAGS_INCOMPLETE:Int = 0x1;
    public static inline var AI_SCENE_FLAGS_VALIDATED:Int = 0x2;
    public static inline var AI_SCENE_FLAGS_VALIDATION_WARNING:Int = 0x4;
    public static inline var AI_SCENE_FLAGS_NON_VERBOSE_FORMAT:Int = 0x8;
    public static inline var AI_SCENE_FLAGS_TERRAIN:Int = 0x10;
    
    @:native("mFlags") public var flags:Int;
    @:native("mRootNode") public var rootNode:Pointer<AiNode>;
    @:native("mMeshes") public var meshes:RawPointer<Pointer<AiMesh>>;
    @:native("mMaterials") public var materials:RawPointer<Pointer<AiMaterial>>;
    
    @:native("HasMaterials") public function hasMaterials():Bool;
}

abstract AiSceneMeshes(Pointer<AiMesh>)
{
    @:arrayAccess public function get(index:Int):AiMesh
    {
        return untyped __cpp__("this1[index]");
    }
}