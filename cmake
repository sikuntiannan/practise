cmake_minimum_required(VERSION 3.0.0)
project(practice VERSION 0.1.0)

#在cmake 命令中加参数来控制代码的编译宏的定义
if(OPENCV_TEST_DZ )
#添加编译选项
    add_definitions(-DOPENCV_TEST_DZ)
    message('OPENCV_TEST_DZ的状态是："on"')
else()
    message('OPENCV_TEST_DZ的状态是："false"')
endif()

if(BOOST_TEST_DZ )
    add_definitions(-DBOOST_TEST_DZ)
    message('BOOST_TEST_DZ的状态是："true"')
else()
    message('BOOST_TEST_DZ的状态是："false"')
endif()

#添加编译选项
add_compile_options(-Wall)

if(CMAKE_COMPILER_IS_GNUCXX)
    add_compile_options(-std=c++1z)
endif()

if(CMAKE_BUILD_TYPE STREQUAL "debug")
    message("编译类型debug")
    add_compile_options(-g )
else()
    message("编译类型release")
    add_compile_options(-O2 )
endif()


#添加头文件
include_directories(/usr/loacl/include)
include_directories(inc)
#添加源文件
aux_source_directory(src SRC)
#添加目标文件
add_executable(practice main.cpp ${SRC})
#添加库目录
link_directories(/usr/local/lib)
#设置要使用的库
#opencv
target_link_libraries(practice opencv_img_hash;opencv_world)

 #boost
 target_link_libraries(practice boost_atomic; boost_chrono;
 boost_container; boost_context; boost_contract; boost_coroutine; boost_date_time; boost_exception; boost_fiber; boost_filesystem; boost_graph; boost_iostreams; boost_locale;
 boost_log; boost_log_setup; boost_math_c99; boost_math_c99f;boost_math_c99l;boost_math_tr1;boost_math_tr1f; boost_math_tr1l; boost_prg_exec_monitor; boost_program_options; boost_random; boost_regex;
 boost_serialization; boost_stacktrace_addr2line; boost_stacktrace_backtrace; boost_stacktrace_basic; boost_stacktrace_noop; boost_system; boost_test_exec_monitor; boost_thread; boost_timer; boost_type_erasure;
 boost_unit_test_framework; boost_wave; boost_wserialization)
 
#设置其他东西
set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)






# cmake -D CMAKE_BUILD_TYPE=RELEASE -D WITH_QT=ON \
#     -D CMAKE_INSTALL_PREFIX=/usr/local \
#     -D BUILD_opencv_python2=ON \
#     -D PYTHON2_LIBRARY=/usr/local/Frameworks/Python.framework/Versions/2.7/lib/libpython2.7.dylib \
#     -D PYTHON2_INCLUDE_DIR=/usr/local/Frameworks/Python.framework/Versions/2.7/include/python2.7 \
#     -D PYTHON2_EXECUTABLE=/usr/local/bin/python \
#     -D BUILD_opencv_python3=ON \
#     -D PYTHON3_LIBRARY=/usr/local/Frameworks/Python.framework/Versions/3.6/lib/libpython3.6.dylib \
#     -D PYTHON3_INCLUDE_DIR=/usr/local/Frameworks/Python.framework/Versions/3.6/include/python3.6m \
#     -D PYTHON3_EXECUTABLE=/usr/local/bin/python3 ..
# /GadNet/build$ cmake .. -DBOOST_TEST_DZ=1  有boost库，但没有OpenCV