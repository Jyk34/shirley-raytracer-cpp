cmake_minimum_required(VERSION 3.10)

project(RayTracer)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(RayTracer
    Render.cpp
    BVH.h
    aabb.h
    camera.h
    color.h
    hittable.h
    hittable_list.h
    interval.h 
    material.h
    ray.h
    rtweekend.h
    sphere.h
    vec3.h
)

target_include_directories(RayTracer PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})

set_target_properties(RayTracer PROPERTIES
    VS_DEBUGGER_WORKING_DIRECTORY "${CMAKE_SOURCE_DIR}"
)

target_compile_definitions(RayTracer PRIVATE PROJECT_ROOT="${CMAKE_SOURCE_DIR}")

# Suppress a specific MSVC warning (C26819)
if(MSVC)
    add_compile_options(/wd26819)
endif()