
lmk.set_global_env {

   DMZ_USE_QT=true,
   DMZ_QT_HOME="$(lmk.projectRoot)/depend/bin",
   DMZ_QT_INCLUDE_PATH="/Library/Frameworks",
   DMZ_QT_LIB_PATH="/Library/Frameworks",
--   DMZ_QT_HOME="/usr/local/Trolltech/Qt-4.4.0-tp1/bin",
--   DMZ_QT_INCLUDE_PATH="/usr/local/Trolltech/Qt-4.4.0-tp1/include",
--   DMZ_QT_LIB_PATH="/usr/local/Trolltech/Qt-4.4.0-tp1/lib",
   
   DMZ_USE_OGRE=true,
   DMZ_OGRE_INCLUDE_PATH="/Library/Frameworks",
   DMZ_OGRE_LIB_PATH="/Library/Frameworks",
   
   DMZ_USE_OSG=true,
   DMZ_OSG_INCLUDE_PATH="/Library/Frameworks",
   DMZ_OSG_LIB_PATH="/Library/Frameworks",
   
   DMZ_USE_FMOD=true,
   DMZ_FMOD_INCLUDE_PATH="$(lmk.projectRoot)/depend/fmod/api/inc",
   DMZ_FMOD_LIB_PATH="$(lmk.projectRoot)/depend/fmod/api/lib",
}
