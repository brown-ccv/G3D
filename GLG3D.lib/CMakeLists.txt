cmake_minimum_required(VERSION 2.6)
set(CMAKE_VERBOSE_MAKEFILE TRUE)

set (SOURCEFILES source/ArticulatedModel.cpp source/ArticulatedModel_OBJ.cpp source/ArticulatedModel_Operation.cpp source/BackgroundWidget.cpp source/BSPMAP.cpp source/BSPMAPLoad.cpp source/BumpMap.cpp source/CameraControlWindow.cpp source/CarbonWindow.cpp source/Component.cpp source/DDSTexture.cpp source/DeveloperWindow.cpp source/DirectionHistogram.cpp source/Discovery.cpp source/Draw.cpp source/DXCaps.cpp source/edgeFeatures.cpp source/FileDialog.cpp source/Film.cpp source/FirstPersonManipulator.cpp source/Framebuffer.cpp source/G3DGameUnits.cpp source/GApp.cpp source/GaussianBlur.cpp source/GBuffer.cpp source/GConsole.cpp source/GEntity.cpp source/getOpenGLState.cpp source/GEvent.cpp source/GFont.cpp source/GKey.cpp source/glcalls.cpp source/GLCaps.cpp source/glenumtostring.cpp source/GPUProgram.cpp source/GuiButton.cpp source/GuiCheckBox.cpp source/GuiContainer.cpp source/GuiControl.cpp source/GuiDropDownList.cpp source/GuiFunctionBox.cpp source/GuiLabel.cpp source/GuiMenu.cpp source/GuiPane.cpp source/GuiRadioButton.cpp source/GuiSlider.cpp source/GuiTabPane.cpp source/GuiText.cpp source/GuiTextBox.cpp source/GuiTextureBox.cpp source/GuiTheme.cpp source/GuiWindow.cpp source/IconSet.cpp source/IFSModel.cpp source/Material.cpp source/Material_Specification.cpp source/MD2Model.cpp source/MD2Model_load.cpp source/MD3Model.cpp source/Milestone.cpp source/OSWindow.cpp source/Profiler.cpp source/Renderbuffer.cpp source/RenderDevice.cpp source/SDLWindow.cpp source/Shader.cpp source/ShadowMap.cpp source/shadowVolume.cpp source/Shape.cpp source/Sky.cpp source/SkyParameters.cpp source/SuperBSDF.cpp source/SuperShader.cpp source/SuperSurface.cpp source/Surface.cpp source/tesselate.cpp source/Texture.cpp source/ThirdPersonManipulator.cpp source/ToneMap.cpp source/Tri.cpp source/TriTree.cpp source/TriTree_Poly.cpp source/UprightSplineManipulator.cpp source/UserInput.cpp source/VertexBuffer.cpp source/VertexRange.cpp source/VideoInput.cpp source/VideoOutput.cpp source/VideoRecordDialog.cpp source/Widget.cpp source/Win32Window.cpp source/GL/glew.c)

set (HEADERFILES source/directinput8.h source/Load3DS.h include/GLG3D/ArticulatedModel.h include/GLG3D/BackgroundWidget.h include/GLG3D/BSPMAP.h include/GLG3D/BumpMap.h include/GLG3D/CameraControlWindow.h include/GLG3D/CarbonWindow.h include/GLG3D/Component.h include/GLG3D/DeveloperWindow.h include/GLG3D/DirectionHistogram.h include/GLG3D/Discovery.h include/GLG3D/Draw.h include/GLG3D/DXCaps.h include/GLG3D/edgeFeatures.h include/GLG3D/FileDialog.h include/GLG3D/Film.h include/GLG3D/FirstPersonManipulator.h include/GLG3D/Framebuffer.h include/GLG3D/G3D_SDL_event.h include/GLG3D/GApp.h include/GLG3D/GaussianBlur.h include/GLG3D/GBuffer.h include/GLG3D/GConsole.h include/GLG3D/GEntity.h include/GLG3D/getOpenGLState.h include/GLG3D/GEvent.h include/GLG3D/GFont.h include/GLG3D/GKey.h include/GLG3D/glcalls.h include/GLG3D/GLCaps.h include/GLG3D/glFormat.h include/GLG3D/GLG3D.h include/GLG3D/glheaders.h include/GLG3D/GPUProgram.h include/GLG3D/GuiButton.h include/GLG3D/GuiCheckBox.h include/GLG3D/GuiContainer.h include/GLG3D/GuiControl.h include/GLG3D/GuiDropDownList.h include/GLG3D/GuiFunctionBox.h include/GLG3D/GuiLabel.h include/GLG3D/GuiMenu.h include/GLG3D/GuiNumberBox.h include/GLG3D/GuiPane.h include/GLG3D/GuiRadioButton.h include/GLG3D/GuiSlider.h include/GLG3D/GuiTabPane.h include/GLG3D/GuiText.h include/GLG3D/GuiTextBox.h include/GLG3D/GuiTextureBox.h include/GLG3D/GuiTheme.h include/GLG3D/GuiWindow.h include/GLG3D/Icon.h include/GLG3D/IconSet.h include/GLG3D/IFSModel.h include/GLG3D/Lighting.h include/GLG3D/Material.h include/GLG3D/MD2Model.h include/GLG3D/MD3Model.h include/GLG3D/Milestone.h include/GLG3D/NSAutoreleasePoolWrapper.h include/GLG3D/OSWindow.h include/GLG3D/Profiler.h include/GLG3D/Renderbuffer.h include/GLG3D/RenderDevice.h include/GLG3D/SDLWindow.h include/GLG3D/Shader.h include/GLG3D/ShadowMap.h include/GLG3D/shadowVolume.h include/GLG3D/Shape.h include/GLG3D/Sky.h include/GLG3D/SkyParameters.h include/GLG3D/SuperBSDF.h include/GLG3D/SuperShader.h include/GLG3D/SuperSurface.h include/GLG3D/Surface.h include/GLG3D/tesselate.h include/GLG3D/Texture.h include/GLG3D/ThirdPersonManipulator.h include/GLG3D/ToneMap.h include/GLG3D/Tri.h include/GLG3D/TriTree.h include/GLG3D/UprightSplineManipulator.h include/GLG3D/UserInput.h include/GLG3D/VertexBuffer.h include/GLG3D/VertexRange.h include/GLG3D/VideoInput.h include/GLG3D/VideoOutput.h include/GLG3D/VideoRecordDialog.h include/GLG3D/Widget.h include/GLG3D/Win32Window.h include/GLG3D/X11Window.h include/GLG3D/GL/glew.h include/GLG3D/GL/glxew.h include/GLG3D/GL/wglew.h)

source_group("Header Files" FILES ${HEADERFILES})

include_directories(
	./include
	./source
	../G3D.lib/include
	../ffmpeg/include
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

if (${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
	set (SOURCEFILES ${SOURCEFILES} source/CocoaWindow.mm)
	set (HEADERFILES ${HEADERFILES} include/GLG3D/CocoaWindow.h)
endif()

if (${CMAKE_SYSTEM_NAME} MATCHES "Windows")
	include_directories(../c99util/include)
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

add_library(GLG3D ${SOURCEFILES} ${HEADERFILES})
install(DIRECTORY include/GLG3D/ DESTINATION include/GLG3D)
