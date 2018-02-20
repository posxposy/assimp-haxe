package assimp;
import cpp.Pointer;
import haxe.io.BytesData;

/**
 * ...
 * @author Dmitry Hryppa	http://themozokteam.com/
 */

@:headerCode('
    #include <assimp/Importer.hpp>
    #include <assimp/postprocess.h>
')

@:headerClassCode('
    Assimp::Importer* importer;
')

class AssimpImporter 
{
    public function new():Void
    {
        untyped __cpp__("importer = new Assimp::Importer");
    }
    
    public function readFileFromMemory(bytesData:BytesData, flags:Int):Pointer<AiScene>
    {
        return untyped __cpp__('importer->ReadFileFromMemory((const void*)&({0}[0]), {1}, flags)', bytesData, bytesData.length);
    }
    
    public function readFile(path:String, flags:Int):Pointer<AiScene>
    {
        
        return untyped __cpp__('importer->ReadFile(path.c_str(), flags)');
    }
    
    public function destroy():Void
    {
        untyped __cpp__("delete importer");
    }
}