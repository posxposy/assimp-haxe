package assimp;

/**
 * ...
 * @author Dmitry Hryppa	https://github.com/dmitryhryppa
 */
class AiPostProcess {
	public static inline var calcTangentSpace:Int = 0x1;
	public static inline var joinIdenticalVertices:Int = 0x2;
	public static inline var makeLeftHanded:Int = 0x4;
	public static inline var triangulate:Int = 0x8;
	public static inline var removeComponent:Int = 0x10;
	public static inline var genNormals:Int = 0x20;
	public static inline var genSmoothNormals:Int = 0x40;
	public static inline var splitLargeMeshes:Int = 0x80;
	public static inline var preTransformVertices:Int = 0x100;
	public static inline var limitBoneWeights:Int = 0x200;
	public static inline var validateDataStructure:Int = 0x400;
	public static inline var improveCacheLocality:Int = 0x800;
	public static inline var removeRedundantMaterials:Int = 0x1000;
	public static inline var fixInfacingNormals:Int = 0x2000;
	public static inline var sortByPType:Int = 0x8000;
	public static inline var findDegenerates:Int = 0x10000;
	public static inline var findInvalidData:Int = 0x20000;
	public static inline var genUVCoords:Int = 0x40000;
	public static inline var transformUVCoords:Int = 0x80000;
	public static inline var findInstances:Int = 0x100000;
	public static inline var optimizeMeshes:Int = 0x200000;
	public static inline var optimizeGraph:Int = 0x400000;
	public static inline var flipUVs:Int = 0x800000;
	public static inline var flipWindingOrder:Int = 0x1000000;
	public static inline var splitByBoneCount:Int = 0x2000000;
	public static inline var debone:Int = 0x4000000;
}
