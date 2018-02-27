package assimp.math;

/**
 * ...
 * @author Dmitry Hryppa	http://themozokteam.com/
 */

@:unreflective
@:include("assimp/scene.h")
@:native('aiMatrix4x4')
@:structAccess
extern class AiMatrix4x4 {
    public var a1:Float;
    public var a2:Float;
    public var a3:Float;
    public var a4:Float;
    
    public var b1:Float;
    public var b2:Float;
    public var b3:Float;
    public var b4:Float;
    
    public var c1:Float;
    public var c2:Float;
    public var c3:Float;
    public var c4:Float;
    
    public var d1:Float;
    public var d2:Float;
    public var d3:Float;
    public var d4:Float;
    
    @:native("Decompose") public function decompose(scale:AiVector3D, rotation:AiQuaternion, position:AiVector3D):Void;
}