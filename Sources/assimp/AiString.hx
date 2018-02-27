package assimp;
import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.Reference;

/**
 * ...
 * @author Dmitry Hryppa	http://themozokteam.com/
 */
@:unreflective
@:include("assimp/scene.h")
@:native('aiString')
extern class AiString {
    @:native("new aiString") public static function create():Pointer<AiString>;
    @:native("C_Str") public function c_str():ConstCharStar;
}