package assimp.math;

/**
 * ...
 * @author Dmitry Hryppa
 */

@:unreflective
@:include("assimp/scene.h")
@:native('aiVector4D')
@:structAccess
extern class AiColor4D {
    public var r:Float;
    public var g:Float;
    public var b:Float;
    public var a:Float;
}