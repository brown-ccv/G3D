cmake_minimum_required(VERSION 2.6)
set(CMAKE_VERBOSE_MAKEFILE TRUE)

set (SOURCEFILES source/AABox.cpp source/Any.cpp source/AnyVal.cpp source/AreaMemoryManager.cpp source/BinaryFormat.cpp source/BinaryInput.cpp source/BinaryOutput.cpp source/Box.cpp source/Box2D.cpp source/BumpMapPreprocess.cpp source/Capsule.cpp source/CollisionDetection.cpp source/Color1.cpp source/Color1uint8.cpp source/Color3.cpp source/Color3uint8.cpp source/Color4.cpp source/Color4uint8.cpp source/Cone.cpp source/constants.cpp source/ConvexPolyhedron.cpp source/CoordinateFrame.cpp source/Crypto.cpp source/Crypto_md5.cpp source/Cylinder.cpp source/debugAssert.cpp source/FileSystem.cpp source/fileutils.cpp source/filter.cpp source/format.cpp source/g3dfnmatch.cpp source/g3dmath.cpp source/GCamera.cpp source/GImage.cpp source/GImage_bayer.cpp source/GImage_bmp.cpp source/GImage_jpeg.cpp source/GImage_png.cpp source/GImage_ppm.cpp source/GImage_tga.cpp source/GLight.cpp source/GThread.cpp source/GUniqueID.cpp source/Image1.cpp source/Image1uint8.cpp source/Image3.cpp source/Image3uint8.cpp source/Image4.cpp source/Image4uint8.cpp source/ImageFormat.cpp source/ImageFormat_convert.cpp source/Intersect.cpp source/license.cpp source/Line.cpp source/LineSegment.cpp source/Log.cpp source/Matrix.cpp source/Matrix3.cpp source/Matrix4.cpp source/MemoryManager.cpp source/MeshAlg.cpp source/MeshAlgAdjacency.cpp source/MeshAlgWeld.cpp source/MeshBuilder.cpp source/NetAddress.cpp source/NetworkDevice.cpp source/PhysicsFrame.cpp source/PhysicsFrameSpline.cpp source/Plane.cpp source/PrecomputedRandom.cpp source/prompt.cpp source/Quat.cpp source/Random.cpp source/Ray.cpp source/Rect2D.cpp source/ReferenceCount.cpp source/RegistryUtil.cpp source/Sphere.cpp source/SplineBase.cpp source/Stopwatch.cpp source/stringutils.cpp source/System.cpp source/TextInput.cpp source/TextOutput.cpp source/ThreadSet.cpp source/Triangle.cpp source/uint128.cpp source/UprightFrame.cpp source/Vector2.cpp source/Vector2int16.cpp source/Vector3.cpp source/Vector3int16.cpp source/Vector3int32.cpp source/Vector4.cpp source/Vector4int8.cpp source/Welder.cpp source/WinMain.cpp source/XML.cpp)

set (HEADERFILES include/G3D/AABox.h include/G3D/Any.h include/G3D/AnyVal.h include/G3D/AreaMemoryManager.h include/G3D/Array.h include/G3D/AtomicInt32.h include/G3D/BinaryFormat.h include/G3D/BinaryInput.h include/G3D/BinaryOutput.h include/G3D/BoundsTrait.h include/G3D/Box.h include/G3D/Box2D.h include/G3D/BumpMapPreprocess.h include/G3D/Capsule.h include/G3D/CollisionDetection.h include/G3D/Color1.h include/G3D/Color1uint8.h include/G3D/Color3.h include/G3D/Color3uint8.h include/G3D/Color4.h include/G3D/Color4uint8.h include/G3D/Cone.h include/G3D/constants.h include/G3D/ConvexPolyhedron.h include/G3D/CoordinateFrame.h include/G3D/Crypto.h include/G3D/Cylinder.h include/G3D/debug.h include/G3D/debugAssert.h include/G3D/debugPrintf.h include/G3D/enumclass.h include/G3D/EqualsTrait.h include/G3D/FileSystem.h include/G3D/fileutils.h include/G3D/filter.h include/G3D/format.h include/G3D/G3D.h include/G3D/G3DAll.h include/G3D/g3dfnmatch.h include/G3D/G3DGameUnits.h include/G3D/g3dmath.h include/G3D/GCamera.h include/G3D/GImage.h include/G3D/GLight.h include/G3D/GMutex.h include/G3D/GThread.h include/G3D/GUniqueID.h include/G3D/HashTrait.h include/G3D/Image1.h include/G3D/Image1uint8.h include/G3D/Image3.h include/G3D/Image3uint8.h include/G3D/Image4.h include/G3D/Image4uint8.h include/G3D/ImageFormat.h include/G3D/Intersect.h include/G3D/KDTree.h include/G3D/Line.h include/G3D/LineSegment.h include/G3D/Log.h include/G3D/Map2D.h include/G3D/Matrix.h include/G3D/Matrix2.h include/G3D/Matrix3.h include/G3D/Matrix4.h include/G3D/MemoryManager.h include/G3D/MeshAlg.h include/G3D/MeshBuilder.h include/G3D/NetAddress.h include/G3D/netheaders.h include/G3D/NetworkDevice.h include/G3D/networkHelpers.h include/G3D/ParseError.h include/G3D/PhysicsFrame.h include/G3D/PhysicsFrameSpline.h include/G3D/Plane.h include/G3D/platform.h include/G3D/Pointer.h include/G3D/PointHashGrid.h include/G3D/PointKDTree.h include/G3D/PositionTrait.h include/G3D/PrecomputedRandom.h include/G3D/prompt.h include/G3D/Quat.h include/G3D/Queue.h include/G3D/Random.h include/G3D/Ray.h include/G3D/Rect2D.h include/G3D/ReferenceCount.h include/G3D/RegistryUtil.h include/G3D/serialize.h include/G3D/Set.h include/G3D/SmallArray.h include/G3D/Sphere.h include/G3D/Spline.h include/G3D/splinefunc.h include/G3D/Stopwatch.h include/G3D/stringutils.h include/G3D/System.h include/G3D/Table.h include/G3D/TextInput.h include/G3D/TextOutput.h include/G3D/ThreadSet.h include/G3D/Triangle.h include/G3D/uint128.h include/G3D/units.h include/G3D/UprightFrame.h include/G3D/Vector2.h include/G3D/Vector2int16.h include/G3D/Vector3.h include/G3D/Vector3int16.h include/G3D/Vector3int32.h include/G3D/Vector4.h include/G3D/Vector4int8.h include/G3D/vectorMath.h include/G3D/WeakCache.h include/G3D/Welder.h include/G3D/WrapMode.h include/G3D/XML.h)

source_group("Header Files" FILES ${HEADERFILES})

include_directories(
	./include
	../GLG3D.lib/include
)

find_package(JPEG QUIET)
if (NOT JPEG_FOUND)
	include_directories(../jpeg.lib/include)
else()
	include_directories(${PNG_INCLUDE_DIRS})
endif()

find_package(libzip QUIET)
if (NOT LIBZIP_FOUND)
	include_directories(../zip.lib/include)
else()
	include_directories(${LIBZIP_INCLUDE_DIR})
endif()

find_package(ZLIB QUIET)
if (NOT ZLIB_FOUND)
	include_directories(../zlib.lib/include)
else()
	include_directories(${ZLIB_INCLUDE_DIRS})
endif()

find_package(PNG QUIET)
if (NOT PNG_FOUND)
	include_directories(../png.lib/include)
else()
	include_directories(${PNG_INCLUDE_DIRS})
endif()

set(CMAKE_DEBUG_POSTFIX "d")
set(CMAKE_RELEASE_POSTFIX "")
set(CMAKE_RELWITHDEBINFO_POSTFIX "rd")
set(CMAKE_MINSIZEREL_POSTFIX "s")

#set the build postfix extension according to the current configuration
if (CMAKE_BUILD_TYPE MATCHES "Release")
  set(CMAKE_BUILD_POSTFIX "${CMAKE_RELEASE_POSTFIX}")
elseif (CMAKE_BUILD_TYPE MATCHES "MinSizeRel")
  set(CMAKE_BUILD_POSTFIX "${CMAKE_MINSIZEREL_POSTFIX}")
elseif (CMAKE_BUILD_TYPE MATCHES "RelWithDebInfo")
  set(CMAKE_BUILD_POSTFIX "${CMAKE_RELWITHDEBINFO_POSTFIX}")
elseif (CMAKE_BUILD_TYPE MATCHES "Debug")
  set(CMAKE_BUILD_POSTFIX "${CMAKE_DEBUG_POSTFIX}")
else()
  set(CMAKE_BUILD_POSTFIX "")
endif()

add_library(G3D ${SOURCEFILES} ${HEADERFILES})
install(DIRECTORY include/G3D/ DESTINATION include/G3D)
