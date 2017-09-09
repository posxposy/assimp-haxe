package assimp;
import haxe.io.Bytes;

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
    
    @:functionCode('
        std::vector<unsigned char> buffer;
        for (int i = 0; i < bytes->length; i++) {
            buffer.push_back(bytes->b->__get(i));
        }
        return importer->ReadFileFromMemory(static_cast<void*>(buffer.data()), buffer.size(), pFlags);
    ')
    public function readFileFromMemory(bytes:Bytes, pFlags:Int):AiScene
    {
        return null;
    }
    
    public function destroy():Void
    {
        untyped __cpp__("delete importer");
    }
}