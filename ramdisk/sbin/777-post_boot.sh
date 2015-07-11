#!/system/bin/sh

BB=/sbin/bb/busybox

############################
# Custom Kernel Settings for 777 Kernel!
#
echo "[777-Kernel] Boot Script Started" | tee /dev/kmsg
stop mpdecision

############################
# MSM_Hotplug Settings
#
echo 1 > /sys/module/msm_hotplug/min_cpus_online
echo 2 > /sys/module/msm_hotplug/cpus_boosted
echo 1000 > /sys/module/msm_hotplug/down_lock_duration
echo 2500 > /sys/module/msm_hotplug/boost_lock_duration
echo 10 > /sys/module/msm_hotplug/update_rates
echo 99 > /sys/module/msm_hotplug/fast_lane_load
echo 1 > /sys/module/msm_hotplug/max_cpus_online_susp

############################
# MSM Limiter
#
echo 300000 > /sys/kernel/msm_limiter/suspend_min_freq_0
echo 300000 > /sys/kernel/msm_limiter/suspend_min_freq_1
echo 300000 > /sys/kernel/msm_limiter/suspend_min_freq_2
echo 300000 > /sys/kernel/msm_limiter/suspend_min_freq_3
echo 2457600 > /sys/kernel/msm_limiter/resume_max_freq_0
echo 2457600 > /sys/kernel/msm_limiter/resume_max_freq_1
echo 2457600 > /sys/kernel/msm_limiter/resume_max_freq_2
echo 2457600 > /sys/kernel/msm_limiter/resume_max_freq_3
echo 1728000 > /sys/kernel/msm_limiter/suspend_max_freq

############################
# MSM Thermal (Intelli-Thermal v2)
#
echo 1 > /sys/module/msm_thermal/core_control/enabled
echo 1 > /sys/module/msm_thermal/parameters/enabled

############################
# Sweep2Sleep
#
echo 1 > /sys/android_touch/sweep2wake

echo "[777-Kernel] Boot Script Completed!" | tee /dev/kmsg
