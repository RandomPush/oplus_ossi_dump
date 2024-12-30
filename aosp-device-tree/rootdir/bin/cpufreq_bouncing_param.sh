#!/vendor/bin/sh

#Guanglei.Li@BSP.Kernel.Sched, 2023/02/01, config cpufreq bouncing param
prjname=`getprop ro.boot.prjname`
if [ -n "$prjname" ]; then
	case $prjname in
#		"21871" | "21872")
#			#config cluster1 cb limit freq level 3(2.55G)
#			echo "1,1,3,30,2,50,1,50" > /sys/module/cpufreq_bouncing/parameters/config
#			#config cluster2 cb limit freq level 7(2.65G)
#			echo "2,1,7,30,2,50,1,50" > /sys/module/cpufreq_bouncing/parameters/config
#			;;
		*)
			#default config cluster1 cb limit freq level 11(2.1G)
			echo "1,1,11,30,2,50,1,50" > /sys/module/cpufreq_bouncing/parameters/config
			#default config cluster2 cb limit freq level 13(2.35G)
			echo "2,1,13,30,2,50,1,50" > /sys/module/cpufreq_bouncing/parameters/config
			;;
	esac
fi
