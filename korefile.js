let project = new Project('assimp', __dirname);

project.addDefine('ASSIMP_BUILD_NO_EXPORT');
project.addDefine('ASSIMP_BUILD_NO_OWN_ZLIB');

project.addDefine('ASSIMP_BUILD_NO_X_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_3DS_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_MD3_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_MDL_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_MD2_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_PLY_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_ASE_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_HMP_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_SMD_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_MDC_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_MD5_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_STL_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_LWO_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_DXF_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_NFF_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_RAW_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_SIB_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_OFF_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_AC_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_BVH_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_IRRMESH_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_IRR_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_Q3D_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_B3D_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_COLLADA_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_TERRAGEN_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_CSM_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_3D_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_LWS_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_OGRE_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_OPENGEX_IMPORTER'); //important!
project.addDefine('ASSIMP_BUILD_NO_MS3D_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_COB_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_BLEND_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_Q3BSP_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_NDO_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_IFC_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_XGL_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_ASSBIN_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_GLTF_IMPORTER');
project.addDefine('ASSIMP_BUILD_NO_C4D_IMPORTER');  //important!
project.addDefine('ASSIMP_BUILD_NO_X3D_IMPORTER'); //!important!


//dependices
project.addFile('cpp/assimp/contrib/clipper/clipper.cpp');
project.addFile('cpp/assimp/contrib/irrXML/irrXML.cpp');
project.addFile('cpp/assimp/contrib/poly2tri/poly2tri/common/shapes.cc');
project.addFile('cpp/assimp/contrib/poly2tri/poly2tri/sweep/advancing_front.cc');
project.addFile('cpp/assimp/contrib/poly2tri/poly2tri/sweep/cdt.cc');
project.addFile('cpp/assimp/contrib/poly2tri/poly2tri/sweep/sweep_context.cc');
project.addFile('cpp/assimp/contrib/poly2tri/poly2tri/sweep/sweep.cc');
project.addFile('cpp/assimp/contrib/unzip/ioapi.c');
project.addFile('cpp/assimp/contrib/unzip/unzip.c');
project.addFile('cpp/assimp/contrib/ConvertUTF/ConvertUTF.c');

//project.addFile('cpp/assimp/contrib/openddlparser/code/**');
//project.addIncludeDir('cpp/assimp/contrib/openddlparser/include');
project.addIncludeDir('cpp/assimp/contrib/rapidjson/include');

project.addIncludeDir('cpp/assimp/contrib/irrXML');


//assimp
project.addFile('cpp/assimp/code/**');
project.addIncludeDir('cpp/assimp/include');
project.addIncludeDir('cpp/assimp');

resolve (project);