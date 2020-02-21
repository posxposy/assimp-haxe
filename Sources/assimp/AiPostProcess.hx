package assimp;

/**
 * ...
 * @author Dmitry Hryppa	https://github.com/dmitryhryppa
 */

@:unreflective
@:include('assimp/postprocess.h')
extern enum abstract AiPostProcess(Int) {
	@:native('aiProcess_CalcTangentSpace')
	var calcTangentSpace;

	@:native('aiProcess_JoinIdenticalVertices')
	var joinIdenticalVertices;

	@:native('aiProcess_MakeLeftHanded')
	var makeLeftHanded;

	@:native('aiProcess_Triangulate')
	var triangulate;

	@:native('aiProcess_RemoveComponent')
	var removeComponent;

	@:native('aiProcess_GenNormals')
	var genNormals;

	@:native('aiProcess_GenSmoothNormals')
	var genSmoothNormals;

	@:native('aiProcess_SplitLargeMeshes')
	var splitLargeMeshes;

	@:native('aiProcess_PreTransformVertices')
	var preTransformVertices;

	@:native('aiProcess_LimitBoneWeights')
	var limitBoneWeights;

	@:native('aiProcess_ValidateDataStructure')
	var validateDataStructure;

	@:native('aiProcess_ImproveCacheLocality')
	var improveCacheLocality;

	@:native('aiProcess_RemoveRedundantMaterials')
	var removeRedundantMaterials;

	@:native('aiProcess_FixInfacingNormals')
	var fixInfacingNormals;

	@:native('aiProcess_SortByPType')
	var sortByPType;

	@:native('aiProcess_FindDegenerates')
	var findDegenerates;

	@:native('aiProcess_FindInvalidData')
	var findInvalidData;

	@:native('aiProcess_GenUVCoords')
	var genUVCoords;

	@:native('aiProcess_TransformUVCoords')
	var transformUVCoords;

	@:native('aiProcess_FindInstances')
	var findInstances;

	@:native('aiProcess_OptimizeMeshes')
	var optimizeMeshes;

	@:native('aiProcess_OptimizeGraph')
	var optimizeGraph;

	@:native('aiProcess_FlipUVs')
	var flipUVs;

	@:native('aiProcess_FlipWindingOrder')
	var flipWindingOrder;

	@:native('aiProcess_SplitByBoneCount')
	var splitByBoneCount;

	@:native('aiProcess_Debone')
	var debone;

	@:op(A | B)
	public inline function bitwiseOr(v:AiPostProcess):AiPostProcess {
		return untyped __cpp__('{0} | {1}', this, v);
	}

	/**
	 * Shortcut flag for Direct3D-based applications.
	 *
	 * Supersedes the `makeLeftHanded` and `flipUVs` and
	 * `flipWindingOrder` flags.
	 * The output data matches Direct3D's conventions: left-handed geometry, upper-left
	 * origin for UV coordinates and finally clockwise face order, suitable for CCW culling.
	 *
	 * @return AiPostProcess
	 */
	@:deprecated
	public static inline function convertToLeftHanded():AiPostProcess {
		return untyped __cpp__('aiProcess_ConvertToLeftHanded');
	}

	/**
	 * Shortcut flag for Direct3D-based applications.
	 *
	 * Supersedes the `makeLeftHanded` and `flipUVs` and `flipWindingOrder` flags.
	 *
	 * The output data matches Direct3D's conventions: left-handed geometry, upper-left
	 * origin for UV coordinates and finally clockwise face order, suitable for CCW culling.
	 *
	 * @return AiPostProcess
	 */
	public static inline function targetRealtimeFast():AiPostProcess {
		return untyped __cpp__('aiProcessPreset_TargetRealtime_Fast');
	}

	/**
	 * Default postprocess configuration optimizing the data for real-time rendering.
	 *
	 * Applications would want to use this preset to load models on end-user PCs,
	 * maybe for direct use in game.
	 *
	 * If you're using DirectX, don't forget to combine this value with
	 * the `convertToLeftHanded()` step. If you don't support UV transformations
	 * in your application apply the `transformUVCoords` step, too.
	 *
	 * Please take the time to read the docs for the steps enabled by this preset.
	 * Some of them offer further configurable properties, while some of them might not be of
	 * use for you so it might be better to not specify them.
	 *
	 * @return AiPostProcess
	 */
	public static inline function targetRealtimeQuality():AiPostProcess {
		return untyped __cpp__('aiProcessPreset_TargetRealtime_Quality');
	}

	/**
	 * Default postprocess configuration optimizing the data for real-time rendering.
	 *
	 * Unlike `targetRealtimeFast()`, this configuration
	 * performs some extra optimizations to improve rendering speed and
	 * to minimize memory usage. It could be a good choice for a level editor
	 * environment where import speed is not so important.
	 *
	 * If you're using DirectX, don't forget to combine this value with
	 * the `convertToLeftHanded()` step. If you don't support UV transformations
	 * in your application apply the `transformUVCoords` step, too.
	 *
	 * Please take the time to read the docs for the steps enabled by this preset.
	 * Some of them offer further configurable properties, while some of them might not be
	 * of use for you so it might be better to not specify them.
	 *
	 * @return AiPostProcess
	 */
	public static inline function targetRealtimeMaxQuality():AiPostProcess {
		return untyped __cpp__('aiProcessPreset_TargetRealtime_MaxQuality');
	}
}
