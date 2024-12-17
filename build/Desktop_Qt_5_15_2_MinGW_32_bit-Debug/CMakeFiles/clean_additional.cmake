# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "Aerosol_detection_equipment_autogen"
  "CMakeFiles\\Aerosol_detection_equipment_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\Aerosol_detection_equipment_autogen.dir\\ParseCache.txt"
  )
endif()
