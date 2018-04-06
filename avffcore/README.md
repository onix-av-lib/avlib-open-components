FFmpeg build.

Sources: https://github.com/Bilibili/FFmpeg.git
Commit: ff3.2--ijk0.7.2-20161107--001
NDK version: r10e
Toolchain version: 4.9

FFmpeg build configuration:
 --arch=arm --cpu=cortex-a8 --enable-neon --enable-thumb --disable-gpl --disable-nonfree --enable-runtime-cpudetect 
 --disable-gray --disable-swscale-alpha --disable-programs --disable-ffmpeg --disable-ffplay --disable-ffprobe 
 --disable-ffserver --disable-doc --disable-htmlpages --disable-manpages --disable-podpages --disable-txtpages 
 --disable-avdevice --enable-avcodec --enable-avformat --enable-avutil --enable-swresample --enable-swscale 
 --disable-postproc --enable-avfilter --disable-avresample --enable-network --disable-d3d11va --disable-dxva2 
 --disable-vaapi --disable-vda --disable-vdpau --disable-videotoolbox --disable-encoders --enable-encoder=aac 
 --disable-decoders --enable-decoder=aac --enable-decoder=h264 --disable-hwaccels --disable-muxers --enable-muxer=mp4 
 --disable-demuxers --enable-demuxer=aac --enable-demuxer=concat --enable-demuxer=data --enable-demuxer=flv 
 --enable-demuxer=hls --enable-demuxer=live_flv --enable-demuxer=mov --enable-demuxer=mpegps --enable-demuxer=mpegts 
 --disable-parsers --enable-parser=aac --enable-parser=h264 --enable-bsfs --disable-bsf=chomp --disable-bsf=dca_core 
 --disable-bsf=dump_extradata --disable-bsf=hevc_mp4toannexb --disable-bsf=imx_dump_header --disable-bsf=mjpeg2jpeg 
 --disable-bsf=mjpega_dump_header --disable-bsf=mov2textsub --disable-bsf=mp3_header_decompress --disable-bsf=mpeg4_unpack_bframes 
 --disable-bsf=noise --disable-bsf=remove_extradata --disable-bsf=text2movsub --disable-bsf=vp9_superframe --enable-protocols 
 --enable-protocol=async --disable-protocol=bluray --disable-protocol=concat --disable-protocol=crypto --disable-protocol=ffrtmpcrypt 
 --enable-protocol=ffrtmphttp --disable-protocol=gopher --disable-protocol=icecast --disable-protocol='librtmp*' 
 --disable-protocol=libssh --disable-protocol=md5 --disable-protocol=mmsh --disable-protocol=mmst --disable-protocol='rtmp*' 
 --enable-protocol=rtmp --enable-protocol=rtmpt --disable-protocol=rtp --disable-protocol=sctp 
 --disable-protocol=srtp --disable-protocol=subfile --disable-protocol=unix --disable-devices 
 --disable-filters --disable-iconv --disable-audiotoolbox --disable-videotoolbox 
 --cross-prefix=arm-linux-androideabi- --enable-cross-compile --target-os=linux --enable-pic 
 --enable-asm --enable-inline-asm --enable-optimizations --enable-small --extra-cflags='-O3 -Wall -pipe -std=c99 
 -ffast-math -fstrict-aliasing -Werror=strict-aliasing -Wno-psabi -Wa,--noexecstack -DANDROID -DNDEBUG 
 -march=armv7-a -mcpu=cortex-a8 -mfpu=neon -mfloat-abi=softfp -mthumb' --extra-ldflags=' -Wl,--fix-cortex-a8'
 
 

