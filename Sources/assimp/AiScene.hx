package assimp;

/**
 * ...
 * @author Dmitry Hryppa	http://themozokteam.com/
 */

@:unreflective
@:include("assimp/scene.h")
@:native('cpp.Pointer<aiScene>')
extern class AiScene 
{
    public static inline var AI_SCENE_FLAGS_INCOMPLETE:Int = 0x1;
    public static inline var AI_SCENE_FLAGS_VALIDATED:Int = 0x2;
    public static inline var AI_SCENE_FLAGS_VALIDATION_WARNING:Int = 0x4;
    public static inline var AI_SCENE_FLAGS_NON_VERBOSE_FORMAT:Int = 0x8;
    public static inline var AI_SCENE_FLAGS_TERRAIN:Int = 0x10;
    
    @:native("ptr->mFlags") public var flags:Int;
    @:native("ptr->mRootNode") public var rootNode:AiNode;
}