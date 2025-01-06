cmake_minimum_required(VERSION 3.24)
project(AG_CLion)

set(CMAKE_CXX_STANDARD 20)

add_definitions(-D_ITERATOR_DEBUG_LEVEL=0)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread")
set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}")

set(FONTS ./Fonts)
set(GEOMETRY ./Geometry)
set(LIBRARIES ../libraries)
set(PATTERNS ./Patterns)
set(PRECOMPILED_HEADERS ./PrecompiledHeaders)
set(RENDERING ./Rendering)

find_package(glfw3 REQUIRED)
find_package(OpenGL REQUIRED)
find_package(GLEW REQUIRED)
find_package(glm REQUIRED)
find_package(assimp REQUIRED)

include_directories(${FONTS})
include_directories(${GEOMETRY})
include_directories(${LIBRARIES})
include_directories(${PATTERNS})
include_directories(${PRECOMPILED_HEADERS})
include_directories(${RENDERING})
include_directories(${LIBRARIES})
include_directories(${LIBRARIES}/ImGuiFileDialog)
include_directories(${LIBRARIES}/ImGuizmo)
include_directories(${LIBRARIES}/imgui)
include_directories(${LIBRARIES}/imgui/backends)
include_directories(${LIBRARIES}/lodepng)
include_directories(${OPENGL_INCLUDE_DIR})

set_source_files_properties(stdafx.cpp
        PROPERTIES
        COMPILE_FLAGS "-include stdafx.h")

#link_directories(${VCPKG}/lib/x86_64-linux-gnu/cmake)

set(SOURCE_FILES
        main.cpp
        ${GEOMETRY}/AABB.cpp
        ${GEOMETRY}/AABB.h
        ${GEOMETRY}/BasicGeometry.h
        ${GEOMETRY}/ChronoUtilities.h
        ${GEOMETRY}/Circle.cpp
        ${GEOMETRY}/Circle.h
        ${GEOMETRY}/Line.cpp
        ${GEOMETRY}/Line.h
        ${GEOMETRY}/Point.cpp
        ${GEOMETRY}/Point.h
        ${GEOMETRY}/PointCloud.cpp
        ${GEOMETRY}/PointCloud.h
        ${GEOMETRY}/Polygon.cpp
        ${GEOMETRY}/Polygon.h
        ${GEOMETRY}/RandomUtilities.h
        ${GEOMETRY}/RayLine.cpp
        ${GEOMETRY}/RayLine.h
        ${GEOMETRY}/SegmentLine.cpp
        ${GEOMETRY}/SegmentLine.h
        ${GEOMETRY}/Triangle.cpp
        ${GEOMETRY}/Triangle.h
        ${GEOMETRY}/Vect2d.cpp
        ${GEOMETRY}/Vect2d.h
        ${GEOMETRY}/Vertex.cpp
        ${GEOMETRY}/Vertex.h
        ${GEOMETRY}/Voxelization.cpp
        ${GEOMETRY}/Voxelization.h
        ${PATTERNS}/Singleton.h
        ${PRECOMPILED_HEADERS}/InclDraw2D.h
        ${PRECOMPILED_HEADERS}/InclGeom2D.h
        ${PRECOMPILED_HEADERS}/stdafx.cpp
        ${PRECOMPILED_HEADERS}/stdafx.h
        ${RENDERING}/ApplicationState.h
        ${RENDERING}/Camera.cpp
        ${RENDERING}/Camera.h
        ${RENDERING}/CameraGuiAdapter.cpp
        ${RENDERING}/CameraGuiAdapter.h
        ${RENDERING}/CameraProjection.cpp
        ${RENDERING}/CameraProjection.h
        ${RENDERING}/DrawCircle.cpp
        ${RENDERING}/DrawCircle.h
        ${RENDERING}/DrawLine.cpp
        ${RENDERING}/DrawLine.h
        ${RENDERING}/DrawMesh.cpp
        ${RENDERING}/DrawMesh.h
        ${RENDERING}/DrawPoint.cpp
        ${RENDERING}/DrawPoint.h
        ${RENDERING}/DrawPointCloud.cpp
        ${RENDERING}/DrawPointCloud.h
        ${RENDERING}/DrawPolygon.cpp
        ${RENDERING}/DrawPolygon.h
        ${RENDERING}/DrawRay.cpp
        ${RENDERING}/DrawRay.h
        ${RENDERING}/DrawSegment.cpp
        ${RENDERING}/DrawSegment.h
        ${RENDERING}/DrawTriangle.cpp
        ${RENDERING}/DrawTriangle.h
        ${RENDERING}/DrawVoxelization.cpp
        ${RENDERING}/DrawVoxelization.h
        ${RENDERING}/FBO.cpp
        ${RENDERING}/FBO.h
        ${RENDERING}/FBOScreenshot.cpp
        ${RENDERING}/FBOScreenshot.h
        ${RENDERING}/GUI.cpp
        ${RENDERING}/GUI.h
        ${RENDERING}/GuiUtilities.cpp
        ${RENDERING}/GuiUtilities.h
        ${RENDERING}/Image.cpp
        ${RENDERING}/Image.h
        ${RENDERING}/InputManager.cpp
        ${RENDERING}/InputManager.h
        ${RENDERING}/InterfaceAdapter.h
        ${RENDERING}/Model3D.cpp
        ${RENDERING}/Model3D.h
        ${RENDERING}/Renderer.cpp
        ${RENDERING}/Renderer.h
        ${RENDERING}/RenderingShader.cpp
        ${RENDERING}/RenderingShader.h
        ${RENDERING}/SceneContent.cpp
        ${RENDERING}/SceneContent.h
        ${RENDERING}/ShaderProgram.cpp
        ${RENDERING}/ShaderProgram.h
        ${RENDERING}/ShaderProgramDB.cpp
        ${RENDERING}/ShaderProgramDB.h
        ${RENDERING}/Texture.cpp
        ${RENDERING}/Texture.h
        ${RENDERING}/TextureList.cpp
        ${RENDERING}/TextureList.h
        ${RENDERING}/VAO.cpp
        ${RENDERING}/VAO.h
        ${RENDERING}/Window.cpp
        ${RENDERING}/Window.h
        ${LIBRARIES}/lodepng/lodepng.h
        ${LIBRARIES}/lodepng/lodepng.cpp
        ${LIBRARIES}/imgui/imgui.h
        ${LIBRARIES}/imgui/imgui.cpp
        ${LIBRARIES}/imgui/imgui_draw.cpp
        ${LIBRARIES}/imgui/backends/imgui_impl_glfw.h
        ${LIBRARIES}/imgui/backends/imgui_impl_glfw.cpp
        ${LIBRARIES}/imgui/backends/imgui_impl_opengl3.cpp
        ${LIBRARIES}/imgui/imgui_tables.cpp
        ${LIBRARIES}/imgui/imgui_widgets.cpp
        ${LIBRARIES}/imgui/imgui_internal.h
        ${LIBRARIES}/imgui/imstb_truetype.h
        ${LIBRARIES}/ImGuizmo/ImZoomSlider.h
        ${LIBRARIES}/ImGuizmo/ImSequencer.h
        ${LIBRARIES}/ImGuizmo/ImSequencer.cpp
        ${LIBRARIES}/ImGuizmo/ImGuizmo.h
        ${LIBRARIES}/ImGuizmo/ImGuizmo.cpp
        ${LIBRARIES}/ImGuizmo/ImCurveEdit.h
        ${LIBRARIES}/ImGuizmo/ImCurveEdit.cpp
        ${LIBRARIES}/ImGuizmo/ImGradient.h
        ${LIBRARIES}/ImGuizmo/ImGradient.cpp
        ${LIBRARIES}/ImGuiFileDialog/ImGuiFileDialog.h
        ${LIBRARIES}/ImGuiFileDialog/ImGuiFileDialog.cpp
        ${LIBRARIES}/ImGuiFileDialog/ImGuiFileDialogConfig.h
        ${FONTS}/lato.hpp
        ${FONTS}/lato.cpp
        ${FONTS}/IconsFontAwesome5.h
        ${FONTS}/font_awesome.hpp
        ${FONTS}/font_awesome.cpp
        ${FONTS}/font_awesome_2.cpp)
add_executable(AG_CLion ${SOURCE_FILES})

target_link_libraries(AG_CLion glfw GLEW OpenGL assimp tbb)
