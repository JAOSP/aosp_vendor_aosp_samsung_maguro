#!/bin/bash
echo "Please wait..."
wget -nc -q https://dl.google.com/dl/android/aosp/yakju-jwr66y-factory-09207065.tgz
tar zxf yakju-jwr66y-factory-09207065.tgz
cd yakju-jwr66y
unzip image-yakju-jwr66y.zip
cd ../
./simg2img yakju-jwr66y/system.img system.ext4.img
mkdir system
mkdir tmp
sudo mount -o loop -t ext4 system.ext4.img tmp
sync
mkdir -p system/lib/soundfx
mkdir -p system/vendor/etc
mkdir -p system/vendor/firmware
mkdir -p system/vendor/lib/drm
mkdir -p system/vendor/lib/hw
mkdir -p system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.7
mkdir -p system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.6
mkdir -p system/vendor/pittpatt/models/recognition
mkdir -p system/vendor/media
mkdir -p system/vendor/lib/mediadrm
mkdir -p system/media/video

cp -a tmp/lib/liblightcycle.so system/lib/liblightcycle.so
cp -a tmp/lib/libjni_mosaic.so system/lib/libjni_mosaic.so
cp -a tmp/lib/libgoggles_clientvision.so system/lib/libgoggles_clientvision.so
cp -a tmp/vendor/etc/smc_normal_world_android_cfg.ini system/vendor/etc/smc_normal_world_android_cfg.ini
cp -a tmp/vendor/etc/sirfgps.conf system/vendor/etc/sirfgps.conf
cp -a tmp/vendor/firmware/smc_pa_wvdrm.ift system/vendor/firmware/smc_pa_wvdrm.ift
cp -a tmp/vendor/firmware/ducati-m3.bin system/vendor/firmware/ducati-m3.bin
cp -a tmp/vendor/lib/drm/libdrmwvmplugin.so system/vendor/lib/drm/libdrmwvmplugin.so
cp -a tmp/vendor/lib/hw/gps.omap4.so system/vendor/lib/hw/gps.omap4.so
cp -a tmp/vendor/lib/libWVStreamControlAPI_L1.so system/vendor/lib/libWVStreamControlAPI_L1.so
cp -a tmp/vendor/lib/libwvdrm_L1.so system/vendor/lib/libwvdrm_L1.so
cp -a tmp/vendor/lib/libwvm.so system/vendor/lib/libwvm.so
cp -a tmp/media/video/AndroidInSpace.240p.mp4 system/media/video/AndroidInSpace.240p.mp4
cp -a tmp/media/video/AndroidInSpace.480p.mp4 system/media/video/AndroidInSpace.480p.mp4
cp -a tmp/media/video/Sunset.240p.mp4 system/media/video/Sunset.240p.mp4
cp -a tmp/media/video/Sunset.480p.mp4 system/media/video/Sunset.480p.mp4
cp -a tmp/media/bootanimation.zip system/media/bootanimation.zip
cp -a tmp/lib/soundfx/libfmas.so system/lib/soundfx/libfmas.so
cp -a tmp/lib/libRSSupport.so system/lib/libRSSupport.so
cp -a tmp/lib/libgames_rtmp_jni.so system/lib/libgames_rtmp_jni.so
cp -a tmp/lib/librs.antblur.so system/lib/librs.antblur.so
cp -a tmp/lib/librs.antblur_constant.so system/lib/librs.antblur_constant.so
cp -a tmp/lib/librs.antblur_drama.so system/lib/librs.antblur_drama.so
cp -a tmp/lib/librs.drama.so system/lib/librs.drama.so
cp -a tmp/lib/librs.film_base.so system/lib/librs.film_base.so
cp -a tmp/lib/librs.fixedframe.so system/lib/librs.fixedframe.so
cp -a tmp/lib/librs.grey.so system/lib/librs.grey.so
cp -a tmp/lib/librs.image_wrapper.so system/lib/librs.image_wrapper.so
cp -a tmp/lib/librs.retrolux.so system/lib/librs.retrolux.so
cp -a tmp/lib/librsjni.so system/lib/librsjni.so
cp -a tmp/lib/libvcdecoder_jni.so system/lib/libvcdecoder_jni.so
cp -a tmp/lib/libvideochat_jni.so system/lib/libvideochat_jni.so
cp -a tmp/lib/libwebp_android.so system/lib/libwebp_android.so
cp -a tmp/lib/libwebrtc_audio_coding.so system/lib/libwebrtc_audio_coding.so
cp -a tmp/vendor/pittpatt/models/recognition/face.face.y0-y0-22-b-N.bin system/vendor/pittpatt/models/recognition/face.face.y0-y0-22-b-N.bin
cp -a tmp/vendor/pittpatt/models/detection/yaw_roll_face_detectors.6/head-y0-yi45-p0-pi45-rn30-ri30.5-v24.bin system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.6/head-y0-yi45-p0-pi45-rn30-ri30.5-v24.bin
cp -a tmp/vendor/pittpatt/models/detection/yaw_roll_face_detectors.6/head-y0-yi45-p0-pi45-rp30-ri30.5-v24.bin system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.6/head-y0-yi45-p0-pi45-rp30-ri30.5-v24.bin
cp -a tmp/vendor/pittpatt/models/detection/yaw_roll_face_detectors.6/head-y0-yi45-p0-pi45-r0-ri30.4a-v24.bin system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.6/head-y0-yi45-p0-pi45-r0-ri30.4a-v24.bin
cp -a tmp/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.7/left_eye-y0-yi45-p0-pi45-r0-ri20.lg_32.bin system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.7/left_eye-y0-yi45-p0-pi45-r0-ri20.lg_32.bin
cp -a tmp/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.7/right_eye-y0-yi45-p0-pi45-r0-ri20.lg_32-2.bin system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.7/right_eye-y0-yi45-p0-pi45-r0-ri20.lg_32-2.bin
cp -a tmp/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.7/nose_base-y0-yi45-p0-pi45-r0-ri20.lg_32.bin system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.7/nose_base-y0-yi45-p0-pi45-r0-ri20.lg_32.bin
cp -a tmp/vendor/media/LMspeed_508.emd system/vendor/media/LMspeed_508.emd
cp -a tmp/vendor/media/PFFprec_600.emd system/vendor/media/PFFprec_600.emd
cp -a tmp/vendor/lib/mediadrm/libwvdrmengine.so system/vendor/lib/mediadrm/libwvdrmengine.so
cp -a tmp/vendor/lib/libfrsdk.so system/vendor/lib/libfrsdk.so

sudo umount tmp
rm -rf tmp
rm -rf yakju-jwr66y
rm system.ext4.img

