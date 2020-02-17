package assimp.math;

/**
 * ...
 * @author Dmitry Hryppa	https://github.com/dmitryhryppa
 */
@:unreflective
@:include("assimp/scene.h")
@:native('aiVector3D')
@:structAccess
extern class AiVector3D {
	public var x:Float;
	public var y:Float;
	public var z:Float;
}
