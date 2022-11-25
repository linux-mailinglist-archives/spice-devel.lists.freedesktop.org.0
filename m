Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CDC76389D6
	for <lists+spice-devel@lfdr.de>; Fri, 25 Nov 2022 13:33:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8800710E0B6;
	Fri, 25 Nov 2022 12:33:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-41103.protonmail.ch (mail-41103.protonmail.ch
 [185.70.41.103])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CA6810E0B6
 for <spice-devel@lists.freedesktop.org>; Fri, 25 Nov 2022 12:33:16 +0000 (UTC)
Date: Fri, 25 Nov 2022 12:32:57 +0000
Authentication-Results: mail-41103.protonmail.ch;
 dkim=pass (2048-bit key) header.d=ecentrum.hu header.i=@ecentrum.hu
 header.b="h5TXXk/A"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ecentrum.hu;
 s=protonmail3; t=1669379587; x=1669638787;
 bh=w4/uqUqOWBZS8RgohsMpt6SD0QgSiy5hqpMJDpBbTeM=;
 h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
 b=h5TXXk/A78NR1wj+TlSLQcNWeXBtLfiez6UsKaznTqiG+KbS1ZPRzQInQNpqJPDWn
 SyaebpJIGLZxLgvnyEBbAukzrqg9vyW1bNaqwagrzKHhw6MHcWXyOdnERmDowRgn+P
 42k4t81J3TqsMoF2PuXQZUfSY55N5+KfPollUNx/WDny1ADShu0VVbYzuECOeWtmQe
 lCjExAa8CD2gO3GFAJDFab9rYggdZkWeDiRtW498EUWIV5LF96SdI398tiuGwQIRqX
 p9G47+zz/ZwJn7lDa5ALE/RfsUI2a2ecM0GUCpRDuELohi7Uxv6UbBdZLithOHOdMv
 9X1tuQXu0w/Fw==
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
From: =?utf-8?Q?L=C3=A9vai=2C_D=C3=A1niel?= <leva@ecentrum.hu>
Message-ID: <WefH0kcTW7ZcEJKoS36RR92aNVDLiXWVT8H27ogg3GaTK84TAGQdrOCZ9bP4URYdLMu4NQaAC1Kk89EX3h_en_QfyiVSR0jVQwAUwb_jOY4=@ecentrum.hu>
Feedback-ID: 12434366:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: [Spice-devel] Trying to turn on gstreamer vaapi {en,de}coding
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi all!

First time here, and was a bit hesitant to post tbh, as this is not a "-dev=
el" sort of thing, but reading through the posts here it seamed there have =
been some technical questions already, so I'm trying my luck. The post is a=
 bit longwinded, it has a bunch of debug outputs and parameters in-line, pl=
ease let me know if you prefer sharing these in another way.

I'm using a couple of VMs with libvirt/qemu hosted on an Ubuntu 22.04.1 LTS=
, accessing them via Spice from an Arch system. The connection between Hype=
visor and client are via Internet, so despite 'localhost' being the host in=
 the tests/examples below, they don't actually run on the same system, it's=
 just a tunnel via `stunnel`.

What I wanted to do is speed up the display (drawing) so it won't lag that =
much when browsing through spreadsheets and using console (with small fonts=
, admittedly). The resolution also plays a role in this at 2560x1440 (only =
one spice display).

What I've tried already is changing the spice section in the domain configu=
ration in libvirt:
    <graphics type=3D'spice' port=3D'5912' autoport=3D'no' listen=3D'127.0.=
0.1'>
      <listen type=3D'address' address=3D'127.0.0.1'/>
      <image compression=3D'auto_glz'/>
      <jpeg compression=3D'never'/>
      <zlib compression=3D'never'/>
      <streaming mode=3D'all'/>
      <filetransfer enable=3D'yes'/>
      <gl enable=3D'no'/>
    </graphics>

Which translates into this -spice qemu parameter:
-spice port=3D5912,addr=3D127.0.0.1,disable-ticketing=3Don,image-compressio=
n=3Dauto_glz,jpeg-wan-compression=3Dnever,zlib-glz-wan-compression=3Dnever,=
streaming-video=3Dall,seamless-migration=3Don

... with the complete command as follows:
/usr/bin/qemu-system-x86_64 -name guest=3Darch,debug-threads=3Don -S -objec=
t {"qom-type":"secret","id":"masterKey0","format":"raw","file":"/var/lib/li=
bvirt/qemu/domain-22-arch/master-key.aes"} -machine pc-q35-4.2,usb=3Doff,vm=
port=3Doff,dump-guest-core=3Doff,memory-backend=3Dpc.ram -accel kvm -cpu Co=
operlake,ss=3Don,vmx=3Don,pdcm=3Don,hypervisor=3Don,tsc-adjust=3Don,sha-ni=
=3Don,umip=3Don,waitpkg=3Don,gfni=3Don,vaes=3Don,vpclmulqdq=3Don,rdpid=3Don=
,movdiri=3Don,movdir64b=3Don,fsrm=3Don,md-clear=3Don,avx-vnni=3Don,xsaves=
=3Don,ibpb=3Don,ibrs=3Don,amd-stibp=3Don,amd-ssbd=3Don,hle=3Doff,rtm=3Doff,=
avx512f=3Doff,avx512dq=3Doff,avx512cd=3Doff,avx512bw=3Doff,avx512vl=3Doff,a=
vx512vnni=3Doff,avx512-bf16=3Doff,taa-no=3Doff -m 16384 -object {"qom-type"=
:"memory-backend-ram","id":"pc.ram","size":17179869184} -overcommit mem-loc=
k=3Doff -smp 4,sockets=3D4,cores=3D1,threads=3D1 -no-user-config -nodefault=
s -chardev socket,id=3Dcharmonitor,fd=3D38,server=3Don,wait=3Doff -mon char=
dev=3Dcharmonitor,id=3Dmonitor,mode=3Dcontrol -rtc base=3Dutc,driftfix=3Dsl=
ew -global kvm-pit.lost_tick_policy=3Ddelay -no-hpet -no-shutdown -global I=
CH9-LPC.disable_s3=3D1 -global ICH9-LPC.disable_s4=3D1 -boot strict=3Don -d=
evice pcie-root-port,port=3D16,chassis=3D1,id=3Dpci.1,bus=3Dpcie.0,multifun=
ction=3Don,addr=3D0x2 -device pcie-root-port,port=3D17,chassis=3D2,id=3Dpci=
.2,bus=3Dpcie.0,addr=3D0x2.0x1 -device pcie-root-port,port=3D18,chassis=3D3=
,id=3Dpci.3,bus=3Dpcie.0,addr=3D0x2.0x2 -device pcie-root-port,port=3D19,ch=
assis=3D4,id=3Dpci.4,bus=3Dpcie.0,addr=3D0x2.0x3 -device pcie-root-port,por=
t=3D20,chassis=3D5,id=3Dpci.5,bus=3Dpcie.0,addr=3D0x2.0x4 -device pcie-root=
-port,port=3D21,chassis=3D6,id=3Dpci.6,bus=3Dpcie.0,addr=3D0x2.0x5 -device =
pcie-root-port,port=3D22,chassis=3D7,id=3Dpci.7,bus=3Dpcie.0,addr=3D0x2.0x6=
 -device pcie-root-port,port=3D23,chassis=3D8,id=3Dpci.8,bus=3Dpcie.0,addr=
=3D0x2.0x7 -device qemu-xhci,p2=3D15,p3=3D15,id=3Dusb,bus=3Dpci.2,addr=3D0x=
0 -device virtio-serial-pci,id=3Dvirtio-serial0,bus=3Dpci.3,addr=3D0x0 -blo=
ckdev {"driver":"file","filename":"/var/lib/libvirt/images/archlinux.qcow2"=
,"node-name":"libvirt-2-storage","auto-read-only":true,"discard":"unmap"} -=
blockdev {"node-name":"libvirt-2-format","read-only":false,"driver":"qcow2"=
,"file":"libvirt-2-storage","backing":null} -device virtio-blk-pci,bus=3Dpc=
i.4,addr=3D0x0,drive=3Dlibvirt-2-format,id=3Dvirtio-disk0,bootindex=3D1 -de=
vice ide-cd,bus=3Dide.0,id=3Dsata0-0-0 -netdev tap,fd=3D39,id=3Dhostnet0,vh=
ost=3Don,vhostfd=3D41 -device virtio-net-pci,netdev=3Dhostnet0,id=3Dnet0,bu=
s=3Dpci.1,addr=3D0x0 -chardev pty,id=3Dcharserial0 -device isa-serial,chard=
ev=3Dcharserial0,id=3Dserial0 -chardev socket,id=3Dcharchannel0,fd=3D35,ser=
ver=3Don,wait=3Doff -device virtserialport,bus=3Dvirtio-serial0.0,nr=3D1,ch=
ardev=3Dcharchannel0,id=3Dchannel0,name=3Dorg.qemu.guest_agent.0 -chardev s=
picevmc,id=3Dcharchannel1,name=3Dvdagent -device virtserialport,bus=3Dvirti=
o-serial0.0,nr=3D2,chardev=3Dcharchannel1,id=3Dchannel1,name=3Dcom.redhat.s=
pice.0 -device usb-tablet,id=3Dinput0,bus=3Dusb.0,port=3D1 -device virtio-k=
eyboard-pci,id=3Dinput2,bus=3Dpci.7,addr=3D0x0 -device usb-mouse,id=3Dinput=
3,bus=3Dusb.0,port=3D4 -audiodev {"id":"audio1","driver":"spice"} -spice po=
rt=3D5912,addr=3D127.0.0.1,disable-ticketing=3Don,image-compression=3Dauto_=
glz,jpeg-wan-compression=3Dnever,zlib-glz-wan-compression=3Dnever,streaming=
-video=3Dall,seamless-migration=3Don -device virtio-vga,id=3Dvideo0,max_out=
puts=3D1,bus=3Dpcie.0,addr=3D0x1 -device ich9-intel-hda,id=3Dsound0,bus=3Dp=
cie.0,addr=3D0x1b -device hda-duplex,id=3Dsound0-codec0,bus=3Dsound0.0,cad=
=3D0,audiodev=3Daudio1 -chardev spicevmc,id=3Dcharredir0,name=3Dusbredir -d=
evice usb-redir,chardev=3Dcharredir0,id=3Dredir0,bus=3Dusb.0,port=3D2 -char=
dev spicevmc,id=3Dcharredir1,name=3Dusbredir -device usb-redir,chardev=3Dch=
arredir1,id=3Dredir1,bus=3Dusb.0,port=3D3 -device virtio-balloon-pci,id=3Db=
alloon0,bus=3Dpci.5,addr=3D0x0 -object {"qom-type":"rng-random","id":"objrn=
g0","filename":"/dev/urandom"} -device virtio-rng-pci,rng=3Dobjrng0,id=3Drn=
g0,bus=3Dpci.6,addr=3D0x0 -sandbox on,obsolete=3Ddeny,elevateprivileges=3Dd=
eny,spawn=3Ddeny,resourcecontrol=3Ddeny -msg timestamp=3Don



Basically, I thought turning 'streaming mode'/'streaming-video' to 'all' wo=
uld make spice think it needs to stream the whole screen content regardless=
 of its heuristics detecting a video stream. I thought if I could enable HW=
 encoding/decoding with these options, I'd get better performance out of it=
.

Version details:
Hypervisor host:
gstreamer1.0-plugins-bad:amd64 1.20.3-0ubuntu1
gstreamer1.0-plugins-bad-apps 1.20.3-0ubuntu1
gstreamer1.0-plugins-base:amd64 1.20.1-1
gstreamer1.0-plugins-base-apps 1.20.1-1
gstreamer1.0-plugins-good:amd64 1.20.3-0ubuntu1
gstreamer1.0-plugins-ugly:amd64 1.20.1-1
gstreamer1.0-vaapi:amd64 1.20.1-1ubuntu1
libgstreamer-plugins-bad1.0-0:amd64 1.20.3-0ubuntu1
libgstreamer-plugins-base1.0-0:amd64 1.20.1-1
libgstreamer-plugins-good1.0-0:amd64 1.20.3-0ubuntu1
libgstreamer1.0-0:amd64 1.20.3-0ubuntu1
libvirt-daemon 8.0.0-1ubuntu7.3
qemu-system-x86 1:6.2+dfsg-2ubuntu6.5
intel-media-va-driver-non-free:amd64  22.3.1+ds1-1

Client:
gst-plugins-bad 1.20.4-3
gst-plugins-bad-libs 1.20.4-3
gst-plugins-base 1.20.4-3
gst-plugins-base-libs 1.20.4-3
gst-plugins-good 1.20.4-3
gst-plugins-ugly 1.20.4-3
gstreamer 1.20.4-3
gstreamer-vaapi 1.20.4-3
spice 0.15.1-1
virt-viewer 11.0-2
intel-media-driver 22.4.4-2


As part of troubleshooting here, I checked if I have the necessary codecs/e=
ncoders/decoders with gstreamer on the different systems:

On the hypervisor host (with Intel Alderlake (12th gen) graphics):

As my unrpivileged user:
$ gst-inspect-1.0 |grep -F -i vaapi
vaapi:  vaapiav1dec: VA-API AV1 decoder
vaapi:  vaapidecodebin: VA-API Decode Bin
vaapi:  vaapih264dec: VA-API H264 decoder
vaapi:  vaapih264enc: VA-API H264 encoder
vaapi:  vaapih265dec: VA-API H265 decoder
vaapi:  vaapih265enc: VA-API H265 encoder
vaapi:  vaapijpegdec: VA-API JPEG decoder
vaapi:  vaapijpegenc: VA-API JPEG encoder
vaapi:  vaapimpeg2dec: VA-API MPEG2 decoder
vaapi:  vaapimpeg2enc: VA-API MPEG-2 encoder
vaapi:  vaapioverlay: VA-API overlay
vaapi:  vaapipostproc: VA-API video postprocessing
vaapi:  vaapisink: VA-API sink
vaapi:  vaapivc1dec: VA-API VC1 decoder
vaapi:  vaapivp9dec: VA-API VP9 decoder
vaapi:  vaapivp9enc: VA-API VP9 encoder

As the libvirt user that runs qemu:
# sudo -u libvirt-qemu gst-inspect-1.0 |grep -F -i vaapi
vaapi:  vaapiav1dec: VA-API AV1 decoder
vaapi:  vaapidecodebin: VA-API Decode Bin
vaapi:  vaapih264dec: VA-API H264 decoder
vaapi:  vaapih264enc: VA-API H264 encoder
vaapi:  vaapih265dec: VA-API H265 decoder
vaapi:  vaapih265enc: VA-API H265 encoder
vaapi:  vaapijpegdec: VA-API JPEG decoder
vaapi:  vaapijpegenc: VA-API JPEG encoder
vaapi:  vaapimpeg2dec: VA-API MPEG2 decoder
vaapi:  vaapimpeg2enc: VA-API MPEG-2 encoder
vaapi:  vaapioverlay: VA-API overlay
vaapi:  vaapipostproc: VA-API video postprocessing
vaapi:  vaapisink: VA-API sink
vaapi:  vaapivc1dec: VA-API VC1 decoder
vaapi:  vaapivp9dec: VA-API VP9 decoder
vaapi:  vaapivp9enc: VA-API VP9 encoder


On the client (with Intel CometLake (10th gen) graphics):
As my user running the client (spicy/remote-viewer):
$ gst-inspect-1.0 |grep -F -i vaapi
vaapi:  vaapidecodebin: VA-API Decode Bin
vaapi:  vaapih264dec: VA-API H264 decoder
vaapi:  vaapih264enc: VA-API H264 encoder
vaapi:  vaapih265dec: VA-API H265 decoder
vaapi:  vaapih265enc: VA-API H265 encoder
vaapi:  vaapijpegdec: VA-API JPEG decoder
vaapi:  vaapijpegenc: VA-API JPEG encoder
vaapi:  vaapimpeg2dec: VA-API MPEG2 decoder
vaapi:  vaapimpeg2enc: VA-API MPEG-2 encoder
vaapi:  vaapioverlay: VA-API overlay
vaapi:  vaapipostproc: VA-API video postprocessing
vaapi:  vaapisink: VA-API sink
vaapi:  vaapivc1dec: VA-API VC1 decoder
vaapi:  vaapivp8dec: VA-API VP8 decoder
vaapi:  vaapivp8enc: VA-API VP8 encoder
vaapi:  vaapivp9dec: VA-API VP9 decoder

(a good common ground could be VP9 as the host can encode and the client ca=
n decode, or h264/h265 as both can encode/decode)


As an example of using vaapi, tested with mpv (--vo=3Dgpu):
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D8<=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
[...]
[vo/gpu] Probing for best GPU context.
[vo/gpu/opengl] Initializing GPU context 'wayland'
[vo/gpu/opengl] Initializing GPU context 'x11egl'
[vo/gpu/x11] X11 opening display: :0
[vo/gpu/x11] Display 0 (DP-1): [2560, 0, 5120, 1440] @ 74.923939 FPS
[vo/gpu/x11] Display 1 (DP-2): [0, 0, 2560, 1440] @ 74.968101 FPS
[vo/gpu/x11] Current display FPS: 74.923939
[vo/gpu/opengl] EGL_VERSION=3D1.5
[vo/gpu/opengl] EGL_VENDOR=3DMesa Project
[vo/gpu/opengl] EGL_CLIENT_APIS=3DOpenGL OpenGL_ES
[vo/gpu/opengl] Trying to create Desktop OpenGL context.
[vo/gpu/opengl] Choosing visual EGL config 0x15, visual ID 0x21
[vo/gpu/x11] The XPresent extension was found.
[vo/gpu/x11] XPresent disabled.
[vo/gpu/opengl] GL_VERSION=3D'4.6 (Core Profile) Mesa 22.2.3'
[vo/gpu/opengl] Detected desktop OpenGL 4.6.
[vo/gpu/opengl] GL_VENDOR=3D'Intel'
[vo/gpu/opengl] GL_RENDERER=3D'Mesa Intel(R) UHD Graphics (CML GT2)'
[vo/gpu/opengl] GL_SHADING_LANGUAGE_VERSION=3D'4.60'
[vo/gpu/opengl] Loaded extension GL_KHR_debug.
[vo/gpu] Testing FBO format rgba16f
[vo/gpu] Using FBO format rgba16f.
[vo/gpu] No advanced processing required. Enabling dumb mode.
[vo/gpu] Assuming 74.923939 FPS for display sync.
[vd] Container reported FPS: 0.000000
[vd] Codec list:
[vd]     hevc - HEVC (High Efficiency Video Coding)
[vd]     hevc_qsv (hevc) - HEVC video (Intel Quick Sync Video acceleration)
[vd]     hevc_v4l2m2m (hevc) - V4L2 mem2mem HEVC decoder wrapper
[vd]     hevc_cuvid (hevc) - Nvidia CUVID HEVC decoder
[vd] Opening decoder hevc
[vd] Looking at hwdec hevc-vaapi...
[vo/gpu] Loading hwdec drivers for format: 'vaapi'
[vo/gpu] Loading hwdec driver 'vaapi'
[vo/gpu/vaapi] using EGL dmabuf interop
[vo/gpu/vaapi] Trying to open a x11 VA display...
[vo/gpu/vaapi/vaapi] Initialized VAAPI: version 1.16
[vo/gpu/vaapi] Going to probe surface formats (may log bogus errors)...
[vo/gpu/vaapi] Done probing surface formats.
[vd] Trying hardware decoding via hevc-vaapi.
[vd] Selected codec: hevc (HEVC (High Efficiency Video Coding))
[vf] User filter list:
[vf]   (empty)
[cplayer] Starting playback...
[vd] Pixel formats supported by decoder: vaapi vdpau cuda yuvj420p
[vd] Codec profile: Main (0x1)
[vd] Requesting pixfmt 'vaapi' from decoder.
[vd] Using hardware decoding (vaapi).
[vd] Decoder format: 1920x1080 [0:1] vaapi[nv12] bt.709/bt.709/bt.1886/full=
/auto CL=3Dmpeg2/4/h264
[vd] Using container aspect ratio.
[vf] [in] 1920x1080 vaapi[nv12] bt.709/bt.709/bt.1886/full/display SP=3D1.0=
00000 CL=3Dmpeg2/4/h264
[vf] [userdeint] 1920x1080 vaapi[nv12] bt.709/bt.709/bt.1886/full/display S=
P=3D1.000000 CL=3Dmpeg2/4/h264
[vf] [userdeint] (disabled)
[vf] [autorotate] 1920x1080 vaapi[nv12] bt.709/bt.709/bt.1886/full/display =
SP=3D1.000000 CL=3Dmpeg2/4/h264
[vf] [autorotate] (disabled)
[vf] [convert] 1920x1080 vaapi[nv12] bt.709/bt.709/bt.1886/full/display SP=
=3D1.000000 CL=3Dmpeg2/4/h264
[vf] [convert] (disabled)
[vf] [out] 1920x1080 vaapi[nv12] bt.709/bt.709/bt.1886/full/display SP=3D1.=
000000 CL=3Dmpeg2/4/h264
[cplayer] Set property: shared-script-properties -> 1
[cplayer] VO: [gpu] 1920x1080 vaapi[nv12]
[cplayer] VO: Description: Shader-based GPU Renderer
[vo/gpu] reconfig to 1920x1080 vaapi[nv12] bt.709/bt.709/bt.1886/full/displ=
ay SP=3D1.000000 CL=3Dmpeg2/4/h264
[vo/gpu/x11] Current display FPS: 74.968101
[vo/gpu/x11] Current display FPS: 74.923939
[vo/gpu] Resize: 1920x1080
[vo/gpu] Window size: 1920x1080 (Borders: l=3D0 t=3D0 r=3D0 b=3D0)
[vo/gpu] Video source: 1920x1080 (1:1)
[vo/gpu] Video display: (0, 0) 1920x1080 -> (0, 0) 1920x1080
[vo/gpu] Video scale: 1.000000/1.000000
[vo/gpu] OSD borders: l=3D0 t=3D0 r=3D0 b=3D0
[vo/gpu] Video borders: l=3D0 t=3D0 r=3D0 b=3D0
[vo/gpu] Reported display depth: 8
[vo/gpu] Testing FBO format rgba16f
[vo/gpu] Using FBO format rgba16f.
[vo/gpu] No advanced processing required. Enabling dumb mode.
[...]
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D8<=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

This works fine, while also can check the GPU utilization with intel_gpu_to=
p - the /Video/ metric keeps changing during playback.


So I'm testing with `spicy` first and foremost because it actually has a me=
nu option to switch between video encodings, which I don't know how to do w=
ith e.g. remote-viewer or virt-viewer.

$ GST_DEBUG=3D4 spicy --spice-debug -p 5912 -h localhost

Long story short, while the client output shows that gstreamer picks up its=
 vaapi plugin, and actually loads the intel iHD DRI driver, it still doesn'=
t use the GPU to decode.
I'm afraid something lies underneath the configuration and the protocol tha=
t I don't understand. Maybe the host doesn't even encode its stream into e.=
g. h264 even though the client (=3Dspicy) requests so, therefore it can't v=
ery well decode it with the GPU.
I imagined something along the lines of Spice encoding the stream on the ho=
st with the help of the GPU (gstreamer + vaapi) and then the client could d=
ecode it on the other end with its GPU as well - as far as they agree on a =
codec that both support (more specifically the host supports encoding to it=
 and the client suppports decoding from it).

I was afraid of posting the full output with --spice-debug, becuase it had =
a ton of "decode-glz.c:335 decode_header:" and "scroll event" lines, so I s=
nipped these out from it.


0:00:00.000026639 236125 0x562204e5c670 INFO                GST_INIT gst.c:=
591:init_pre: Initializing GStreamer Core Library version 1.20.4
0:00:00.000048805 236125 0x562204e5c670 INFO                GST_INIT gst.c:=
592:init_pre: Using library installed in /usr/lib
0:00:00.000055358 236125 0x562204e5c670 INFO                GST_INIT gst.c:=
610:init_pre: Linux serenity 5.15.79-1-lts #1 SMP Wed, 16 Nov 2022 11:03:21=
 +0000 x86_64
0:00:00.000149422 236125 0x562204e5c670 INFO                GST_INIT gstmes=
sage.c:129:_priv_gst_message_initialize: init messages
0:00:00.000356649 236125 0x562204e5c670 INFO                GST_INIT gstcon=
text.c:86:_priv_gst_context_initialize: init contexts
0:00:00.000482810 236125 0x562204e5c670 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:324:_priv_gst_plugin_initialize: registering 0 static plugins
0:00:00.000521933 236125 0x562204e5c670 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:232:gst_plugin_register_static: registered static plugin "staticeleme=
nts"
0:00:00.000528524 236125 0x562204e5c670 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:234:gst_plugin_register_static: added static plugin "staticelements",=
 result: 1
0:00:00.000549734 236125 0x562204e5c670 INFO            GST_REGISTRY gstreg=
istry.c:1826:ensure_current_registry: reading registry cache: /home/daniell=
/.cache/gstreamer-1.0/registry.x86_64.bin
0:00:00.000613228 236125 0x562204e5c670 INFO            GST_REGISTRY gstreg=
istrybinary.c:601:priv_gst_registry_binary_read_cache: Unable to mmap file =
/home/daniell/.cache/gstreamer-1.0/registry.x86_64.bin : Failed to open fil=
e =E2=80=9C/home/daniell/.cache/gstreamer-1.0/registry.x86_64.bin=E2=80=
=9D: open() failed: No such file or directory
0:00:00.000621567 236125 0x562204e5c670 INFO            GST_REGISTRY gstreg=
istrybinary.c:611:priv_gst_registry_binary_read_cache: Unable to read file =
/home/daniell/.cache/gstreamer-1.0/registry.x86_64.bin : Failed to open fil=
e =E2=80=9C/home/daniell/.cache/gstreamer-1.0/registry.x86_64.bin=E2=80=
=9D: No such file or directory
0:00:00.000625503 236125 0x562204e5c670 INFO            GST_REGISTRY gstreg=
istry.c:1693:scan_and_update_registry: Validating plugins from registry cac=
he: /home/daniell/.cache/gstreamer-1.0/registry.x86_64.bin
0:00:00.000030197 236128 0x55ab8871e800 INFO                GST_INIT gst.c:=
591:init_pre: Initializing GStreamer Core Library version 1.20.4
0:00:00.000046828 236128 0x55ab8871e800 INFO                GST_INIT gst.c:=
592:init_pre: Using library installed in /usr/lib
0:00:00.000052592 236128 0x55ab8871e800 INFO                GST_INIT gst.c:=
610:init_pre: Linux serenity 5.15.79-1-lts #1 SMP Wed, 16 Nov 2022 11:03:21=
 +0000 x86_64
0:00:00.000155912 236128 0x55ab8871e800 INFO                GST_INIT gstmes=
sage.c:129:_priv_gst_message_initialize: init messages
0:00:00.000363105 236128 0x55ab8871e800 INFO                GST_INIT gstcon=
text.c:86:_priv_gst_context_initialize: init contexts
0:00:00.000463164 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:324:_priv_gst_plugin_initialize: registering 0 static plugins
0:00:00.000503512 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:232:gst_plugin_register_static: registered static plugin "staticeleme=
nts"
0:00:00.000509335 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:234:gst_plugin_register_static: added static plugin "staticelements",=
 result: 1
0:00:00.000525241 236128 0x55ab8871e800 INFO            GST_REGISTRY gstreg=
istry.c:1861:ensure_current_registry: registry reading and updating done
0:00:00.000537416 236128 0x55ab8871e800 INFO                GST_INIT gst.c:=
826:init_post: GLib runtime version: 2.74.1
0:00:00.000541245 236128 0x55ab8871e800 INFO                GST_INIT gst.c:=
828:init_post: GLib headers version: 2.74.1
0:00:00.000543846 236128 0x55ab8871e800 INFO                GST_INIT gst.c:=
830:init_post: initialized GStreamer successfully
0:00:00.003924830 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstclosedcaption.so" loaded
0:00:00.005164121 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgsthls.so" loaded
0:00:00.005688131 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstrtpmanagerbad.so" loaded
0:00:00.005936718 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstmicrodns.so" loaded
0:00:00.006783974 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstavi.so" loaded
0:00:00.007136697 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstasfmux.so" loaded
0:00:00.007807669 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstgoom.so" loaded
0:00:00.008133436 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstvideoscale.so" loaded
0:00:00.010195038 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstopenmpt.so" loaded
0:00:00.010705107 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstrawparse.so" loaded
0:00:00.010974252 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstopenaptx.so" loaded
0:00:00.011324097 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgsttheora.so" loaded
0:00:00.011459721 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for subpar=
se_typefind
0:00:00.011515988 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstsubparse.so" loaded
0:00:00.011779813 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstinterlace.so" loaded
0:00:00.012124376 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstopus.so" loaded
0:00:00.012325765 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstwildmidi.so" loaded
0:00:00.012560325 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstdvdread.so" loaded
0:00:00.012951083 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstmpegtsdemux.so" loaded
0:00:00.013202987 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstsbc.so" loaded
0:00:00.013359161 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgsty4menc.so" loaded
0:00:00.013547512 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstvideofiltersbad.so" loaded
0:00:00.013804313 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstximagesrc.so" loaded
0:00:00.014116553 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstoss4.so" loaded
0:00:00.018256369 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstgio.so" loaded
0:00:00.018850927 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstgeometrictransform.so" loaded
0:00:00.022060494 236128 0x55ab8871e800 INFO         curl_multi_loop gstcur=
lhttpsrc.c:477:gst_curl_http_src_class_init: Testing the curl_multi_loop de=
bugging prints
0:00:00.022099849 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstcurl.so" loaded
0:00:00.022525116 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstspeex.so" loaded
0:00:00.022930459 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstdtls.so" loaded
0:00:00.024540165 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstopenexr.so" loaded
0:00:00.024797424 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgsta52dec.so" loaded
0:00:00.026588121 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstrtmp.so" loaded
0:00:00.026727848 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstivfparse.so" loaded
0:00:00.027066165 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstcdparanoia.so" loaded
0:00:00.027410656 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstaom.so" loaded
0:00:00.027562842 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstimagefreeze.so" loaded
0:00:00.027958918 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstmultifile.so" loaded
0:00:00.028372990 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstresindvd.so" loaded
0:00:00.028726304 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstsdpelem.so" loaded
0:00:00.028890065 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstlevel.so" loaded
0:00:00.029061309 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstaudiotestsrc.so" loaded
0:00:00.029766665 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstdc1394.so" loaded
0:00:00.030805447 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstdash.so" loaded
0:00:00.031231879 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstwaylandsink.so" loaded
0:00:00.031791998 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstdv.so" loaded
0:00:00.032333581 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstmpeg2enc.so" loaded
0:00:00.032478578 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstremovesilence.so" loaded
0:00:00.033025826 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstmatroska.so" loaded
0:00:00.035046237 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstwebrtc.so" loaded
0:00:00.035205629 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstautoconvert.so" loaded
0:00:00.035526252 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgsttimecode.so" loaded
0:00:00.035666440 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgsticydemux.so" loaded
0:00:00.035923956 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstcompositor.so" loaded
0:00:00.037935613 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstrsvg.so" loaded
0:00:00.038104092 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstadpcmdec.so" loaded
0:00:00.038419154 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstvideofilter.so" loaded
0:00:00.038591423 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstpcapparse.so" loaded
0:00:00.038903415 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgsttcp.so" loaded
0:00:00.039143194 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstjpeg.so" loaded
0:00:00.039335766 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstpng.so" loaded
0:00:00.040426729 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstmodplug.so" loaded
0:00:00.040623413 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstamrwbdec.so" loaded
0:00:00.041236367 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstaasink.so" loaded
0:00:00.041525791 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstwavpack.so" loaded
0:00:00.041838768 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstflv.so" loaded
0:00:00.042107794 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstoverlaycomposition.so" loaded
0:00:00.042279453 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstalpha.so" loaded
0:00:00.042457847 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstaudiobuffersplit.so" loaded
0:00:00.058024467 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstsrtp.so" loaded
0:00:00.058214797 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstvideorate.so" loaded
0:00:00.058442584 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstencoding.so" loaded
0:00:00.058611362 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstdvdlpcmdec.so" loaded
0:00:00.058773662 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstswitchbin.so" loaded
0:00:00.058919618 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstsmooth.so" loaded
0:00:00.059146119 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstvideotestsrc.so" loaded
0:00:00.059687259 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstpango.so" loaded
0:00:00.060084537 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstnice.so" loaded
0:00:00.062377983 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstrtp.so" loaded
0:00:00.062872907 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstvideoframe_audiolevel.so" loaded
0:00:00.066214190 236128 0x55ab8871e800 INFO             chromaprint gstchr=
omaprint.c:305:chromaprint_element_init: libchromaprint 1.5.1
0:00:00.066284058 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstchromaprint.so" loaded
0:00:00.066470011 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for video/=
x-msvideo
0:00:00.066482308 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
qcelp
0:00:00.066488876 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for video/=
x-cdxa
0:00:00.066494730 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
riff-midi
0:00:00.066500560 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-wav
0:00:00.066506218 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for image/=
webp
0:00:00.066515483 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for video/=
x-ms-asf
0:00:00.066522793 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for video/=
x-vcd
0:00:00.066528895 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-imelody
0:00:00.066534526 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/x-scc
0:00:00.066540159 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/vnd.rn-realmedia
0:00:00.066551557 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/x-pn-realaudio
0:00:00.066558210 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for video/=
x-flv
0:00:00.066563540 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-nist
0:00:00.066570770 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-voc
0:00:00.066576121 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-w64
0:00:00.066581225 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-rf64
0:00:00.066586460 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for image/=
gif
0:00:00.066591780 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for image/=
png
0:00:00.066596740 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for video/=
x-mve
0:00:00.066602071 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-amr-nb-sh
0:00:00.066609017 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-amr-wb-sh
0:00:00.066614287 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-sid
0:00:00.066619428 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for image/=
x-xcf
0:00:00.066624588 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for video/=
x-mng
0:00:00.066629683 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for image/=
x-jng
0:00:00.066634821 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for image/=
x-xpixmap
0:00:00.066642084 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for image/=
x-sun-raster
0:00:00.066649431 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/x-bzip
0:00:00.066654754 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/x-gzip
0:00:00.066659928 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/zip
0:00:00.066665025 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/x-compress
0:00:00.066670226 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/x-executable
0:00:00.066677670 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-spc
0:00:00.066682897 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-caf
0:00:00.066690100 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/x-rar
0:00:00.066695595 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-nsf
0:00:00.066700535 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-gym
0:00:00.066705593 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-ay
0:00:00.066710709 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-gbs
0:00:00.066717856 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-vgm
0:00:00.066723342 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-sap
0:00:00.066730209 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for video/=
x-ivf
0:00:00.066735462 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-kss
0:00:00.066740485 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/pdf
0:00:00.066745736 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/msword
0:00:00.066751070 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/octet-stream
0:00:00.066760011 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for image/=
vnd.adobe.photoshop
0:00:00.066765732 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-xi
0:00:00.066771493 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-tap-dmp
0:00:00.066779008 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-musepack
0:00:00.066784887 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-au
0:00:00.066791894 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/x-mcc
0:00:00.066797345 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
midi
0:00:00.066805307 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
mobile-xmf
0:00:00.066810748 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for video/=
x-fli
0:00:00.066818118 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/x-id3v2
0:00:00.066823744 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/x-id3v1
0:00:00.066829769 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/x-apetag
0:00:00.066835567 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-ttafile
0:00:00.066840978 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-mod
0:00:00.066850275 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
mpeg
0:00:00.066856449 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-ac3
0:00:00.066862095 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-dts
0:00:00.066868156 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-gsm
0:00:00.066874615 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for video/=
mpeg-sys
0:00:00.066881428 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for video/=
mpegts
0:00:00.066892097 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/ogg
0:00:00.066900286 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for video/=
mpeg-elementary
0:00:00.066906962 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for video/=
mpeg4
0:00:00.066914938 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for video/=
x-h263
0:00:00.066924855 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for video/=
x-h264
0:00:00.066931709 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for video/=
x-h265
0:00:00.066937672 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for video/=
x-nuv
0:00:00.066943049 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-m4a
0:00:00.066951380 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/x-3gp
0:00:00.066957909 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for video/=
quicktime
0:00:00.066965634 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for image/=
x-quicktime
0:00:00.066971222 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for image/=
jp2
0:00:00.066976386 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for image/=
x-jpc
0:00:00.066981900 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for video/=
mj2
0:00:00.066987203 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for text/h=
tml
0:00:00.066992604 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/x-shockwave-flash
0:00:00.066998126 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/xges
0:00:00.067005169 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/vnd.apple-xmeml+xml
0:00:00.067011029 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/vnd.apple-fcp+xml
0:00:00.067016592 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/vnd.pixar.opentimelineio+json
0:00:00.067022043 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/dash+xml
0:00:00.067027627 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/vnd.ms-sstr+xml
0:00:00.067034397 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for text/p=
lain
0:00:00.067040257 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for text/u=
tf-16
0:00:00.067047784 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for text/u=
tf-32
0:00:00.067053265 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for text/u=
ri-list
0:00:00.067058422 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/itc
0:00:00.067063691 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/x-hls
0:00:00.067069269 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/sdp
0:00:00.067076779 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/smil
0:00:00.067082151 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/ttml+xml
0:00:00.067089259 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/xml
0:00:00.067095221 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-aiff
0:00:00.067100919 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-svx
0:00:00.067106536 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-paris
0:00:00.067111957 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-sds
0:00:00.067117590 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-ircam
0:00:00.067125250 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-shorten
0:00:00.067132750 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/x-ape
0:00:00.067138490 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for image/=
jpeg
0:00:00.067143956 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for image/=
bmp
0:00:00.067150504 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for image/=
tiff
0:00:00.067158122 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for image/=
x-exr
0:00:00.067166680 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for image/=
x-portable-pixmap
0:00:00.067173983 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for video/=
x-matroska
0:00:00.067181656 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/mxf
0:00:00.067187998 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for video/=
x-dv
0:00:00.067193459 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
iLBC-sh
0:00:00.067198724 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-sbc
0:00:00.067203282 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for subtit=
le/x-kate
0:00:00.067209006 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/x-subtitle-vtt
0:00:00.067216865 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-flac
0:00:00.067222419 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-vorbis
0:00:00.067227295 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for video/=
x-theora
0:00:00.067232285 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/x-ogm-video
0:00:00.067237570 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/x-ogm-audio
0:00:00.067242769 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/x-ogm-text
0:00:00.067249174 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-speex
0:00:00.067254359 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-celt
0:00:00.067261915 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/x-ogg-skeleton
0:00:00.067267318 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for text/x=
-cmml
0:00:00.067273498 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
aac
0:00:00.067279723 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-wavpack
0:00:00.067287467 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-wavpack-correction
0:00:00.067293271 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/postscript
0:00:00.067298851 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for image/=
svg+xml
0:00:00.067305885 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/x-tar
0:00:00.067311513 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/x-ar
0:00:00.067318342 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/x-ms-dos-executable
0:00:00.067324530 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for video/=
x-dirac
0:00:00.067329652 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for multip=
art/x-mixed-replace
0:00:00.067337313 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/x-mmsh
0:00:00.067342376 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for video/=
vivo
0:00:00.067348888 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for image/=
vnd.wap.wbmp
0:00:00.067353545 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/x-yuv4mpeg
0:00:00.067357998 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for image/=
x-icon
0:00:00.067362363 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for image/=
x-degas
0:00:00.067366711 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/octet-stream
0:00:00.067374326 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for applic=
ation/x-ssa
0:00:00.067379766 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for video/=
x-pva
0:00:00.067385124 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
audible
0:00:00.067392450 236128 0x55ab8871e800 INFO            GST_TYPEFIND gsttyp=
efind.c:72:gst_type_find_register: registering typefind function for audio/=
x-tap-tap
0:00:00.067398441 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgsttypefindfunctions.so" loaded
0:00:00.067721153 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstpnm.so" loaded
0:00:00.067891336 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstspeed.so" loaded
0:00:00.068211472 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstmpegtsmux.so" loaded
0:00:00.068569913 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstcacasink.so" loaded
0:00:00.069006547 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstttmlsubs.so" loaded
0:00:00.069386025 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstsid.so" loaded
0:00:00.069932906 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstqroverlay.so" loaded
0:00:00.070547720 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstaudiofx.so" loaded
0:00:00.070786638 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstfrei0r.so" loaded
0:00:00.071125806 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstinter.so" loaded
0:00:00.071915405 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstsrt.so" loaded
0:00:00.073970459 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:1609:gst_plugin_ext_dep_extract_env_vars_paths:<plugin92> ignoring en=
vironment variable content '': either not an absolute path or not a path at=
 all
0:00:00.073981834 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:1609:gst_plugin_ext_dep_extract_env_vars_paths:<plugin92> ignoring en=
vironment variable content '0': either not an absolute path or not a path a=
t all
0:00:00.074302630 236128 0x55ab8871e800 INFO                   vaapi gstvaa=
piutils.c:95:gst_vaapi_log: VA-API version 1.16.0
0:00:00.074319131 236128 0x55ab8871e800 INFO                   vaapi gstvaa=
piutils.c:95:gst_vaapi_log: Trying to open /usr/lib/dri/iHD_drv_video.so
0:00:00.074840176 236128 0x55ab8871e800 INFO                   vaapi gstvaa=
piutils.c:95:gst_vaapi_log: Found init function __vaDriverInit_1_15
0:00:00.075476131 236128 0x55ab8871e800 INFO                   vaapi gstvaa=
piutils.c:95:gst_vaapi_log: va_openDriver() returns 0
0:00:00.075485515 236128 0x55ab8871e800 INFO                   vaapi gstvaa=
piutils.c:122:vaapi_initialize: VA-API version 1.16
0:00:00.075754999 236128 0x55ab8871e800 INFO                   vaapi gstvaa=
piutils.c:95:gst_vaapi_log: VA-API version 1.16.0
0:00:00.075768522 236128 0x55ab8871e800 INFO                   vaapi gstvaa=
piutils.c:95:gst_vaapi_log: Trying to open /usr/lib/dri/iHD_drv_video.so
0:00:00.075800924 236128 0x55ab8871e800 INFO                   vaapi gstvaa=
piutils.c:95:gst_vaapi_log: Found init function __vaDriverInit_1_15
0:00:00.076223520 236128 0x55ab8871e800 INFO                   vaapi gstvaa=
piutils.c:95:gst_vaapi_log: va_openDriver() returns 0
0:00:00.076232012 236128 0x55ab8871e800 INFO                   vaapi gstvaa=
piutils.c:122:vaapi_initialize: VA-API version 1.16
0:00:00.076237497 236128 0x55ab8871e800 INFO            vaapidisplay gstvaa=
pidisplay.c:983:gst_vaapi_display_create:<vaapidisplaydrm0> new display add=
r=3D0x55ab88aed0b0
0:00:00.076242417 236128 0x55ab8871e800 INFO            vaapidisplay gstvaa=
pidisplay.c:795:ensure_vendor_string:<vaapidisplaydrm0> vendor: Intel iHD d=
river for Intel(R) Gen Graphics - 22.4.4 ()
0:00:00.076247898 236128 0x55ab8871e800 INFO            vaapidisplay gstvaa=
pidisplay.c:834:set_driver_quirks:<vaapidisplaydrm0> Matched driver string =
"Intel iHD driver for Intel(R) Gen Graphics - 22.4.4 ()", setting quirks (0=
x30)
0:00:00.081200464 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstvaapi.so" loaded
0:00:00.081686392 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstgsm.so" loaded
0:00:00.082448702 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstalsa.so" loaded
0:00:00.082695977 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstipcpipeline.so" loaded
0:00:00.082998481 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstcdio.so" loaded
0:00:00.083204639 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstossaudio.so" loaded
0:00:00.092549376 236128 0x55ab8871e800 INFO                     lv2 gstlv2=
.c:338:plugin_init:<plugin98> 0 entries in cache
0:00:00.092560396 236128 0x55ab8871e800 INFO                     lv2 gstlv2=
.c:343:plugin_init:<plugin98> 0 entries after scanning
0:00:00.092564938 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstlv2.so" loaded
0:00:00.092966173 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstvorbis.so" loaded
0:00:00.093393430 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstcolormanagement.so" loaded
0:00:00.093584765 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstid3demux.so" loaded
0:00:00.093796077 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstsegmentclip.so" loaded
0:00:00.099021284 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstfluidsynthmidi.so" loaded
0:00:00.099498828 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstmplex.so" loaded
0:00:00.099697764 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstdvdsub.so" loaded
0:00:00.099933201 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstcairo.so" loaded
0:00:00.100126490 236128 0x55ab8871e800 INFO                   adder gstadd=
er.c:1586:gst_adder_child_proxy_init: initializing child proxy interface
0:00:00.100185875 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstadder.so" loaded
0:00:00.100365730 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstautodetect.so" loaded
0:00:00.100750873 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstgdkpixbuf.so" loaded
0:00:00.100980781 236128 0x55ab8871e800 INFO                 default gstaud=
iomixer.c:456:gst_audiomixer_child_proxy_init: initializing child proxy int=
erface
0:00:00.101087776 236128 0x55ab8871e800 INFO         audiointerleave gstaud=
iointerleave.c:900:gst_audio_interleave_child_proxy_init: initializing chil=
d proxy interface
0:00:00.101127152 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstaudiomixer.so" loaded
0:00:00.102482945 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstvulkan.so" loaded
0:00:00.102747992 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstlegacyrawparse.so" loaded
0:00:00.102978732 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstsmoothstreaming.so" loaded
0:00:00.103207175 236128 0x55ab8871e800 INFO              videomixer videom=
ixer2.c:2187:gst_videomixer2_child_proxy_init: initializing child proxy int=
erface
0:00:00.103257239 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstvideomixer.so" loaded
0:00:00.103759220 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgsttwolame.so" loaded
0:00:00.104121363 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstcodecalpha.so" loaded
0:00:00.104781344 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstvpx.so" loaded
0:00:00.105046727 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstbz2.so" loaded
0:00:00.105745415 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstzbar.so" loaded
0:00:00.106013414 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstaudioresample.so" loaded
0:00:00.106242425 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstalaw.so" loaded
0:00:00.107564211 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstplayback.so" loaded
0:00:00.107835805 236128 0x55ab8871e800 INFO                 x265enc gstx26=
5enc.c:1749:x265enc_element_init: x265 build: 199
0:00:00.107846730 236128 0x55ab8871e800 INFO                 x265enc gstx26=
5enc.c:1753:x265enc_element_init: x265 default bitdepth: 8
0:00:00.107854496 236128 0x55ab8871e800 INFO                 x265enc gstx26=
5enc.c:1774:x265enc_element_init: x265 10bit api available
0:00:00.107859726 236128 0x55ab8871e800 INFO                 x265enc gstx26=
5enc.c:1778:x265enc_element_init: x265 12bit api available
0:00:00.107940764 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstx265.so" loaded
0:00:00.108122152 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstaccurip.so" loaded
0:00:00.108306265 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstadpcmenc.so" loaded
0:00:00.108492112 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstaudiomixmatrix.so" loaded
0:00:00.109038504 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstvideoparsersbad.so" loaded
0:00:00.109959464 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstcoreelements.so" loaded
0:00:00.110251716 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstamrnb.so" loaded
0:00:00.110703167 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstvideoconvert.so" loaded
0:00:00.110916361 236128 0x55ab8871e800 INFO                 x264enc gstx26=
4enc.c:3020:x264_element_init: linked against x264 build: 164
0:00:00.110923350 236128 0x55ab8871e800 INFO                 x264enc gstx26=
4enc.c:337:load_x264_libraries: 8-bit depth and 10-bit depth supported
0:00:00.111062123 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstx264.so" loaded
0:00:00.111478116 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstflac.so" loaded
0:00:00.112112546 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstde265.so" loaded
0:00:00.112850969 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstisomp4.so" loaded
0:00:00.113336911 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstteletext.so" loaded
0:00:00.113602671 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstcoretracers.so" loaded
0:00:00.113888171 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstmpeg2dec.so" loaded
0:00:00.114177363 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstreplaygain.so" loaded
0:00:00.114741552 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstneonhttpsrc.so" loaded
0:00:00.115151552 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstaudioparsers.so" loaded
0:00:00.115400715 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstfreeverb.so" loaded
0:00:00.116040800 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstdebugutilsbad.so" loaded
0:00:00.116268520 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstrtponvif.so" loaded
0:00:00.116854031 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstsoup.so" loaded
0:00:00.117137089 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstfaad.so" loaded
0:00:00.117614106 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstkate.so" loaded
0:00:00.118061652 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstdvb.so" loaded
0:00:00.118362467 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstvideocrop.so" loaded
0:00:00.121227140 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstopengl.so" loaded
0:00:00.121572533 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstpbtypes.so" loaded
0:00:00.121784199 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstopusparse.so" loaded
0:00:00.122040422 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstwavparse.so" loaded
0:00:00.122227480 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstnetsim.so" loaded
0:00:00.122569696 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstbs2b.so" loaded
0:00:00.122878956 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstdeinterlace.so" loaded
0:00:00.123064242 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstfaceoverlay.so" loaded
0:00:00.123252706 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstsubenc.so" loaded
0:00:00.123812020 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstcamerabin.so" loaded
0:00:00.124138642 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstequalizer.so" loaded
0:00:00.124538787 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstdebug.so" loaded
0:00:00.124820362 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstsctp.so" loaded
0:00:00.125061157 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstaudioconvert.so" loaded
0:00:00.125329775 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstinterleave.so" loaded
0:00:00.125583466 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstvolume.so" loaded
0:00:00.126061214 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstlibvisual.so" loaded
0:00:00.128684300 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstopenal.so" loaded
0:00:00.128883886 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstaudiolatency.so" loaded
0:00:00.129163992 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstdtsdec.so" loaded
0:00:00.130293762 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgsttaglib.so" loaded
0:00:00.130605832 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstwavenc.so" loaded
0:00:00.131638172 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstwebrtcdsp.so" loaded
0:00:00.133479740 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstvideo4linux2.so" loaded
0:00:00.133810266 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstmusepack.so" loaded
0:00:00.134040216 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstfieldanalysis.so" loaded
0:00:00.134663761 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstrealmedia.so" loaded
0:00:00.134887363 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstdvbsubenc.so" loaded
0:00:00.135534917 236128 0x55ab8871e800 WARN                 nvcodec gstcud=
aloader.c:139:gst_cuda_load_library: Could not open library libcuda.so.1, l=
ibcuda.so.1: cannot open shared object file: No such file or directory
0:00:00.135542214 236128 0x55ab8871e800 WARN                 nvcodec plugin=
.c:73:plugin_init: Failed to load cuda library
0:00:00.135551579 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstnvcodec.so" loaded
0:00:00.135900724 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstsoundtouch.so" loaded
0:00:00.136080085 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstjp2kdecimator.so" loaded
0:00:00.136556737 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstassrender.so" loaded
0:00:00.136737348 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstfbdevsink.so" loaded
0:00:00.136921778 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstflxdec.so" loaded
0:00:00.137231074 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstjack.so" loaded
0:00:00.137439589 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstgoom2k1.so" loaded
0:00:00.137696902 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstaiff.so" loaded
0:00:00.138166947 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstudp.so" loaded
0:00:00.138402456 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstaudiorate.so" loaded
0:00:00.138658954 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgsttranscode.so" loaded
0:00:00.138855084 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstmonoscope.so" loaded
0:00:00.139353639 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstrtmp2.so" loaded
0:00:00.139728129 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstfdkaac.so" loaded
0:00:00.140218956 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstuvch264.so" loaded
0:00:00.140844661 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstrtsp.so" loaded
0:00:00.141266016 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstv4l2codecs.so" loaded
0:00:00.141518720 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstmpegpsdemux.so" loaded
0:00:00.141700874 236128 0x55ab8871e800 INFO                  gstspu gstdvd=
spu.c:1260:dvd_spu_element_init: debug flags : 0x00
0:00:00.141737736 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstdvdspu.so" loaded
0:00:00.142560277 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstgme.so" loaded
0:00:00.143096316 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstspandsp.so" loaded
0:00:00.143771587 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgst1394.so" loaded
0:00:00.144196727 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstxvimagesink.so" loaded
0:00:00.144433967 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstvideobox.so" loaded
0:00:00.144651149 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstshapewipe.so" loaded
0:00:00.145785601 236128 0x55ab8871e800 INFO                  ladspa gstlad=
spa.c:477:plugin_init:<plugin203> 0 entries in cache
0:00:00.145796625 236128 0x55ab8871e800 INFO                  ladspa gstlad=
spa.c:404:ladspa_plugin_path_search: 6 dirs in search paths "/usr/lib/ladsp=
a:/usr/lib64/ladspa:/usr/local/lib/ladspa:/usr/local/lib64/ladspa:/usr/lib/=
ladspa:/home/daniell/.ladspa"
0:00:00.145801242 236128 0x55ab8871e800 INFO                  ladspa gstlad=
spa.c:268:ladspa_rdf_directory_search: scanning directory for rdfs "/usr/sh=
are/ladspa/rdf"
0:00:00.146576706 236128 0x55ab8871e800 INFO                  ladspa gstlad=
spa.c:278:ladspa_rdf_directory_search: read file:///usr/share/ladspa/rdf/la=
dspa-rubberband.rdf : 0
0:00:00.147617378 236128 0x55ab8871e800 INFO                  ladspa gstlad=
spa.c:278:ladspa_rdf_directory_search: read file:///usr/share/ladspa/rdf/la=
dspa.rdfs : 0
0:00:00.147627592 236128 0x55ab8871e800 INFO                  ladspa gstlad=
spa.c:268:ladspa_rdf_directory_search: scanning directory for rdfs "/usr/lo=
cal/share/ladspa/rdf"
0:00:00.147636195 236128 0x55ab8871e800 INFO                  ladspa gstlad=
spa.c:299:ladspa_plugin_directory_search: scanning directory for plugins "/=
usr/lib/ladspa"
0:00:00.148288239 236128 0x55ab8871e800 INFO                  ladspa gstlad=
spa.c:326:ladspa_plugin_directory_search: Found LADSPA descriptor in /usr/l=
ib/ladspa/ladspa-rubberband.so
0:00:00.148319691 236128 0x55ab8871e800 INFO                  ladspa gstlad=
spa.c:299:ladspa_plugin_directory_search: scanning directory for plugins "/=
usr/lib64/ladspa"
0:00:00.148371136 236128 0x55ab8871e800 INFO                  ladspa gstlad=
spa.c:326:ladspa_plugin_directory_search: Found LADSPA descriptor in /usr/l=
ib64/ladspa/ladspa-rubberband.so
0:00:00.148389349 236128 0x55ab8871e800 INFO                  ladspa gstlad=
spa.c:299:ladspa_plugin_directory_search: scanning directory for plugins "/=
usr/local/lib/ladspa"
0:00:00.148395411 236128 0x55ab8871e800 INFO                  ladspa gstlad=
spa.c:299:ladspa_plugin_directory_search: scanning directory for plugins "/=
usr/local/lib64/ladspa"
0:00:00.148407727 236128 0x55ab8871e800 INFO                  ladspa gstlad=
spa.c:482:plugin_init:<plugin203> 4 entries after scanning
0:00:00.148411626 236128 0x55ab8871e800 INFO                  ladspa gstlad=
spa.c:494:plugin_init:<plugin203> register types
0:00:00.148472338 236128 0x55ab8871e800 INFO                  ladspa gstlad=
spautils.c:654:gst_ladspa_element_class_set_metadata: tags : Filter/Effect/=
Audio/LADSPA
0:00:00.148567656 236128 0x55ab8871e800 INFO                  ladspa gstlad=
spautils.c:654:gst_ladspa_element_class_set_metadata: tags : Filter/Effect/=
Audio/LADSPA
0:00:00.148641144 236128 0x55ab8871e800 INFO                  ladspa gstlad=
spautils.c:654:gst_ladspa_element_class_set_metadata: tags : Filter/Effect/=
Audio/LADSPA
0:00:00.148710800 236128 0x55ab8871e800 INFO                  ladspa gstlad=
spautils.c:654:gst_ladspa_element_class_set_metadata: tags : Filter/Effect/=
Audio/LADSPA
0:00:00.148741294 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstladspa.so" loaded
0:00:00.149125663 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstsmpte.so" loaded
0:00:00.149365388 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstgdp.so" loaded
0:00:00.149622402 236128 0x55ab8871e800 WARN                 default gstsfe=
lement.c:97:gst_sf_create_audio_template_caps: format 0x120000: 'AVR (Audio=
 Visual Research)' is not mapped
0:00:00.149630328 236128 0x55ab8871e800 WARN                 default gstsfe=
lement.c:97:gst_sf_create_audio_template_caps: format 0x180000: 'CAF (Apple=
 Core Audio File)' is not mapped
0:00:00.149633845 236128 0x55ab8871e800 WARN                 default gstsfe=
lement.c:97:gst_sf_create_audio_template_caps: format 0x100000: 'HTK (HMM T=
ool Kit)' is not mapped
0:00:00.149638007 236128 0x55ab8871e800 WARN                 default gstsfe=
lement.c:97:gst_sf_create_audio_template_caps: format 0xc0000: 'MAT4 (GNU O=
ctave 2.0 / Matlab 4.2)' is not mapped
0:00:00.149641188 236128 0x55ab8871e800 WARN                 default gstsfe=
lement.c:97:gst_sf_create_audio_template_caps: format 0xd0000: 'MAT5 (GNU O=
ctave 2.1 / Matlab 5.0)' is not mapped
0:00:00.149644134 236128 0x55ab8871e800 WARN                 default gstsfe=
lement.c:97:gst_sf_create_audio_template_caps: format 0x210000: 'MPC (Akai =
MPC 2k)' is not mapped
0:00:00.149647708 236128 0x55ab8871e800 WARN                 default gstsfe=
lement.c:97:gst_sf_create_audio_template_caps: format 0xe0000: 'PVF (Portab=
le Voice Format)' is not mapped
0:00:00.149651028 236128 0x55ab8871e800 WARN                 default gstsfe=
lement.c:97:gst_sf_create_audio_template_caps: format 0x160000: 'SD2 (Sound=
 Designer II)' is not mapped
0:00:00.149655697 236128 0x55ab8871e800 WARN                 default gstsfe=
lement.c:97:gst_sf_create_audio_template_caps: format 0x190000: 'WVE (Psion=
 Series 3)' is not mapped
0:00:00.149670609 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstsndfile.so" loaded
0:00:00.149872248 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstvmnc.so" loaded
0:00:00.150235354 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstjpegformat.so" loaded
0:00:00.150980523 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstogg.so" loaded
0:00:00.151209928 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstid3tag.so" loaded
0:00:00.151433716 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstauparse.so" loaded
0:00:00.151643011 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstapetag.so" loaded
0:00:00.151859193 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstmpegpsmux.so" loaded
0:00:00.152082380 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstspectrum.so" loaded
0:00:00.152272975 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstmidi.so" loaded
0:00:00.152768886 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstmxf.so" loaded
0:00:00.153279901 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstavtp.so" loaded
0:00:00.153606800 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstmultipart.so" loaded
0:00:00.153817851 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstnavigationtest.so" loaded
0:00:00.154336376 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstrist.so" loaded
0:00:00.154724534 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstopenjpeg.so" loaded
0:00:00.154920860 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstxingmux.so" loaded
0:00:00.155537107 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstsvthevcenc.so" loaded
0:00:00.155732404 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstfestival.so" loaded
0:00:00.156078951 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstapp.so" loaded
0:00:00.156647080 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstzxing.so" loaded
0:00:00.157083448 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstkms.so" loaded
0:00:00.157306346 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstaudiofxbad.so" loaded
0:00:00.157597215 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstdtmf.so" loaded
0:00:00.157831132 236128 0x55ab8871e800 INFO                  mpg123 gstmpg=
123audiodec.c:193:gst_mpg123_audio_dec_class_init: mpg123 library initializ=
ed
0:00:00.157851444 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstmpg123.so" loaded
0:00:00.158121516 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstwebp.so" loaded
0:00:00.158329761 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstalphacolor.so" loaded
0:00:00.158566305 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstcoloreffects.so" loaded
0:00:00.158810515 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstbayer.so" loaded
0:00:00.159257850 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstasf.so" loaded
0:00:00.159536589 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstrfbsrc.so" loaded
0:00:00.159736808 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstproxy.so" loaded
0:00:00.160102275 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstximagesink.so" loaded
0:00:00.160568503 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgsteffectv.so" loaded
0:00:00.160963959 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstbluez.so" loaded
0:00:00.161300404 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstaudiovisualizers.so" loaded
0:00:00.161999370 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstpulseaudio.so" loaded
0:00:00.162870892 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstrtpmanager.so" loaded
0:00:00.163586123 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstshout2.so" loaded
0:00:00.163862110 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstsiren.so" loaded
0:00:00.164139693 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstlame.so" loaded
0:00:00.164550874 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstgaudieffects.so" loaded
0:00:00.164787560 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgsty4mdec.so" loaded
0:00:00.165032213 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstaes.so" loaded
0:00:00.165349150 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstldac.so" loaded
0:00:00.165567309 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstmulaw.so" loaded
0:00:00.165950478 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstfaac.so" loaded
0:00:00.166293212 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstdvbsuboverlay.so" loaded
0:00:00.166595062 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstvideosignal.so" loaded
0:00:00.166824556 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstcutter.so" loaded
0:00:00.167063818 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstivtc.so" loaded
0:00:00.169970032 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstdecklink.so" loaded
0:00:00.170264434 236128 0x55ab8871e800 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstshm.so" loaded
0:00:00.179196135 236125 0x562204e5c670 INFO            GST_REGISTRY gstreg=
istry.c:1794:scan_and_update_registry: Registry cache changed. Writing new =
registry cache
0:00:00.179220248 236125 0x562204e5c670 INFO            GST_REGISTRY gstreg=
istrybinary.c:431:priv_gst_registry_binary_write_cache: Building binary reg=
istry cache image
0:00:00.182597581 236125 0x562204e5c670 INFO            GST_REGISTRY gstreg=
istrybinary.c:463:priv_gst_registry_binary_write_cache: Writing binary regi=
stry cache
0:00:00.186133042 236125 0x562204e5c670 INFO            GST_REGISTRY gstreg=
istrybinary.c:314:gst_registry_binary_cache_finish: Wrote binary registry c=
ache
0:00:00.186150011 236125 0x562204e5c670 INFO            GST_REGISTRY gstreg=
istry.c:1803:scan_and_update_registry: Registry cache written successfully
0:00:00.186158499 236125 0x562204e5c670 INFO            GST_REGISTRY gstreg=
istry.c:1861:ensure_current_registry: registry reading and updating done
0:00:00.186164945 236125 0x562204e5c670 INFO                GST_INIT gst.c:=
826:init_post: GLib runtime version: 2.74.1
0:00:00.186169580 236125 0x562204e5c670 INFO                GST_INIT gst.c:=
828:init_post: GLib headers version: 2.74.1
0:00:00.186172306 236125 0x562204e5c670 INFO                GST_INIT gst.c:=
830:init_post: initialized GStreamer successfully
(spicy:236125): GSpice-DEBUG: 13:06:40.754: ../spice-gtk-0.41/src/spice-ses=
sion.c:288 New session (compiled from package spice-gtk 0.41)
(spicy:236125): GSpice-DEBUG: 13:06:40.754: ../spice-gtk-0.41/src/spice-ses=
sion.c:292 Supported channels: main, display, inputs, cursor, playback, rec=
ord, smartcard, usbredir, webdav
(spicy:236125): GSpice-DEBUG: 13:06:40.754: ../spice-gtk-0.41/src/usb-devic=
e-manager.c:393 auto-connect filter set to 0x03,-1,-1,-1,0|-1,-1,-1,-1,1
(spicy:236125): GSpice-DEBUG: 13:06:40.754: ../spice-gtk-0.41/src/usb-backe=
nd.c:438 spice_usb_backend_new >>
(spicy:236125): GSpice-DEBUG: 13:06:40.758: ../spice-gtk-0.41/src/usb-backe=
nd.c:460 spice_usb_backend_new <<
(spicy:236125): GSpice-DEBUG: 13:06:40.758: ../spice-gtk-0.41/src/usb-backe=
nd.c:156 created dev 0x5622050677b0, usblib dev 0x562205367bd0
(spicy:236125): GSpice-DEBUG: 13:06:40.758: ../spice-gtk-0.41/src/usb-backe=
nd.c:156 created dev 0x562205387fa0, usblib dev 0x562204ec61b0
(spicy:236125): GSpice-DEBUG: 13:06:40.758: ../spice-gtk-0.41/src/usb-backe=
nd.c:156 created dev 0x562205387e20, usblib dev 0x562205368830
(spicy:236125): GSpice-DEBUG: 13:06:40.758: ../spice-gtk-0.41/src/usb-backe=
nd.c:467 handle_libusb_events >>
(spicy:236125): GSpice-DEBUG: 13:06:40.758: ../spice-gtk-0.41/tools/spicy.c=
:1881 connection_new (1)
(spicy:236125): GSpice-DEBUG: 13:06:40.758: ../spice-gtk-0.41/src/spice-ses=
sion.c:1835 no migration in progress
Spice-INFO: 13:06:40.759: ../spice-gtk-0.41/src/channel-main.c:342:spice_ma=
in_set_property: SpiceMainChannel::color-depth has been deprecated. Propert=
y is ignored
(spicy:236125): GSpice-DEBUG: 13:06:40.759: ../spice-gtk-0.41/src/spice-cha=
nnel.c:142 main-1:0: spice_channel_constructed
(spicy:236125): GSpice-DEBUG: 13:06:40.759: ../spice-gtk-0.41/src/spice-ses=
sion.c:2330 main-1:0: new main channel, switching
(spicy:236125): GSpice-DEBUG: 13:06:40.759: ../spice-gtk-0.41/src/spice-gtk=
-session.c:1565 Changing main channel from (nil) to 0x5622053970f0
(spicy:236125): GSpice-DEBUG: 13:06:40.759: ../spice-gtk-0.41/tools/spicy.c=
:1758 new channel (#0)
(spicy:236125): GSpice-DEBUG: 13:06:40.759: ../spice-gtk-0.41/tools/spicy.c=
:1761 new main channel
(spicy:236125): GSpice-DEBUG: 13:06:40.759: ../spice-gtk-0.41/src/usb-devic=
e-manager.c:800 device added 046d:c52b (0x5622050677b0)
(spicy:236125): GSpice-DEBUG: 13:06:40.759: ../spice-gtk-0.41/src/usb-devic=
e-manager.c:800 device added 1050:0407 (0x562205387fa0)
(spicy:236125): GSpice-DEBUG: 13:06:40.759: ../spice-gtk-0.41/src/usb-devic=
e-manager.c:800 device added 8087:0aa7 (0x562205387e20)
(spicy:236125): GSpice-DEBUG: 13:06:40.759: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2763 main-1:0: Open coroutine starting 0x5622053970f0
(spicy:236125): GSpice-DEBUG: 13:06:40.759: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2587 main-1:0: Started background coroutine 0x562205396ec0
(spicy:236125): GSpice-DEBUG: 13:06:40.759: ../spice-gtk-0.41/src/spice-ses=
sion.c:2267 main-1:0: Using plain text, port 5912
(spicy:236125): GSpice-DEBUG: 13:06:40.759: ../spice-gtk-0.41/src/spice-ses=
sion.c:2198 open host localhost:5912
(spicy:236125): GSpice-DEBUG: 13:06:40.759: ../spice-gtk-0.41/src/spice-ses=
sion.c:2120 main-1:0: connecting 0x7f42127fcf30...
(spicy:236125): GSpice-DEBUG: 13:06:40.760: ../spice-gtk-0.41/src/spice-ses=
sion.c:2104 main-1:0: connect ready
(spicy:236125): GSpice-DEBUG: 13:06:40.760: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1415 main-1:0: channel type 1 id 0 num common caps 1 num caps 1
(spicy:236125): GSpice-DEBUG: 13:06:40.812: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1441 main-1:0: Peer version: 2:2
(spicy:236125): GSpice-DEBUG: 13:06:40.812: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1999 main-1:0: spice_channel_recv_link_msg: 2 caps
(spicy:236125): GSpice-DEBUG: 13:06:40.812: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2013 main-1:0: got remote common caps:
(spicy:236125): GSpice-DEBUG: 13:06:40.812: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1949 =090:0xB
(spicy:236125): GSpice-DEBUG: 13:06:40.812: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2020 main-1:0: got remote channel caps:
(spicy:236125): GSpice-DEBUG: 13:06:40.812: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1949 =090:0x9
(spicy:236125): GSpice-DEBUG: 13:06:40.812: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 0 in 0xB: yes
(spicy:236125): GSpice-DEBUG: 13:06:40.812: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 2 in 0xB: no
(spicy:236125): GSpice-DEBUG: 13:06:40.812: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 1 in 0xB: yes
(spicy:236125): GSpice-DEBUG: 13:06:40.819: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 3 in 0xB: yes
(spicy:236125): GSpice-DEBUG: 13:06:40.819: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2052 main-1:0: use mini header: 1
GSpice-Message: 13:06:40.828: main channel: opened
(spicy:236125): GSpice-DEBUG: 13:06:40.828: ../spice-gtk-0.41/tools/spicy.c=
:1280 recent_add: spice://localhost:5912
(spicy:236125): GSpice-DEBUG: 13:06:40.830: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1350 main-1:0: channel up, state 3
(spicy:236125): GSpice-DEBUG: 13:06:40.830: ../spice-gtk-0.41/src/spice-ses=
sion.c:2434 set mm time: 218940548
(spicy:236125): GSpice-DEBUG: 13:06:40.830: ../spice-gtk-0.41/src/spice-ses=
sion.c:2437 spice_session_set_mm_time: mm-time-reset, old 16779961, new 218=
940548
(spicy:236125): GSpice-DEBUG: 13:06:40.830: ../spice-gtk-0.41/src/channel-m=
ain.c:1590 agent connected: yes
(spicy:236125): GSpice-DEBUG: 13:06:40.830: ../spice-gtk-0.41/src/channel-m=
ain.c:1732 server name: arch
(spicy:236125): GSpice-DEBUG: 13:06:40.830: ../spice-gtk-0.41/src/channel-m=
ain.c:1743 server uuid: 13b22ec2-319a-470c-8e9c-75e19b61313e
(spicy:236125): GSpice-DEBUG: 13:06:40.877: ../spice-gtk-0.41/src/channel-m=
ain.c:2075 main_agent_handle_msg: cap: 0 (mouse state)
(spicy:236125): GSpice-DEBUG: 13:06:40.877: ../spice-gtk-0.41/src/channel-m=
ain.c:2075 main_agent_handle_msg: cap: 1 (monitors config)
(spicy:236125): GSpice-DEBUG: 13:06:40.877: ../spice-gtk-0.41/src/channel-m=
ain.c:2075 main_agent_handle_msg: cap: 2 (reply)
(spicy:236125): GSpice-DEBUG: 13:06:40.877: ../spice-gtk-0.41/src/channel-m=
ain.c:2075 main_agent_handle_msg: cap: 5 (clipboard)
(spicy:236125): GSpice-DEBUG: 13:06:40.877: ../spice-gtk-0.41/src/channel-m=
ain.c:2075 main_agent_handle_msg: cap: 6 (clipboard selection)
(spicy:236125): GSpice-DEBUG: 13:06:40.877: ../spice-gtk-0.41/src/channel-m=
ain.c:2075 main_agent_handle_msg: cap: 7 (sparse monitors)
(spicy:236125): GSpice-DEBUG: 13:06:40.877: ../spice-gtk-0.41/src/channel-m=
ain.c:2075 main_agent_handle_msg: cap: 8 (line-end lf)
(spicy:236125): GSpice-DEBUG: 13:06:40.877: ../spice-gtk-0.41/src/channel-m=
ain.c:2075 main_agent_handle_msg: cap: 10 (max-clipboard)
(spicy:236125): GSpice-DEBUG: 13:06:40.877: ../spice-gtk-0.41/src/channel-m=
ain.c:2075 main_agent_handle_msg: cap: 11 (volume-sync)
(spicy:236125): GSpice-DEBUG: 13:06:40.877: ../spice-gtk-0.41/src/channel-m=
ain.c:2075 main_agent_handle_msg: cap: 15 (graphics device info)
(spicy:236125): GSpice-DEBUG: 13:06:40.877: ../spice-gtk-0.41/src/channel-m=
ain.c:2075 main_agent_handle_msg: cap: 16 (no release on re-grab)
(spicy:236125): GSpice-DEBUG: 13:06:40.877: ../spice-gtk-0.41/src/channel-m=
ain.c:2075 main_agent_handle_msg: cap: 17 (clipboard grab serial)
(spicy:236125): Spice-DEBUG: 13:06:40.877: ../spice-gtk-0.41/src/channel-di=
splay-gst.c:819:gstvideo_debug_available_decoders: From  29 video decoder e=
lements,  2 can handle caps   image/jpeg: jpegdec, vaapijpegdec
(spicy:236125): Spice-DEBUG: 13:06:40.878: ../spice-gtk-0.41/src/channel-di=
splay-gst.c:819:gstvideo_debug_available_decoders: From  29 video decoder e=
lements,  4 can handle caps  video/x-vp8: vp8alphadecodebin, vaapidecodebin=
, vaapivp8dec, vp8dec
(spicy:236125): Spice-DEBUG: 13:06:40.878: ../spice-gtk-0.41/src/channel-di=
splay-gst.c:819:gstvideo_debug_available_decoders: From  29 video decoder e=
lements,  2 can handle caps video/x-h264: vaapidecodebin, vaapih264dec
(spicy:236125): Spice-DEBUG: 13:06:40.878: ../spice-gtk-0.41/src/channel-di=
splay-gst.c:819:gstvideo_debug_available_decoders: From  29 video decoder e=
lements,  4 can handle caps  video/x-vp9: vp9alphadecodebin, vaapidecodebin=
, vaapivp9dec, vp9dec
(spicy:236125): Spice-DEBUG: 13:06:40.878: ../spice-gtk-0.41/src/channel-di=
splay-gst.c:819:gstvideo_debug_available_decoders: From  29 video decoder e=
lements,  3 can handle caps video/x-h265: vaapidecodebin, vaapih265dec, lib=
de265dec
(spicy:236125): GSpice-DEBUG: 13:06:40.878: ../spice-gtk-0.41/src/spice-cha=
nnel.c:142 display-2:0: spice_channel_constructed
(spicy:236125): GSpice-DEBUG: 13:06:40.878: ../spice-gtk-0.41/tools/spicy.c=
:1758 new channel (#0)
(spicy:236125): GSpice-DEBUG: 13:06:40.878: ../spice-gtk-0.41/tools/spicy.c=
:1780 new display channel (#0)
(spicy:236125): GSpice-DEBUG: 13:06:40.878: ../spice-gtk-0.41/src/spice-cha=
nnel.c:142 cursor-4:0: spice_channel_constructed
(spicy:236125): GSpice-DEBUG: 13:06:40.878: ../spice-gtk-0.41/tools/spicy.c=
:1758 new channel (#0)
(spicy:236125): GSpice-DEBUG: 13:06:40.878: ../spice-gtk-0.41/src/spice-cha=
nnel.c:142 usbredir-9:1: spice_channel_constructed
(spicy:236125): GSpice-DEBUG: 13:06:40.878: ../spice-gtk-0.41/tools/spicy.c=
:1758 new channel (#1)
(spicy:236125): GSpice-DEBUG: 13:06:40.878: ../spice-gtk-0.41/src/usb-backe=
nd.c:1303 spice_usb_backend_channel_new >>
(spicy:236125): GSpice-DEBUG: 13:06:40.878: ../spice-gtk-0.41/src/usb-backe=
nd.c:697 usbredir_write_callback ch 0x5622053547a0, 80 bytes
(spicy:236125): GSpice-DEBUG: 13:06:40.878: ../spice-gtk-0.41/src/usb-backe=
nd.c:1343 spice_usb_backend_channel_new << 0x5622053547a0
(spicy:236125): GSpice-DEBUG: 13:06:40.878: ../spice-gtk-0.41/src/spice-cha=
nnel.c:142 usbredir-9:0: spice_channel_constructed
(spicy:236125): GSpice-DEBUG: 13:06:40.878: ../spice-gtk-0.41/tools/spicy.c=
:1758 new channel (#0)
(spicy:236125): GSpice-DEBUG: 13:06:40.878: ../spice-gtk-0.41/src/usb-backe=
nd.c:1303 spice_usb_backend_channel_new >>
(spicy:236125): GSpice-DEBUG: 13:06:40.878: ../spice-gtk-0.41/src/usb-backe=
nd.c:697 usbredir_write_callback ch 0x56220536a4c0, 80 bytes
(spicy:236125): GSpice-DEBUG: 13:06:40.878: ../spice-gtk-0.41/src/usb-backe=
nd.c:1343 spice_usb_backend_channel_new << 0x56220536a4c0
(spicy:236125): GSpice-DEBUG: 13:06:40.878: ../spice-gtk-0.41/src/spice-cha=
nnel.c:142 record-6:0: spice_channel_constructed
(spicy:236125): GSpice-DEBUG: 13:06:40.878: ../spice-gtk-0.41/tools/spicy.c=
:1758 new channel (#0)
(spicy:236125): GSpice-DEBUG: 13:06:40.878: ../spice-gtk-0.41/src/spice-cha=
nnel.c:142 playback-5:0: spice_channel_constructed
(spicy:236125): GSpice-DEBUG: 13:06:40.878: ../spice-gtk-0.41/tools/spicy.c=
:1758 new channel (#0)
(spicy:236125): GSpice-DEBUG: 13:06:40.878: ../spice-gtk-0.41/tools/spicy.c=
:1793 new audio channel
(spicy:236125): GSpice-DEBUG: 13:06:40.879: ../spice-gtk-0.41/src/spice-cha=
nnel.c:142 inputs-3:0: spice_channel_constructed
(spicy:236125): GSpice-DEBUG: 13:06:40.879: ../spice-gtk-0.41/src/spice-gtk=
-session.c:165 inputs-3:0: client_modifiers:0x2, guest_modifiers:0x0
(spicy:236125): GSpice-DEBUG: 13:06:40.879: ../spice-gtk-0.41/tools/spicy.c=
:1758 new channel (#0)
(spicy:236125): GSpice-DEBUG: 13:06:40.879: ../spice-gtk-0.41/tools/spicy.c=
:1787 new inputs channel
(spicy:236125): GSpice-DEBUG: 13:06:40.879: ../spice-gtk-0.41/src/channel-m=
ain.c:1545 Not sending monitors config, at least one monitor must have dime=
nsions
(spicy:236125): GSpice-DEBUG: 13:06:40.879: ../spice-gtk-0.41/src/spice-gst=
audio.c:640 PlaybackChannel not created yet, force start
(spicy:236125): GSpice-DEBUG: 13:06:40.879: ../spice-gtk-0.41/src/spice-gst=
audio.c:307 audio pipeline: appsrc is-live=3D1 do-timestamp=3D0 format=3Dti=
me caps=3D"audio/x-raw,format=3D"S16LE",channels=3D2,rate=3D48000,layout=3D=
interleaved" name=3D"appsrc" ! queue ! audioconvert ! audioresample ! autoa=
udiosink name=3D"audiosink"
0:00:00.311786666 236125 0x562204e5c670 INFO            GST_PIPELINE gstpar=
se.c:344:gst_parse_launch_full: parsing pipeline description 'appsrc is-liv=
e=3D1 do-timestamp=3D0 format=3Dtime caps=3D"audio/x-raw,format=3D"S16LE",c=
hannels=3D2,rate=3D48000,layout=3Dinterleaved" name=3D"appsrc" ! queue ! au=
dioconvert ! audioresample ! autoaudiosink name=3D"audiosink"'
0:00:00.312075621 236125 0x562204e5c670 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstapp.so" loaded
0:00:00.312087372 236125 0x562204e5c670 INFO     GST_ELEMENT_FACTORY gstele=
mentfactory.c:489:gst_element_factory_create_with_properties: creating elem=
ent "appsrc"
0:00:00.312238096 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:759:gst_element_add_pad:<GstBaseSrc@0x5622053f19e0> adding pad 'src'
0:00:00.312759863 236125 0x562204e5c670 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstcoreelements.so" loaded
0:00:00.312771343 236125 0x562204e5c670 INFO     GST_ELEMENT_FACTORY gstele=
mentfactory.c:489:gst_element_factory_create_with_properties: creating elem=
ent "queue"
0:00:00.312830193 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:759:gst_element_add_pad:<GstQueue@0x5622053ea6f0> adding pad 'sink'
0:00:00.312843161 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:759:gst_element_add_pad:<GstQueue@0x5622053ea6f0> adding pad 'src'
0:00:00.313090982 236125 0x562204e5c670 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstaudioconvert.so" loaded
0:00:00.313100566 236125 0x562204e5c670 INFO     GST_ELEMENT_FACTORY gstele=
mentfactory.c:489:gst_element_factory_create_with_properties: creating elem=
ent "audioconvert"
0:00:00.313182460 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:759:gst_element_add_pad:<GstBaseTransform@0x56220540a230> adding pad=
 'sink'
0:00:00.313194947 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:759:gst_element_add_pad:<GstBaseTransform@0x56220540a230> adding pad=
 'src'
0:00:00.313427840 236125 0x562204e5c670 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstaudioresample.so" loaded
0:00:00.313442217 236125 0x562204e5c670 INFO     GST_ELEMENT_FACTORY gstele=
mentfactory.c:489:gst_element_factory_create_with_properties: creating elem=
ent "audioresample"
0:00:00.313509155 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:759:gst_element_add_pad:<GstBaseTransform@0x56220540d050> adding pad=
 'sink'
0:00:00.313520683 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:759:gst_element_add_pad:<GstBaseTransform@0x56220540d050> adding pad=
 'src'
0:00:00.313730465 236125 0x562204e5c670 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstautodetect.so" loaded
0:00:00.313740194 236125 0x562204e5c670 INFO     GST_ELEMENT_FACTORY gstele=
mentfactory.c:489:gst_element_factory_create_with_properties: creating elem=
ent "autoaudiosink"
0:00:00.313803655 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:759:gst_element_add_pad:<autoaudiosink0> adding pad 'sink'
0:00:00.313886532 236125 0x562204e5c670 INFO     GST_ELEMENT_FACTORY gstele=
mentfactory.c:489:gst_element_factory_create_with_properties: creating elem=
ent "fakesink"
0:00:00.313900046 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:759:gst_element_add_pad:<GstBaseSink@0x562205419290> adding pad 'sin=
k'
0:00:00.313925454 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:1016:gst_element_get_static_pad: found pad fake-audio-sink:sink
0:00:00.313933636 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:2382:gst_pad_link_prepare: trying to link sink:proxypad0 and fake-audio-=
sink:sink
0:00:00.313940637 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:2590:gst_pad_link_full: linked sink:proxypad0 and fake-audio-sink:sink, =
successful
0:00:00.313945276 236125 0x562204e5c670 INFO               GST_EVENT gsteve=
nt.c:1660:gst_event_new_reconfigure: creating reconfigure event
0:00:00.313962856 236125 0x562204e5c670 INFO     GST_ELEMENT_FACTORY gstele=
mentfactory.c:489:gst_element_factory_create_with_properties: creating elem=
ent "pipeline"
0:00:00.314015109 236125 0x562204e5c670 INFO            GST_PIPELINE subpro=
jects/gstreamer/gst/parse/grammar.y:683:gst_parse_perform_link: linking som=
e pad of GstAppSrc named appsrc to some pad of GstQueue named queue0 (0/0) =
with caps "(NULL)"
0:00:00.314024260 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstuti=
ls.c:1816:gst_element_link_pads_full: trying to link element appsrc:(any) t=
o element queue0:(any)
0:00:00.314031926 236125 0x562204e5c670 INFO                GST_PADS gstuti=
ls.c:1079:gst_pad_check_link: trying to link appsrc:src and queue0:sink
0:00:00.314043338 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:4357:gst_pad_peer_query:<queue0:src> pad has no peer
0:00:00.314052409 236125 0x562204e5c670 INFO                GST_PADS gstuti=
ls.c:1632:prepare_link_maybe_ghosting: appsrc and queue0 in same bin, no ne=
ed for ghost pads
0:00:00.314062411 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:2382:gst_pad_link_prepare: trying to link appsrc:src and queue0:sink
0:00:00.314069629 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:4357:gst_pad_peer_query:<queue0:src> pad has no peer
0:00:00.314077281 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:2590:gst_pad_link_full: linked appsrc:src and queue0:sink, successful
0:00:00.314081376 236125 0x562204e5c670 INFO               GST_EVENT gsteve=
nt.c:1660:gst_event_new_reconfigure: creating reconfigure event
0:00:00.314085822 236125 0x562204e5c670 INFO               GST_EVENT gstpad=
.c:5946:gst_pad_send_event_unchecked:<appsrc:src> Received event on flushin=
g pad. Discarding
0:00:00.314098031 236125 0x562204e5c670 INFO            GST_PIPELINE subpro=
jects/gstreamer/gst/parse/grammar.y:683:gst_parse_perform_link: linking som=
e pad of GstQueue named queue0 to some pad of GstAudioConvert named audioco=
nvert0 (0/0) with caps "(NULL)"
0:00:00.314104658 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstuti=
ls.c:1816:gst_element_link_pads_full: trying to link element queue0:(any) t=
o element audioconvert0:(any)
0:00:00.314110948 236125 0x562204e5c670 INFO                GST_PADS gstuti=
ls.c:1079:gst_pad_check_link: trying to link queue0:src and audioconvert0:s=
ink
0:00:00.314124235 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:4357:gst_pad_peer_query:<audioconvert0:src> pad has no peer
0:00:00.314143267 236125 0x562204e5c670 INFO               structure gststr=
ucture.c:2917:gst_structure_get_valist: Expected field 'channel-mask' in st=
ructure: audio/x-raw, rate=3D(int)[ 1, 2147483647 ], channels=3D(int)[ 1, 2=
147483647 ];
0:00:00.314165960 236125 0x562204e5c670 INFO                GST_PADS gstuti=
ls.c:1632:prepare_link_maybe_ghosting: queue0 and audioconvert0 in same bin=
, no need for ghost pads
0:00:00.314174254 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:2382:gst_pad_link_prepare: trying to link queue0:src and audioconvert0:s=
ink
0:00:00.314182202 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:4357:gst_pad_peer_query:<audioconvert0:src> pad has no peer
0:00:00.314195475 236125 0x562204e5c670 INFO               structure gststr=
ucture.c:2917:gst_structure_get_valist: Expected field 'channel-mask' in st=
ructure: audio/x-raw, rate=3D(int)[ 1, 2147483647 ], channels=3D(int)[ 1, 2=
147483647 ];
0:00:00.314214759 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:2590:gst_pad_link_full: linked queue0:src and audioconvert0:sink, succes=
sful
0:00:00.314218906 236125 0x562204e5c670 INFO               GST_EVENT gsteve=
nt.c:1660:gst_event_new_reconfigure: creating reconfigure event
0:00:00.314223293 236125 0x562204e5c670 INFO               GST_EVENT gstpad=
.c:5946:gst_pad_send_event_unchecked:<queue0:src> Received event on flushin=
g pad. Discarding
0:00:00.314234381 236125 0x562204e5c670 INFO            GST_PIPELINE subpro=
jects/gstreamer/gst/parse/grammar.y:683:gst_parse_perform_link: linking som=
e pad of GstAudioConvert named audioconvert0 to some pad of GstAudioResampl=
e named audioresample0 (0/0) with caps "(NULL)"
0:00:00.314240811 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstuti=
ls.c:1816:gst_element_link_pads_full: trying to link element audioconvert0:=
(any) to element audioresample0:(any)
0:00:00.314247458 236125 0x562204e5c670 INFO                GST_PADS gstuti=
ls.c:1079:gst_pad_check_link: trying to link audioconvert0:src and audiores=
ample0:sink
0:00:00.314262474 236125 0x562204e5c670 INFO               structure gststr=
ucture.c:2917:gst_structure_get_valist: Expected field 'channel-mask' in st=
ructure: audio/x-raw, rate=3D(int)[ 1, 2147483647 ], channels=3D(int)[ 1, 2=
147483647 ];
0:00:00.314279696 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:4357:gst_pad_peer_query:<audioresample0:src> pad has no peer
0:00:00.314308207 236125 0x562204e5c670 INFO                GST_PADS gstuti=
ls.c:1632:prepare_link_maybe_ghosting: audioconvert0 and audioresample0 in =
same bin, no need for ghost pads
0:00:00.314315754 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:2382:gst_pad_link_prepare: trying to link audioconvert0:src and audiores=
ample0:sink
0:00:00.314330418 236125 0x562204e5c670 INFO               structure gststr=
ucture.c:2917:gst_structure_get_valist: Expected field 'channel-mask' in st=
ructure: audio/x-raw, rate=3D(int)[ 1, 2147483647 ], channels=3D(int)[ 1, 2=
147483647 ];
0:00:00.314346962 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:4357:gst_pad_peer_query:<audioresample0:src> pad has no peer
0:00:00.314378599 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:2590:gst_pad_link_full: linked audioconvert0:src and audioresample0:sink=
, successful
0:00:00.314386763 236125 0x562204e5c670 INFO               GST_EVENT gsteve=
nt.c:1660:gst_event_new_reconfigure: creating reconfigure event
0:00:00.314391319 236125 0x562204e5c670 INFO               GST_EVENT gstpad=
.c:5946:gst_pad_send_event_unchecked:<audioconvert0:src> Received event on =
flushing pad. Discarding
0:00:00.314402930 236125 0x562204e5c670 INFO            GST_PIPELINE subpro=
jects/gstreamer/gst/parse/grammar.y:683:gst_parse_perform_link: linking som=
e pad of GstAudioResample named audioresample0 to some pad of GstAutoAudioS=
ink named audiosink (0/0) with caps "(NULL)"
0:00:00.314409122 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstuti=
ls.c:1816:gst_element_link_pads_full: trying to link element audioresample0=
:(any) to element audiosink:(any)
0:00:00.314415241 236125 0x562204e5c670 INFO                GST_PADS gstuti=
ls.c:1079:gst_pad_check_link: trying to link audioresample0:src and audiosi=
nk:sink
0:00:00.314426780 236125 0x562204e5c670 INFO                GST_PADS gstuti=
ls.c:1632:prepare_link_maybe_ghosting: audioresample0 and audiosink in same=
 bin, no need for ghost pads
0:00:00.314434109 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:2382:gst_pad_link_prepare: trying to link audioresample0:src and audiosi=
nk:sink
0:00:00.314443442 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:2590:gst_pad_link_full: linked audioresample0:src and audiosink:sink, su=
ccessful
0:00:00.314447640 236125 0x562204e5c670 INFO               GST_EVENT gsteve=
nt.c:1660:gst_event_new_reconfigure: creating reconfigure event
0:00:00.314451812 236125 0x562204e5c670 INFO               GST_EVENT gstpad=
.c:5946:gst_pad_send_event_unchecked:<audioresample0:src> Received event on=
 flushing pad. Discarding
0:00:00.314460112 236125 0x562204e5c670 INFO           GST_PARENTAGE gstbin=
.c:4377:gst_bin_get_by_name: [pipeline0]: looking up child element appsrc
0:00:00.314468884 236125 0x562204e5c670 INFO           GST_PARENTAGE gstbin=
.c:4377:gst_bin_get_by_name: [pipeline0]: looking up child element audiosin=
k
0:00:00.314486044 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audiosink> current NULL pending VOID_PEN=
DING, desired next READY
0:00:00.314493485 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<fake-audio-sink> completed state ch=
ange to NULL
0:00:00.314502346 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstpad=
.c:2137:gst_pad_unlink: unlinking sink:proxypad0(0x562205414070) and fake-a=
udio-sink:sink(0x562205401160)
0:00:00.314508911 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstpad=
.c:2192:gst_pad_unlink: unlinked sink:proxypad0 and fake-audio-sink:sink
0:00:00.314514395 236125 0x562204e5c670 INFO           GST_PARENTAGE gstbin=
.c:1803:gst_bin_remove_func:<audiosink> removed child "fake-audio-sink"
0:00:00.314524049 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3382:gst_element_dispose:<fake-audio-sink> 0x562205419290 dispose
0:00:00.314529118 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:875:gst_element_remove_pad:<fake-audio-sink> removing pad 'sink'
0:00:00.314537898 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3428:gst_element_dispose:<fake-audio-sink> 0x562205419290 parent cla=
ss dispose
0:00:00.314547445 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3460:gst_element_finalize:<fake-audio-sink> 0x562205419290 finalize
0:00:00.314552368 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3465:gst_element_finalize:<fake-audio-sink> 0x562205419290 finalize =
parent
0:00:00.318138732 236125 0x562204e5c670 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstpulseaudio.so" loaded
0:00:00.318257681 236125 0x562204e5c670 INFO     GST_ELEMENT_FACTORY gstele=
mentfactory.c:489:gst_element_factory_create_with_properties: creating elem=
ent "pulsesink"
0:00:00.318273884 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:759:gst_element_add_pad:<GstBaseSink@0x562205422180> adding pad 'sin=
k'
0:00:00.318295755 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:1016:gst_element_get_static_pad: found pad audiosink-actual-sink-pul=
se:sink
0:00:00.318305880 236125 0x562204e5c670 INFO                   pulse pulses=
ink.c:3243:gst_pulsesink_change_state:<audiosink-actual-sink-pulse> new pa =
main loop thread
0:00:00.318388198 236125 0x562204e5c670 INFO                   pulse pulses=
ink.c:533:gst_pulseringbuffer_open_device:<audiosink-actual-sink-pulse> new=
 context with name spicy, pbuf=3D0x562205426000, pctx=3D0x5622051b1970
0:00:00.319443091 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audiosink-actual-sink-pulse> comple=
ted state change to READY
0:00:00.319453719 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audiosink-actual-sink-pulse> n=
otifying about state-changed NULL to READY (VOID_PENDING pending)
0:00:00.319590908 236125 0x562204e5c670 INFO                   pulse pulses=
ink.c:3225:gst_pulsesink_release_mainloop:<audiosink-actual-sink-pulse> ter=
minating pa main loop thread
0:00:00.319635338 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audiosink-actual-sink-pulse> comple=
ted state change to NULL
0:00:00.319646693 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audiosink-actual-sink-pulse> n=
otifying about state-changed READY to NULL (VOID_PENDING pending)
0:00:00.319686719 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:1016:gst_element_get_static_pad: found pad audiosink-actual-sink-pul=
se:sink
0:00:00.319695586 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:2382:gst_pad_link_prepare: trying to link sink:proxypad0 and audiosink-a=
ctual-sink-pulse:sink
0:00:00.319701630 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:2590:gst_pad_link_full: linked sink:proxypad0 and audiosink-actual-sink-=
pulse:sink, successful
0:00:00.319705559 236125 0x562204e5c670 INFO               GST_EVENT gsteve=
nt.c:1660:gst_event_new_reconfigure: creating reconfigure event
0:00:00.319719065 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audiosink-actual-sink-pulse> current NUL=
L pending VOID_PENDING, desired next READY
0:00:00.319724050 236125 0x562204e5c670 INFO                   pulse pulses=
ink.c:3243:gst_pulsesink_change_state:<audiosink-actual-sink-pulse> new pa =
main loop thread
0:00:00.319764403 236125 0x562204e5c670 INFO                   pulse pulses=
ink.c:533:gst_pulseringbuffer_open_device:<audiosink-actual-sink-pulse> new=
 context with name spicy, pbuf=3D0x5622054263e0, pctx=3D0x5622051b18b0
0:00:00.320240161 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audiosink-actual-sink-pulse> comple=
ted state change to READY
0:00:00.320248811 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audiosink-actual-sink-pulse> n=
otifying about state-changed NULL to READY (VOID_PENDING pending)
0:00:00.320260168 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<audiosink> child 'audiosink-actual-sink-=
pulse' changed state to 2(READY) successfully
0:00:00.320266477 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audiosink> completed state change t=
o READY
0:00:00.320270884 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audiosink> notifying about sta=
te-changed NULL to READY (VOID_PENDING pending)
0:00:00.320277226 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'audiosink' changed sta=
te to 2(READY) successfully
0:00:00.320284284 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audioresample0> current NULL pending VOI=
D_PENDING, desired next READY
0:00:00.320288992 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audioresample0> completed state cha=
nge to READY
0:00:00.320293257 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audioresample0> notifying abou=
t state-changed NULL to READY (VOID_PENDING pending)
0:00:00.320298774 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'audioresample0' change=
d state to 2(READY) successfully
0:00:00.320304456 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audioconvert0> current NULL pending VOID=
_PENDING, desired next READY
0:00:00.320308858 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audioconvert0> completed state chan=
ge to READY
0:00:00.320312825 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audioconvert0> notifying about=
 state-changed NULL to READY (VOID_PENDING pending)
0:00:00.320318207 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'audioconvert0' changed=
 state to 2(READY) successfully
0:00:00.320323659 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<queue0> current NULL pending VOID_PENDIN=
G, desired next READY
0:00:00.320327705 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<queue0> completed state change to R=
EADY
0:00:00.320331867 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<queue0> notifying about state-=
changed NULL to READY (VOID_PENDING pending)
0:00:00.320337244 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'queue0' changed state =
to 2(READY) successfully
0:00:00.320346095 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<appsrc> current NULL pending VOID_PENDIN=
G, desired next READY
0:00:00.320350848 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<appsrc> completed state change to R=
EADY
0:00:00.320354934 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<appsrc> notifying about state-=
changed NULL to READY (VOID_PENDING pending)
0:00:00.320360423 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'appsrc' changed state =
to 2(READY) successfully
0:00:00.320366365 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2778:gst_element_continue_state:<pipeline0> committing state from NU=
LL to READY, pending PLAYING, next PAUSED
0:00:00.320370733 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<pipeline0> notifying about sta=
te-changed NULL to READY (PLAYING pending)
0:00:00.320375876 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2786:gst_element_continue_state:<pipeline0> continue state change RE=
ADY to PAUSED, final PLAYING
0:00:00.320385089 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audiosink> current READY pending VOID_PE=
NDING, desired next PAUSED
0:00:00.320391914 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audiosink-actual-sink-pulse> current REA=
DY pending VOID_PENDING, desired next PAUSED
0:00:00.320404825 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2935:gst_bin_change_state_func:<audiosink> child 'audiosink-actual-sink-=
pulse' is changing state asynchronously to PAUSED
0:00:00.320412627 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2935:gst_bin_change_state_func:<pipeline0> child 'audiosink' is changing=
 state asynchronously to PAUSED
0:00:00.320418046 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audioresample0> current READY pending VO=
ID_PENDING, desired next PAUSED
0:00:00.320425428 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audioresample0> completed state cha=
nge to PAUSED
0:00:00.320429932 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audioresample0> notifying abou=
t state-changed READY to PAUSED (VOID_PENDING pending)
0:00:00.320435471 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'audioresample0' change=
d state to 3(PAUSED) successfully
0:00:00.320440436 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audioconvert0> current READY pending VOI=
D_PENDING, desired next PAUSED
0:00:00.320446644 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audioconvert0> completed state chan=
ge to PAUSED
0:00:00.320450918 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audioconvert0> notifying about=
 state-changed READY to PAUSED (VOID_PENDING pending)
0:00:00.320456405 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'audioconvert0' changed=
 state to 3(PAUSED) successfully
0:00:00.320464439 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<queue0> current READY pending VOID_PENDI=
NG, desired next PAUSED
0:00:00.320479826 236125 0x562204e5c670 INFO                    task gsttas=
k.c:516:gst_task_set_lock: setting stream lock 0x562205400640 on task 0x562=
204e4d170
0:00:00.320485174 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:6291:gst_pad_start_task:<queue0:src> created task 0x562204e4d170
0:00:00.320525479 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<queue0> completed state change to P=
AUSED
0:00:00.320532447 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<queue0> notifying about state-=
changed READY to PAUSED (VOID_PENDING pending)
0:00:00.320538986 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'queue0' changed state =
to 3(PAUSED) successfully
0:00:00.320544096 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<appsrc> current READY pending VOID_PENDI=
NG, desired next PAUSED
0:00:00.320557222 236125 0x562204e5c670 INFO                 basesrc gstbas=
esrc.c:1430:gst_base_src_do_seek:<appsrc> seeking: time segment start=3D0:0=
0:00.000000000, offset=3D0:00:00.000000000, stop=3D99:99:99.999999999, rate=
=3D1,000000, applied_rate=3D1,000000, flags=3D0x00, time=3D0:00:00.00000000=
0, base=3D0:00:00.000000000, position 0:00:00.000000000, duration 99:99:99.=
999999999
0:00:00.320565710 236125 0x562204e5c670 INFO                    task gsttas=
k.c:516:gst_task_set_lock: setting stream lock 0x5622054001a0 on task 0x562=
204e4d290
0:00:00.320569836 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:6291:gst_pad_start_task:<appsrc:src> created task 0x562204e4d290
0:00:00.320604361 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<appsrc> completed state change to P=
AUSED
0:00:00.320611597 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<appsrc> notifying about state-=
changed READY to PAUSED (VOID_PENDING pending)
0:00:00.320618621 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2971:gst_bin_change_state_func:<pipeline0> child 'appsrc' changed state =
to 3(PAUSED) successfully without preroll
0:00:00.320625114 236125 0x562204e5c670 INFO                pipeline gstpip=
eline.c:533:gst_pipeline_change_state:<pipeline0> pipeline is live
0:00:00.320638591 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2778:gst_element_continue_state:<pipeline0> committing state from RE=
ADY to PAUSED, pending PLAYING, next PLAYING
0:00:00.320633614 236125 0x5622051c82a0 INFO        GST_ELEMENT_PADS gstele=
ment.c:1013:gst_element_get_static_pad: no such pad 'sink' in element "apps=
rc"
0:00:00.320644885 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<pipeline0> notifying about sta=
te-changed READY to PAUSED (PLAYING pending)
0:00:00.320661681 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2786:gst_element_continue_state:<pipeline0> continue state change PA=
USED to PLAYING, final PLAYING
0:00:00.320661680 236125 0x5622051c82a0 FIXME                default gstuti=
ls.c:4025:gst_pad_create_stream_id_internal:<appsrc:src> Creating random st=
ream-id, consider implementing a deterministic way of creating a stream-id
0:00:00.320707437 236125 0x562204e5c670 INFO               GST_EVENT gsteve=
nt.c:1530:gst_event_new_latency: creating latency event 0:00:00.000000000
0:00:00.320726181 236125 0x562204e5c670 INFO                     bin gstbin=
.c:2759:gst_bin_do_latency_func:<pipeline0> configured latency of 0:00:00.0=
00000000
0:00:00.320741634 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audiosink> current READY pending PAUSED,=
 desired next PLAYING
0:00:00.320749623 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2935:gst_bin_change_state_func:<pipeline0> child 'audiosink' is changing=
 state asynchronously to PLAYING
0:00:00.320755424 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audioresample0> current PAUSED pending V=
OID_PENDING, desired next PLAYING
0:00:00.320760208 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audioresample0> completed state cha=
nge to PLAYING
0:00:00.320764827 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audioresample0> notifying abou=
t state-changed PAUSED to PLAYING (VOID_PENDING pending)
0:00:00.320771560 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'audioresample0' change=
d state to 4(PLAYING) successfully
0:00:00.320777094 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audioconvert0> current PAUSED pending VO=
ID_PENDING, desired next PLAYING
0:00:00.320781236 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audioconvert0> completed state chan=
ge to PLAYING
0:00:00.320785645 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audioconvert0> notifying about=
 state-changed PAUSED to PLAYING (VOID_PENDING pending)
0:00:00.320791478 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'audioconvert0' changed=
 state to 4(PLAYING) successfully
0:00:00.320797048 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<queue0> current PAUSED pending VOID_PEND=
ING, desired next PLAYING
0:00:00.320801077 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<queue0> completed state change to P=
LAYING
0:00:00.320805591 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<queue0> notifying about state-=
changed PAUSED to PLAYING (VOID_PENDING pending)
0:00:00.320811273 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'queue0' changed state =
to 4(PLAYING) successfully
0:00:00.320817349 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<appsrc> completed state change to P=
LAYING
0:00:00.320822878 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<appsrc> notifying about state-=
changed PAUSED to PLAYING (VOID_PENDING pending)
0:00:00.320828751 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'appsrc' changed state =
to 4(PLAYING) successfully
0:00:00.320835544 236125 0x5622051c82a0 INFO               GST_EVENT gsteve=
nt.c:892:gst_event_new_caps: creating caps event audio/x-raw, format=3D(str=
ing)S16LE, channels=3D(int)2, rate=3D(int)48000, layout=3D(string)interleav=
ed
(spicy:236125): GSpice-DEBUG: 13:06:40.888: ../spice-gtk-0.41/src/spice-gst=
audio.c:662 Stop faked PlaybackChannel
0:00:00.320873724 236125 0x5622051c82a0 INFO               structure gststr=
ucture.c:2917:gst_structure_get_valist: Expected field 'channel-mask' in st=
ructure: audio/x-raw, channels=3D(int)2, rate=3D(int)48000;
0:00:00.320878917 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audiosink> current READY pending PAUSED,=
 desired next PAUSED
0:00:00.320884704 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2935:gst_bin_change_state_func:<pipeline0> child 'audiosink' is changing=
 state asynchronously to PAUSED
0:00:00.320889832 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audioresample0> current PLAYING pending =
VOID_PENDING, desired next PAUSED
0:00:00.320893827 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audioresample0> completed state cha=
nge to PAUSED
0:00:00.320902034 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audioresample0> notifying abou=
t state-changed PLAYING to PAUSED (VOID_PENDING pending)
0:00:00.320912678 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'audioresample0' change=
d state to 3(PAUSED) successfully
0:00:00.320921625 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audioconvert0> current PLAYING pending V=
OID_PENDING, desired next PAUSED
0:00:00.320928985 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audioconvert0> completed state chan=
ge to PAUSED
0:00:00.320932166 236125 0x56220502d2a0 INFO               structure gststr=
ucture.c:2917:gst_structure_get_valist: Expected field 'channel-mask' in st=
ructure: audio/x-raw, channels=3D(int)2, rate=3D(int)48000;
0:00:00.320936627 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audioconvert0> notifying about=
 state-changed PLAYING to PAUSED (VOID_PENDING pending)
0:00:00.320960105 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'audioconvert0' changed=
 state to 3(PAUSED) successfully
0:00:00.320970199 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<queue0> current PLAYING pending VOID_PEN=
DING, desired next PAUSED
0:00:00.320970190 236125 0x56220502d2a0 INFO               structure gststr=
ucture.c:2917:gst_structure_get_valist: Expected field 'channel-mask' in st=
ructure: audio/x-raw, channels=3D(int)2, rate=3D(int)48000;
0:00:00.320979183 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<queue0> completed state change to P=
AUSED
0:00:00.320994899 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<queue0> notifying about state-=
changed PLAYING to PAUSED (VOID_PENDING pending)
0:00:00.321010454 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'queue0' changed state =
to 3(PAUSED) successfully
0:00:00.321019671 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<appsrc> current PLAYING pending VOID_PEN=
DING, desired next PAUSED
0:00:00.321027811 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<appsrc> completed state change to P=
AUSED
0:00:00.321035135 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<appsrc> notifying about state-=
changed PLAYING to PAUSED (VOID_PENDING pending)
0:00:00.321044629 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2971:gst_bin_change_state_func:<pipeline0> child 'appsrc' changed state =
to 3(PAUSED) successfully without preroll
0:00:00.321052981 236125 0x562204e5c670 INFO                pipeline gstpip=
eline.c:533:gst_pipeline_change_state:<pipeline0> pipeline is live
0:00:00.321061639 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2778:gst_element_continue_state:<pipeline0> committing state from PA=
USED to PAUSED, pending READY, next READY
0:00:00.321068991 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<pipeline0> notifying about sta=
te-changed PAUSED to PAUSED (READY pending)
0:00:00.321083839 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2786:gst_element_continue_state:<pipeline0> continue state change PA=
USED to READY, final READY
0:00:00.321095587 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audiosink> current READY pending PAUSED,=
 desired next READY
0:00:00.321103373 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audiosink-actual-sink-pulse> current REA=
DY pending PAUSED, desired next READY
0:00:00.347687896 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audiosink-actual-sink-pulse> comple=
ted state change to READY
0:00:00.347711456 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audiosink-actual-sink-pulse> n=
otifying about state-changed READY to READY (VOID_PENDING pending)
0:00:00.347723105 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<audiosink> child 'audiosink-actual-sink-=
pulse' changed state to 2(READY) successfully
0:00:00.347737852 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audiosink> completed state change t=
o READY
0:00:00.347745423 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audiosink> notifying about sta=
te-changed READY to READY (VOID_PENDING pending)
0:00:00.347755013 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'audiosink' changed sta=
te to 2(READY) successfully
0:00:00.347765754 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audioresample0> current PAUSED pending V=
OID_PENDING, desired next READY
0:00:00.347777720 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audioresample0> completed state cha=
nge to READY
0:00:00.347791973 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audioresample0> notifying abou=
t state-changed PAUSED to READY (VOID_PENDING pending)
0:00:00.347800660 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'audioresample0' change=
d state to 2(READY) successfully
0:00:00.347808897 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audioconvert0> current PAUSED pending VO=
ID_PENDING, desired next READY
0:00:00.347832593 236125 0x56220502d2a0 INFO               structure gststr=
ucture.c:2917:gst_structure_get_valist: Expected field 'channel-mask' in st=
ructure: audio/x-raw, format=3D(string)S16LE, channels=3D(int)2, rate=3D(in=
t)48000, layout=3D(string)interleaved;
0:00:00.347860672 236125 0x56220502d2a0 INFO         audio-converter audio-=
converter.c:1358:gst_audio_converter_new: unitsizes: 4 -> 4
0:00:00.347865577 236125 0x56220502d2a0 INFO         audio-converter audio-=
converter.c:727:chain_unpack: unpack format S16LE to S16LE
0:00:00.347877246 236125 0x56220502d2a0 INFO         audio-converter audio-=
converter.c:869:chain_mix: mix format S16LE, passthrough 1, in_channels 2, =
out_channels 2
0:00:00.347881484 236125 0x56220502d2a0 INFO         audio-converter audio-=
converter.c:963:chain_quantize: depth in 16, out 16
0:00:00.347884333 236125 0x56220502d2a0 INFO         audio-converter audio-=
converter.c:975:chain_quantize: using no dither and noise shaping
0:00:00.347887452 236125 0x56220502d2a0 INFO         audio-converter audio-=
converter.c:1032:chain_pack: pack format S16LE to S16LE
0:00:00.347890093 236125 0x56220502d2a0 INFO         audio-converter audio-=
converter.c:1386:gst_audio_converter_new: same formats, same layout, no res=
ampler and passthrough mixing -> passthrough
0:00:00.347897662 236125 0x56220502d2a0 INFO               GST_EVENT gsteve=
nt.c:892:gst_event_new_caps: creating caps event audio/x-raw, rate=3D(int)4=
8000, format=3D(string)S16LE, channels=3D(int)2, layout=3D(string)interleav=
ed, channel-mask=3D(bitmask)0x0000000000000003
0:00:00.347915004 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audioconvert0> completed state chan=
ge to READY
0:00:00.347922915 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audioconvert0> notifying about=
 state-changed PAUSED to READY (VOID_PENDING pending)
0:00:00.347929396 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'audioconvert0' changed=
 state to 2(READY) successfully
0:00:00.347935430 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<queue0> current PAUSED pending VOID_PEND=
ING, desired next READY
0:00:00.347965867 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<queue0> completed state change to R=
EADY
0:00:00.347972235 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<queue0> notifying about state-=
changed PAUSED to READY (VOID_PENDING pending)
0:00:00.347978229 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'queue0' changed state =
to 2(READY) successfully
0:00:00.347994923 236125 0x5622051c82a0 INFO                 basesrc gstbas=
esrc.c:2913:gst_base_src_loop:<appsrc> pausing after gst_base_src_get_range=
() =3D flushing
0:00:00.348052315 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<appsrc> completed state change to R=
EADY
0:00:00.348058946 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<appsrc> notifying about state-=
changed PAUSED to READY (VOID_PENDING pending)
0:00:00.348064719 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'appsrc' changed state =
to 2(READY) successfully
0:00:00.348070098 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<pipeline0> completed state change t=
o READY
0:00:00.348073845 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<pipeline0> notifying about sta=
te-changed PAUSED to READY (VOID_PENDING pending)
(spicy:236125): GSpice-DEBUG: 13:06:40.916: ../spice-gtk-0.41/src/spice-gst=
audio.c:680 (playback) volume at 0 is 65535 (100,00%)
(spicy:236125): GSpice-DEBUG: 13:06:40.916: ../spice-gtk-0.41/src/spice-gst=
audio.c:680 (playback) volume at 1 is 65535 (100,00%)
(spicy:236125): GSpice-DEBUG: 13:06:40.916: ../spice-gtk-0.41/src/channel-m=
ain.c:1234 audio_playback_volume_info_cb mute=3Dno nchannels=3D2 volume[0]=
=3D65535
(spicy:236125): GSpice-DEBUG: 13:06:40.916: ../spice-gtk-0.41/src/spice-gst=
audio.c:724 RecordChannel not created yet, force start
0:00:00.348137766 236125 0x562204e5c670 INFO            GST_PIPELINE gstpar=
se.c:344:gst_parse_launch_full: parsing pipeline description 'autoaudiosrc =
name=3Daudiosrc ! queue ! audioconvert ! audioresample ! appsink caps=3D"au=
dio/x-raw,format=3D"S16LE",channels=3D2,rate=3D48000,layout=3Dinterleaved" =
name=3Dappsink'
0:00:00.348147069 236125 0x562204e5c670 INFO     GST_ELEMENT_FACTORY gstele=
mentfactory.c:489:gst_element_factory_create_with_properties: creating elem=
ent "autoaudiosrc"
0:00:00.348177732 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:759:gst_element_add_pad:<autoaudiosrc0> adding pad 'src'
0:00:00.348441683 236125 0x562204e5c670 INFO      GST_PLUGIN_LOADING gstplu=
gin.c:987:_priv_gst_plugin_load_file_for_registry: plugin "/usr/lib/gstream=
er-1.0/libgstaudiotestsrc.so" loaded
0:00:00.348496075 236125 0x562204e5c670 INFO     GST_ELEMENT_FACTORY gstele=
mentfactory.c:489:gst_element_factory_create_with_properties: creating elem=
ent "audiotestsrc"
0:00:00.348510831 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:759:gst_element_add_pad:<GstBaseSrc@0x5622054363f0> adding pad 'src'
0:00:00.348530304 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:1016:gst_element_get_static_pad: found pad fake-auto-audio-src:src
0:00:00.348538879 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:2382:gst_pad_link_prepare: trying to link fake-auto-audio-src:src and sr=
c:proxypad1
0:00:00.348543956 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:2590:gst_pad_link_full: linked fake-auto-audio-src:src and src:proxypad1=
, successful
0:00:00.348547124 236125 0x562204e5c670 INFO               GST_EVENT gsteve=
nt.c:1660:gst_event_new_reconfigure: creating reconfigure event
0:00:00.348550921 236125 0x562204e5c670 INFO               GST_EVENT gstpad=
.c:5946:gst_pad_send_event_unchecked:<fake-auto-audio-src:src> Received eve=
nt on flushing pad. Discarding
0:00:00.348562790 236125 0x562204e5c670 INFO     GST_ELEMENT_FACTORY gstele=
mentfactory.c:489:gst_element_factory_create_with_properties: creating elem=
ent "queue"
0:00:00.348577634 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:759:gst_element_add_pad:<GstQueue@0x5622053ea9f0> adding pad 'sink'
0:00:00.348585451 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:759:gst_element_add_pad:<GstQueue@0x5622053ea9f0> adding pad 'src'
0:00:00.348596201 236125 0x562204e5c670 INFO     GST_ELEMENT_FACTORY gstele=
mentfactory.c:489:gst_element_factory_create_with_properties: creating elem=
ent "audioconvert"
0:00:00.348603690 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:759:gst_element_add_pad:<GstBaseTransform@0x56220543a850> adding pad=
 'sink'
0:00:00.348614484 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:759:gst_element_add_pad:<GstBaseTransform@0x56220543a850> adding pad=
 'src'
0:00:00.348621923 236125 0x562204e5c670 INFO     GST_ELEMENT_FACTORY gstele=
mentfactory.c:489:gst_element_factory_create_with_properties: creating elem=
ent "audioresample"
0:00:00.348628456 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:759:gst_element_add_pad:<GstBaseTransform@0x56220543af30> adding pad=
 'sink'
0:00:00.348633848 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:759:gst_element_add_pad:<GstBaseTransform@0x56220543af30> adding pad=
 'src'
0:00:00.348640657 236125 0x562204e5c670 INFO     GST_ELEMENT_FACTORY gstele=
mentfactory.c:489:gst_element_factory_create_with_properties: creating elem=
ent "appsink"
0:00:00.348700269 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:759:gst_element_add_pad:<GstBaseSink@0x5622054188d0> adding pad 'sin=
k'
0:00:00.348727887 236125 0x562204e5c670 INFO     GST_ELEMENT_FACTORY gstele=
mentfactory.c:489:gst_element_factory_create_with_properties: creating elem=
ent "pipeline"
0:00:00.348764175 236125 0x562204e5c670 INFO            GST_PIPELINE subpro=
jects/gstreamer/gst/parse/grammar.y:683:gst_parse_perform_link: linking som=
e pad of GstAutoAudioSrc named audiosrc to some pad of GstQueue named queue=
1 (0/0) with caps "(NULL)"
0:00:00.348770584 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstuti=
ls.c:1816:gst_element_link_pads_full: trying to link element audiosrc:(any)=
 to element queue1:(any)
0:00:00.348775814 236125 0x562204e5c670 INFO                GST_PADS gstuti=
ls.c:1079:gst_pad_check_link: trying to link audiosrc:src and queue1:sink
0:00:00.348786832 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:4357:gst_pad_peer_query:<queue1:src> pad has no peer
0:00:00.348792667 236125 0x562204e5c670 INFO                GST_PADS gstuti=
ls.c:1632:prepare_link_maybe_ghosting: audiosrc and queue1 in same bin, no =
need for ghost pads
0:00:00.348798744 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:2382:gst_pad_link_prepare: trying to link audiosrc:src and queue1:sink
0:00:00.348804950 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:4357:gst_pad_peer_query:<queue1:src> pad has no peer
0:00:00.348810107 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:2590:gst_pad_link_full: linked audiosrc:src and queue1:sink, successful
0:00:00.348813189 236125 0x562204e5c670 INFO               GST_EVENT gsteve=
nt.c:1660:gst_event_new_reconfigure: creating reconfigure event
0:00:00.348820057 236125 0x562204e5c670 INFO               GST_EVENT gstpad=
.c:5946:gst_pad_send_event_unchecked:<audiosrc:src> Received event on flush=
ing pad. Discarding
0:00:00.348829138 236125 0x562204e5c670 INFO            GST_PIPELINE subpro=
jects/gstreamer/gst/parse/grammar.y:683:gst_parse_perform_link: linking som=
e pad of GstQueue named queue1 to some pad of GstAudioConvert named audioco=
nvert1 (0/0) with caps "(NULL)"
0:00:00.348833637 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstuti=
ls.c:1816:gst_element_link_pads_full: trying to link element queue1:(any) t=
o element audioconvert1:(any)
0:00:00.348838293 236125 0x562204e5c670 INFO                GST_PADS gstuti=
ls.c:1079:gst_pad_check_link: trying to link queue1:src and audioconvert1:s=
ink
0:00:00.348845946 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:4357:gst_pad_peer_query:<audioconvert1:src> pad has no peer
0:00:00.348860091 236125 0x562204e5c670 INFO               structure gststr=
ucture.c:2917:gst_structure_get_valist: Expected field 'channel-mask' in st=
ructure: audio/x-raw, rate=3D(int)[ 1, 2147483647 ], channels=3D(int)[ 1, 2=
147483647 ];
0:00:00.348880586 236125 0x562204e5c670 INFO                GST_PADS gstuti=
ls.c:1632:prepare_link_maybe_ghosting: queue1 and audioconvert1 in same bin=
, no need for ghost pads
0:00:00.348886963 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:2382:gst_pad_link_prepare: trying to link queue1:src and audioconvert1:s=
ink
0:00:00.348893980 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:4357:gst_pad_peer_query:<audioconvert1:src> pad has no peer
0:00:00.348903277 236125 0x562204e5c670 INFO               structure gststr=
ucture.c:2917:gst_structure_get_valist: Expected field 'channel-mask' in st=
ructure: audio/x-raw, rate=3D(int)[ 1, 2147483647 ], channels=3D(int)[ 1, 2=
147483647 ];
0:00:00.348921658 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:2590:gst_pad_link_full: linked queue1:src and audioconvert1:sink, succes=
sful
0:00:00.348925038 236125 0x562204e5c670 INFO               GST_EVENT gsteve=
nt.c:1660:gst_event_new_reconfigure: creating reconfigure event
0:00:00.348928347 236125 0x562204e5c670 INFO               GST_EVENT gstpad=
.c:5946:gst_pad_send_event_unchecked:<queue1:src> Received event on flushin=
g pad. Discarding
0:00:00.348937496 236125 0x562204e5c670 INFO            GST_PIPELINE subpro=
jects/gstreamer/gst/parse/grammar.y:683:gst_parse_perform_link: linking som=
e pad of GstAudioConvert named audioconvert1 to some pad of GstAudioResampl=
e named audioresample1 (0/0) with caps "(NULL)"
0:00:00.348942155 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstuti=
ls.c:1816:gst_element_link_pads_full: trying to link element audioconvert1:=
(any) to element audioresample1:(any)
0:00:00.348946869 236125 0x562204e5c670 INFO                GST_PADS gstuti=
ls.c:1079:gst_pad_check_link: trying to link audioconvert1:src and audiores=
ample1:sink
0:00:00.348969510 236125 0x562204e5c670 INFO               structure gststr=
ucture.c:2917:gst_structure_get_valist: Expected field 'channel-mask' in st=
ructure: audio/x-raw, rate=3D(int)[ 1, 2147483647 ], channels=3D(int)[ 1, 2=
147483647 ];
0:00:00.348991663 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:4357:gst_pad_peer_query:<audioresample1:src> pad has no peer
0:00:00.349015203 236125 0x562204e5c670 INFO                GST_PADS gstuti=
ls.c:1632:prepare_link_maybe_ghosting: audioconvert1 and audioresample1 in =
same bin, no need for ghost pads
0:00:00.349023876 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:2382:gst_pad_link_prepare: trying to link audioconvert1:src and audiores=
ample1:sink
0:00:00.349045059 236125 0x562204e5c670 INFO               structure gststr=
ucture.c:2917:gst_structure_get_valist: Expected field 'channel-mask' in st=
ructure: audio/x-raw, rate=3D(int)[ 1, 2147483647 ], channels=3D(int)[ 1, 2=
147483647 ];
0:00:00.349065765 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:4357:gst_pad_peer_query:<audioresample1:src> pad has no peer
0:00:00.349088560 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:2590:gst_pad_link_full: linked audioconvert1:src and audioresample1:sink=
, successful
0:00:00.349091926 236125 0x562204e5c670 INFO               GST_EVENT gsteve=
nt.c:1660:gst_event_new_reconfigure: creating reconfigure event
0:00:00.349095106 236125 0x562204e5c670 INFO               GST_EVENT gstpad=
.c:5946:gst_pad_send_event_unchecked:<audioconvert1:src> Received event on =
flushing pad. Discarding
0:00:00.349103425 236125 0x562204e5c670 INFO            GST_PIPELINE subpro=
jects/gstreamer/gst/parse/grammar.y:683:gst_parse_perform_link: linking som=
e pad of GstAudioResample named audioresample1 to some pad of GstAppSink na=
med appsink (0/0) with caps "(NULL)"
0:00:00.349108166 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstuti=
ls.c:1816:gst_element_link_pads_full: trying to link element audioresample1=
:(any) to element appsink:(any)
0:00:00.349112736 236125 0x562204e5c670 INFO                GST_PADS gstuti=
ls.c:1079:gst_pad_check_link: trying to link audioresample1:src and appsink=
:sink
0:00:00.349120466 236125 0x562204e5c670 INFO                GST_PADS gstuti=
ls.c:1632:prepare_link_maybe_ghosting: audioresample1 and appsink in same b=
in, no need for ghost pads
0:00:00.349125635 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:2382:gst_pad_link_prepare: trying to link audioresample1:src and appsink=
:sink
0:00:00.349132753 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:2590:gst_pad_link_full: linked audioresample1:src and appsink:sink, succ=
essful
0:00:00.349135773 236125 0x562204e5c670 INFO               GST_EVENT gsteve=
nt.c:1660:gst_event_new_reconfigure: creating reconfigure event
0:00:00.349138863 236125 0x562204e5c670 INFO               GST_EVENT gstpad=
.c:5946:gst_pad_send_event_unchecked:<audioresample1:src> Received event on=
 flushing pad. Discarding
0:00:00.349148534 236125 0x562204e5c670 INFO           GST_PARENTAGE gstbin=
.c:4377:gst_bin_get_by_name: [pipeline1]: looking up child element audiosrc
0:00:00.349154971 236125 0x562204e5c670 INFO           GST_PARENTAGE gstbin=
.c:4377:gst_bin_get_by_name: [pipeline1]: looking up child element appsink
0:00:00.349170611 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<appsink> current NULL pending VOID_PENDI=
NG, desired next READY
0:00:00.349175858 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<appsink> completed state change to =
READY
0:00:00.349180150 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<appsink> notifying about state=
-changed NULL to READY (VOID_PENDING pending)
0:00:00.349190241 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'appsink' changed state=
 to 2(READY) successfully
0:00:00.349198420 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audioresample1> current NULL pending VOI=
D_PENDING, desired next READY
0:00:00.349202251 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audioresample1> completed state cha=
nge to READY
0:00:00.349205933 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audioresample1> notifying abou=
t state-changed NULL to READY (VOID_PENDING pending)
0:00:00.349211072 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'audioresample1' change=
d state to 2(READY) successfully
0:00:00.349215495 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audioconvert1> current NULL pending VOID=
_PENDING, desired next READY
0:00:00.349218927 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audioconvert1> completed state chan=
ge to READY
0:00:00.349222477 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audioconvert1> notifying about=
 state-changed NULL to READY (VOID_PENDING pending)
0:00:00.349227397 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'audioconvert1' changed=
 state to 2(READY) successfully
0:00:00.349231876 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<queue1> current NULL pending VOID_PENDIN=
G, desired next READY
0:00:00.349235265 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<queue1> completed state change to R=
EADY
0:00:00.349238924 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<queue1> notifying about state-=
changed NULL to READY (VOID_PENDING pending)
0:00:00.349243855 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'queue1' changed state =
to 2(READY) successfully
0:00:00.349247911 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audiosrc> current NULL pending VOID_PEND=
ING, desired next READY
0:00:00.349252151 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<fake-auto-audio-src> completed stat=
e change to NULL
0:00:00.349258655 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstpad=
.c:2137:gst_pad_unlink: unlinking fake-auto-audio-src:src(0x5622054013b0) a=
nd src:proxypad1(0x5622054142d0)
0:00:00.349264482 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstpad=
.c:2192:gst_pad_unlink: unlinked fake-auto-audio-src:src and src:proxypad1
0:00:00.349268990 236125 0x562204e5c670 INFO           GST_PARENTAGE gstbin=
.c:1803:gst_bin_remove_func:<audiosrc> removed child "fake-auto-audio-src"
0:00:00.349275911 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3382:gst_element_dispose:<fake-auto-audio-src> 0x5622054363f0 dispos=
e
0:00:00.349279506 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:875:gst_element_remove_pad:<fake-auto-audio-src> removing pad 'src'
0:00:00.349287853 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3428:gst_element_dispose:<fake-auto-audio-src> 0x5622054363f0 parent=
 class dispose
0:00:00.349292195 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3460:gst_element_finalize:<fake-auto-audio-src> 0x5622054363f0 final=
ize
0:00:00.349295577 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3465:gst_element_finalize:<fake-auto-audio-src> 0x5622054363f0 final=
ize parent
0:00:00.349564443 236125 0x562204e5c670 INFO     GST_ELEMENT_FACTORY gstele=
mentfactory.c:489:gst_element_factory_create_with_properties: creating elem=
ent "pulsesrc"
0:00:00.349575373 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:759:gst_element_add_pad:<GstBaseSrc@0x562205437ec0> adding pad 'src'
0:00:00.349590308 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:1016:gst_element_get_static_pad: found pad audiosrc-actual-src-puls:=
src
0:00:00.350119198 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audiosrc-actual-src-puls> completed=
 state change to READY
0:00:00.350127349 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audiosrc-actual-src-puls> noti=
fying about state-changed NULL to READY (VOID_PENDING pending)
0:00:00.350308100 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audiosrc-actual-src-puls> completed=
 state change to NULL
0:00:00.350319184 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audiosrc-actual-src-puls> noti=
fying about state-changed READY to NULL (VOID_PENDING pending)
0:00:00.350346298 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:1016:gst_element_get_static_pad: found pad audiosrc-actual-src-puls:=
src
0:00:00.350355408 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:2382:gst_pad_link_prepare: trying to link audiosrc-actual-src-puls:src a=
nd src:proxypad1
0:00:00.350360683 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:2590:gst_pad_link_full: linked audiosrc-actual-src-puls:src and src:prox=
ypad1, successful
0:00:00.350364016 236125 0x562204e5c670 INFO               GST_EVENT gsteve=
nt.c:1660:gst_event_new_reconfigure: creating reconfigure event
0:00:00.350367847 236125 0x562204e5c670 INFO               GST_EVENT gstpad=
.c:5946:gst_pad_send_event_unchecked:<audiosrc-actual-src-puls:src> Receive=
d event on flushing pad. Discarding
0:00:00.350377440 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audiosrc-actual-src-puls> current NULL p=
ending VOID_PENDING, desired next READY
0:00:00.350813329 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audiosrc-actual-src-puls> completed=
 state change to READY
0:00:00.350820935 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audiosrc-actual-src-puls> noti=
fying about state-changed NULL to READY (VOID_PENDING pending)
0:00:00.350828524 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<audiosrc> child 'audiosrc-actual-src-pul=
s' changed state to 2(READY) successfully
0:00:00.350833655 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audiosrc> completed state change to=
 READY
0:00:00.350841894 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audiosrc> notifying about stat=
e-changed NULL to READY (VOID_PENDING pending)
0:00:00.350847771 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'audiosrc' changed stat=
e to 2(READY) successfully
0:00:00.350853018 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2778:gst_element_continue_state:<pipeline1> committing state from NU=
LL to READY, pending PLAYING, next PAUSED
0:00:00.350856814 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<pipeline1> notifying about sta=
te-changed NULL to READY (PLAYING pending)
0:00:00.350861038 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2786:gst_element_continue_state:<pipeline1> continue state change RE=
ADY to PAUSED, final PLAYING
0:00:00.350870800 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<appsink> current READY pending VOID_PEND=
ING, desired next PAUSED
0:00:00.350878601 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2935:gst_bin_change_state_func:<pipeline1> child 'appsink' is changing s=
tate asynchronously to PAUSED
0:00:00.350883580 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audioresample1> current READY pending VO=
ID_PENDING, desired next PAUSED
0:00:00.350889790 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audioresample1> completed state cha=
nge to PAUSED
0:00:00.350893573 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audioresample1> notifying abou=
t state-changed READY to PAUSED (VOID_PENDING pending)
0:00:00.350898499 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'audioresample1' change=
d state to 3(PAUSED) successfully
0:00:00.350902928 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audioconvert1> current READY pending VOI=
D_PENDING, desired next PAUSED
0:00:00.350907878 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audioconvert1> completed state chan=
ge to PAUSED
0:00:00.350911422 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audioconvert1> notifying about=
 state-changed READY to PAUSED (VOID_PENDING pending)
0:00:00.350915834 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'audioconvert1' changed=
 state to 3(PAUSED) successfully
0:00:00.350920240 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<queue1> current READY pending VOID_PENDI=
NG, desired next PAUSED
0:00:00.350928560 236125 0x562204e5c670 INFO                    task gsttas=
k.c:516:gst_task_set_lock: setting stream lock 0x5622054018c0 on task 0x562=
204e4d3b0
0:00:00.350932492 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:6291:gst_pad_start_task:<queue1:src> created task 0x562204e4d3b0
0:00:00.350942615 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<queue1> completed state change to P=
AUSED
0:00:00.350952469 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<queue1> notifying about state-=
changed READY to PAUSED (VOID_PENDING pending)
0:00:00.350960974 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'queue1' changed state =
to 3(PAUSED) successfully
0:00:00.350966848 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audiosrc> current READY pending VOID_PEN=
DING, desired next PAUSED
0:00:00.350974499 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audiosrc-actual-src-puls> current READY =
pending VOID_PENDING, desired next PAUSED
0:00:00.350989769 236125 0x562204e5c670 INFO                 basesrc gstbas=
esrc.c:1430:gst_base_src_do_seek:<audiosrc-actual-src-puls> seeking: time s=
egment start=3D0:00:00.000000000, offset=3D0:00:00.000000000, stop=3D99:99:=
99.999999999, rate=3D1,000000, applied_rate=3D1,000000, flags=3D0x00, time=
=3D0:00:00.000000000, base=3D0:00:00.000000000, position 0:00:00.000000000,=
 duration 99:99:99.999999999
0:00:00.350997099 236125 0x562204e5c670 INFO                    task gsttas=
k.c:516:gst_task_set_lock: setting stream lock 0x562205401420 on task 0x562=
204e4d4d0
0:00:00.351000764 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:6291:gst_pad_start_task:<audiosrc-actual-src-puls:src> created task 0x56=
2204e4d4d0
0:00:00.351008584 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audiosrc-actual-src-puls> completed=
 state change to PAUSED
0:00:00.351012809 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audiosrc-actual-src-puls> noti=
fying about state-changed READY to PAUSED (VOID_PENDING pending)
0:00:00.351018094 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2971:gst_bin_change_state_func:<audiosrc> child 'audiosrc-actual-src-pul=
s' changed state to 3(PAUSED) successfully without preroll
0:00:00.351022910 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audiosrc> completed state change to=
 PAUSED
0:00:00.351026441 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audiosrc> notifying about stat=
e-changed READY to PAUSED (VOID_PENDING pending)
0:00:00.351025598 236125 0x5622051c82a0 INFO        GST_ELEMENT_PADS gstele=
ment.c:1013:gst_element_get_static_pad: no such pad 'sink' in element "audi=
osrc-actual-src-puls"
0:00:00.351031543 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2971:gst_bin_change_state_func:<pipeline1> child 'audiosrc' changed stat=
e to 3(PAUSED) successfully without preroll
0:00:00.351039619 236125 0x5622051c82a0 FIXME                default gstuti=
ls.c:4025:gst_pad_create_stream_id_internal:<audiosrc-actual-src-puls:src> =
Creating random stream-id, consider implementing a deterministic way of cre=
ating a stream-id
0:00:00.351042848 236125 0x562204e5c670 INFO                pipeline gstpip=
eline.c:533:gst_pipeline_change_state:<pipeline1> pipeline is live
0:00:00.351047429 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2778:gst_element_continue_state:<pipeline1> committing state from RE=
ADY to PAUSED, pending PLAYING, next PLAYING
0:00:00.351055953 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<pipeline1> notifying about sta=
te-changed READY to PAUSED (PLAYING pending)
0:00:00.351063242 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2786:gst_element_continue_state:<pipeline1> continue state change PA=
USED to PLAYING, final PLAYING
0:00:00.351090735 236125 0x5622051c82a0 INFO               structure gststr=
ucture.c:2917:gst_structure_get_valist: Expected field 'channel-mask' in st=
ructure: audio/x-raw, channels=3D(int)2, rate=3D(int)48000;
0:00:00.351098530 236125 0x5622051c82a0 INFO               structure gststr=
ucture.c:2917:gst_structure_get_valist: Expected field 'channel-mask' in st=
ructure: audio/x-raw, channels=3D(int)2, rate=3D(int)[ 1, 2147483647 ];
0:00:00.351098909 236125 0x562204e5c670 INFO               GST_EVENT gsteve=
nt.c:1530:gst_event_new_latency: creating latency event 0:00:00.000000000
0:00:00.351109574 236125 0x562204e5c670 INFO                     bin gstbin=
.c:2759:gst_bin_do_latency_func:<pipeline1> configured latency of 0:00:00.0=
00000000
0:00:00.351117841 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<appsink> current READY pending PAUSED, d=
esired next PLAYING
0:00:00.351121827 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2935:gst_bin_change_state_func:<pipeline1> child 'appsink' is changing s=
tate asynchronously to PLAYING
0:00:00.351126210 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audioresample1> current PAUSED pending V=
OID_PENDING, desired next PLAYING
0:00:00.351130211 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audioresample1> completed state cha=
nge to PLAYING
0:00:00.351134039 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audioresample1> notifying abou=
t state-changed PAUSED to PLAYING (VOID_PENDING pending)
0:00:00.351139322 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'audioresample1' change=
d state to 4(PLAYING) successfully
0:00:00.351144108 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audioconvert1> current PAUSED pending VO=
ID_PENDING, desired next PLAYING
0:00:00.351147206 236125 0x5622051c82a0 INFO               structure gststr=
ucture.c:2917:gst_structure_get_valist: Expected field 'channel-mask' in st=
ructure: audio/x-raw, format=3D(string)S16LE, layout=3D(string)interleaved,=
 rate=3D(int)48000, channels=3D(int)2;
0:00:00.351147519 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audioconvert1> completed state chan=
ge to PLAYING
0:00:00.351157436 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audioconvert1> notifying about=
 state-changed PAUSED to PLAYING (VOID_PENDING pending)
0:00:00.351162720 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'audioconvert1' changed=
 state to 4(PLAYING) successfully
0:00:00.351167465 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<queue1> current PAUSED pending VOID_PEND=
ING, desired next PLAYING
0:00:00.351171054 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<queue1> completed state change to P=
LAYING
0:00:00.351177670 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<queue1> notifying about state-=
changed PAUSED to PLAYING (VOID_PENDING pending)
0:00:00.351178352 236125 0x5622051c82a0 INFO                   pulse pulses=
rc.c:1524:gst_pulsesrc_prepare:<audiosrc-actual-src-puls> maxlength: 38400
0:00:00.351182430 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'queue1' changed state =
to 4(PLAYING) successfully
0:00:00.351184943 236125 0x5622051c82a0 INFO                   pulse pulses=
rc.c:1525:gst_pulsesrc_prepare:<audiosrc-actual-src-puls> tlength:   -1
0:00:00.351189519 236125 0x5622051c82a0 INFO                   pulse pulses=
rc.c:1526:gst_pulsesrc_prepare:<audiosrc-actual-src-puls> prebuf:    0
0:00:00.351193247 236125 0x5622051c82a0 INFO                   pulse pulses=
rc.c:1527:gst_pulsesrc_prepare:<audiosrc-actual-src-puls> minreq:    -1
0:00:00.351197094 236125 0x5622051c82a0 INFO                   pulse pulses=
rc.c:1528:gst_pulsesrc_prepare:<audiosrc-actual-src-puls> fragsize:  1920
0:00:00.351258854 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audiosrc-actual-src-puls> completed=
 state change to PLAYING
0:00:00.351269812 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audiosrc-actual-src-puls> noti=
fying about state-changed PAUSED to PLAYING (VOID_PENDING pending)
0:00:00.351279397 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<audiosrc> child 'audiosrc-actual-src-pul=
s' changed state to 4(PLAYING) successfully
0:00:00.351284996 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audiosrc> completed state change to=
 PLAYING
0:00:00.351290628 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audiosrc> notifying about stat=
e-changed PAUSED to PLAYING (VOID_PENDING pending)
0:00:00.351298704 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'audiosrc' changed stat=
e to 4(PLAYING) successfully
(spicy:236125): GSpice-DEBUG: 13:06:40.919: ../spice-gtk-0.41/src/spice-gst=
audio.c:746 Stop faked RecordChannel
(spicy:236125): GSpice-DEBUG: 13:06:40.919: ../spice-gtk-0.41/src/spice-gst=
audio.c:136 record_stop
0:00:00.351350378 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<appsink> current READY pending PAUSED, d=
esired next PAUSED
0:00:00.351357262 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2597:gst_bin_element_set_state:<appsink> skipping transition from READY =
to  PAUSED
0:00:00.351363980 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'appsink' changed state=
 to 3(PAUSED) successfully
0:00:00.351371825 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audioresample1> current PLAYING pending =
VOID_PENDING, desired next PAUSED
0:00:00.351378396 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audioresample1> completed state cha=
nge to PAUSED
0:00:00.351385063 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audioresample1> notifying abou=
t state-changed PLAYING to PAUSED (VOID_PENDING pending)
0:00:00.351400054 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'audioresample1' change=
d state to 3(PAUSED) successfully
0:00:00.351409026 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audioconvert1> current PLAYING pending V=
OID_PENDING, desired next PAUSED
0:00:00.351415272 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audioconvert1> completed state chan=
ge to PAUSED
0:00:00.351421687 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audioconvert1> notifying about=
 state-changed PLAYING to PAUSED (VOID_PENDING pending)
0:00:00.351430048 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'audioconvert1' changed=
 state to 3(PAUSED) successfully
0:00:00.351438725 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<queue1> current PLAYING pending VOID_PEN=
DING, desired next PAUSED
0:00:00.351445231 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<queue1> completed state change to P=
AUSED
0:00:00.351450563 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<queue1> notifying about state-=
changed PLAYING to PAUSED (VOID_PENDING pending)
0:00:00.351460996 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'queue1' changed state =
to 3(PAUSED) successfully
0:00:00.351466221 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audiosrc> current PLAYING pending VOID_P=
ENDING, desired next PAUSED
0:00:00.351471976 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audiosrc-actual-src-puls> current PLAYIN=
G pending VOID_PENDING, desired next PAUSED
0:00:00.428607876 236125 0x5622051c82a0 INFO                   pulse pulses=
rc.c:1582:gst_pulsesrc_prepare:<audiosrc-actual-src-puls> maxlength: 38400
0:00:00.428673025 236125 0x5622051c82a0 INFO                   pulse pulses=
rc.c:1583:gst_pulsesrc_prepare:<audiosrc-actual-src-puls> tlength:   -1 (wa=
nted: -1)
0:00:00.428689529 236125 0x5622051c82a0 INFO                   pulse pulses=
rc.c:1585:gst_pulsesrc_prepare:<audiosrc-actual-src-puls> prebuf:    0
0:00:00.428703708 236125 0x5622051c82a0 INFO                   pulse pulses=
rc.c:1586:gst_pulsesrc_prepare:<audiosrc-actual-src-puls> minreq:    -1 (wa=
nted -1)
0:00:00.428717496 236125 0x5622051c82a0 INFO                   pulse pulses=
rc.c:1588:gst_pulsesrc_prepare:<audiosrc-actual-src-puls> fragsize:  1920 (=
wanted 1920)
0:00:00.431547343 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audiosrc-actual-src-puls> completed=
 state change to PAUSED
0:00:00.431595922 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audiosrc-actual-src-puls> noti=
fying about state-changed PLAYING to PAUSED (VOID_PENDING pending)
0:00:00.431643792 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2971:gst_bin_change_state_func:<audiosrc> child 'audiosrc-actual-src-pul=
s' changed state to 3(PAUSED) successfully without preroll
0:00:00.431656476 236125 0x5622051c82a0 INFO              ringbuffer gstaud=
ioringbuffer.c:634:gst_audio_ring_buffer_acquire:<audiosrcringbuffer1> Allo=
cating an array for 20 timestamps
0:00:00.431719074 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audiosrc> completed state change to=
 PAUSED
0:00:00.431752403 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audiosrc> notifying about stat=
e-changed PLAYING to PAUSED (VOID_PENDING pending)
0:00:00.431791447 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2971:gst_bin_change_state_func:<pipeline1> child 'audiosrc' changed stat=
e to 3(PAUSED) successfully without preroll
0:00:00.431808143 236125 0x5622051c82a0 INFO               GST_EVENT gsteve=
nt.c:892:gst_event_new_caps: creating caps event audio/x-raw, format=3D(str=
ing)S16LE, layout=3D(string)interleaved, rate=3D(int)48000, channels=3D(int=
)2, channel-mask=3D(bitmask)0x0000000000000003
0:00:00.431824852 236125 0x562204e5c670 INFO                pipeline gstpip=
eline.c:533:gst_pipeline_change_state:<pipeline1> pipeline is live
0:00:00.431867477 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2778:gst_element_continue_state:<pipeline1> committing state from PA=
USED to PAUSED, pending READY, next READY
0:00:00.431896846 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<pipeline1> notifying about sta=
te-changed PAUSED to PAUSED (READY pending)
0:00:00.431929818 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2786:gst_element_continue_state:<pipeline1> continue state change PA=
USED to READY, final READY
0:00:00.431992689 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<appsink> current READY pending PAUSED, d=
esired next READY
0:00:00.432094648 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<appsink> completed state change to =
READY
0:00:00.432132079 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<appsink> notifying about state=
-changed READY to READY (VOID_PENDING pending)
0:00:00.432170613 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'appsink' changed state=
 to 2(READY) successfully
0:00:00.432213522 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audioresample1> current PAUSED pending V=
OID_PENDING, desired next READY
0:00:00.432264919 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audioresample1> completed state cha=
nge to READY
0:00:00.432295471 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audioresample1> notifying abou=
t state-changed PAUSED to READY (VOID_PENDING pending)
0:00:00.432331363 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'audioresample1' change=
d state to 2(READY) successfully
0:00:00.432354822 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audioconvert1> current PAUSED pending VO=
ID_PENDING, desired next READY
0:00:00.432514924 236125 0x56220502d2a0 INFO           basetransform gstbas=
etransform.c:1326:gst_base_transform_setcaps:<audioconvert1> reuse caps
0:00:00.432605287 236125 0x56220502d2a0 INFO         audio-converter audio-=
converter.c:1358:gst_audio_converter_new: unitsizes: 4 -> 4
0:00:00.432627561 236125 0x56220502d2a0 INFO         audio-converter audio-=
converter.c:727:chain_unpack: unpack format S16LE to S16LE
0:00:00.432667448 236125 0x56220502d2a0 INFO         audio-converter audio-=
converter.c:869:chain_mix: mix format S16LE, passthrough 1, in_channels 2, =
out_channels 2
0:00:00.432684228 236125 0x56220502d2a0 INFO         audio-converter audio-=
converter.c:963:chain_quantize: depth in 16, out 16
0:00:00.432696018 236125 0x56220502d2a0 INFO         audio-converter audio-=
converter.c:975:chain_quantize: using no dither and noise shaping
0:00:00.432710100 236125 0x56220502d2a0 INFO         audio-converter audio-=
converter.c:1032:chain_pack: pack format S16LE to S16LE
0:00:00.432721078 236125 0x56220502d2a0 INFO         audio-converter audio-=
converter.c:1386:gst_audio_converter_new: same formats, same layout, no res=
ampler and passthrough mixing -> passthrough
0:00:00.432754489 236125 0x56220502d2a0 INFO               GST_EVENT gsteve=
nt.c:892:gst_event_new_caps: creating caps event audio/x-raw, format=3D(str=
ing)S16LE, layout=3D(string)interleaved, rate=3D(int)48000, channels=3D(int=
)2, channel-mask=3D(bitmask)0x0000000000000003
0:00:00.432790074 236125 0x56220502d2a0 INFO               GST_EVENT gstpad=
.c:5946:gst_pad_send_event_unchecked:<audioconvert1:sink> Received event on=
 flushing pad. Discarding
0:00:00.432806199 236125 0x56220502d2a0 WARN                GST_PADS gstpad=
.c:4351:gst_pad_peer_query:<queue1:src> could not send sticky events
0:00:00.432875645 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audioconvert1> completed state chan=
ge to READY
0:00:00.432934732 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audioconvert1> notifying about=
 state-changed PAUSED to READY (VOID_PENDING pending)
0:00:00.432972707 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'audioconvert1' changed=
 state to 2(READY) successfully
0:00:00.433002357 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<queue1> current PAUSED pending VOID_PEND=
ING, desired next READY
0:00:00.433092135 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<queue1> completed state change to R=
EADY
0:00:00.433115265 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<queue1> notifying about state-=
changed PAUSED to READY (VOID_PENDING pending)
0:00:00.433138711 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'queue1' changed state =
to 2(READY) successfully
0:00:00.433225313 236125 0x5622051c82a0 INFO                 basesrc gstbas=
esrc.c:2913:gst_base_src_loop:<audiosrc-actual-src-puls> pausing after gst_=
base_src_get_range() =3D flushing
0:00:00.433328451 236125 0x562204e5c670 INFO              ringbuffer gstaud=
ioringbuffer.c:728:gst_audio_ring_buffer_release:<audiosrcringbuffer1> Free=
ing timestamp buffer, 20 entries
0:00:00.433641247 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audiosrc-actual-src-puls> completed=
 state change to READY
0:00:00.433709169 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audiosrc-actual-src-puls> noti=
fying about state-changed PAUSED to READY (VOID_PENDING pending)
0:00:00.433746772 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<audiosrc> child 'audiosrc-actual-src-pul=
s' changed state to 2(READY) successfully
0:00:00.433777182 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audiosrc> completed state change to=
 READY
0:00:00.433794785 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audiosrc> notifying about stat=
e-changed PAUSED to READY (VOID_PENDING pending)
0:00:00.433827385 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'audiosrc' changed stat=
e to 2(READY) successfully
0:00:00.433860062 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<pipeline1> completed state change t=
o READY
0:00:00.433887440 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<pipeline1> notifying about sta=
te-changed PAUSED to READY (VOID_PENDING pending)
(spicy:236125): GSpice-DEBUG: 13:06:41.001: ../spice-gtk-0.41/src/spice-gst=
audio.c:763 (record) volume at 0 is 65535 (100,00%)
(spicy:236125): GSpice-DEBUG: 13:06:41.002: ../spice-gtk-0.41/src/spice-gst=
audio.c:763 (record) volume at 1 is 65535 (100,00%)
(spicy:236125): GSpice-DEBUG: 13:06:41.002: ../spice-gtk-0.41/src/channel-m=
ain.c:1290 audio_record_volume_info_cb mute=3Dno nchannels=3D2 volume[0]=3D=
65535
(spicy:236125): GSpice-DEBUG: 13:06:41.003: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2763 display-2:0: Open coroutine starting 0x5622053e0410
(spicy:236125): GSpice-DEBUG: 13:06:41.003: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2587 display-2:0: Started background coroutine 0x5622053e01e0
(spicy:236125): GSpice-DEBUG: 13:06:41.003: ../spice-gtk-0.41/src/spice-ses=
sion.c:2267 display-2:0: Using plain text, port 5912
(spicy:236125): GSpice-DEBUG: 13:06:41.003: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2763 usbredir-9:1: Open coroutine starting 0x5622053ec3f0
(spicy:236125): GSpice-DEBUG: 13:06:41.003: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2587 usbredir-9:1: Started background coroutine 0x5622053ec1c0
(spicy:236125): GSpice-DEBUG: 13:06:41.003: ../spice-gtk-0.41/src/spice-ses=
sion.c:2267 usbredir-9:1: Using plain text, port 5912
(spicy:236125): GSpice-DEBUG: 13:06:41.003: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2763 usbredir-9:0: Open coroutine starting 0x5622053ec700
(spicy:236125): GSpice-DEBUG: 13:06:41.003: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2587 usbredir-9:0: Started background coroutine 0x5622053ec4d0
(spicy:236125): GSpice-DEBUG: 13:06:41.003: ../spice-gtk-0.41/src/spice-ses=
sion.c:2267 usbredir-9:0: Using plain text, port 5912
(spicy:236125): GSpice-DEBUG: 13:06:41.003: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2763 playback-5:0: Open coroutine starting 0x5622053ecd20
(spicy:236125): GSpice-DEBUG: 13:06:41.003: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2587 playback-5:0: Started background coroutine 0x5622053ecaf0
(spicy:236125): GSpice-DEBUG: 13:06:41.003: ../spice-gtk-0.41/src/spice-ses=
sion.c:2267 playback-5:0: Using plain text, port 5912
(spicy:236125): GSpice-DEBUG: 13:06:41.003: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2763 record-6:0: Open coroutine starting 0x5622053eca10
(spicy:236125): GSpice-DEBUG: 13:06:41.003: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2587 record-6:0: Started background coroutine 0x5622053ec7e0
(spicy:236125): GSpice-DEBUG: 13:06:41.003: ../spice-gtk-0.41/src/spice-ses=
sion.c:2267 record-6:0: Using plain text, port 5912
(spicy:236125): GSpice-DEBUG: 13:06:41.004: ../spice-gtk-0.41/src/spice-ses=
sion.c:2198 open host localhost:5912
(spicy:236125): GSpice-DEBUG: 13:06:41.004: ../spice-gtk-0.41/src/spice-ses=
sion.c:2120 display-2:0: connecting 0x7f41f27fcf30...
(spicy:236125): GSpice-DEBUG: 13:06:41.004: ../spice-gtk-0.41/src/spice-ses=
sion.c:2198 open host localhost:5912
(spicy:236125): GSpice-DEBUG: 13:06:41.004: ../spice-gtk-0.41/src/spice-ses=
sion.c:2120 usbredir-9:1: connecting 0x7f41f17fcf30...
(spicy:236125): GSpice-DEBUG: 13:06:41.004: ../spice-gtk-0.41/src/spice-ses=
sion.c:2198 open host localhost:5912
(spicy:236125): GSpice-DEBUG: 13:06:41.004: ../spice-gtk-0.41/src/spice-ses=
sion.c:2120 usbredir-9:0: connecting 0x7f41cfffff30...
(spicy:236125): GSpice-DEBUG: 13:06:41.004: ../spice-gtk-0.41/src/spice-ses=
sion.c:2198 open host localhost:5912
(spicy:236125): GSpice-DEBUG: 13:06:41.004: ../spice-gtk-0.41/src/spice-ses=
sion.c:2120 playback-5:0: connecting 0x7f41ceffff30...
(spicy:236125): GSpice-DEBUG: 13:06:41.004: ../spice-gtk-0.41/src/spice-ses=
sion.c:2198 open host localhost:5912
(spicy:236125): GSpice-DEBUG: 13:06:41.004: ../spice-gtk-0.41/src/spice-ses=
sion.c:2120 record-6:0: connecting 0x7f41cdffff30...
(spicy:236125): GSpice-DEBUG: 13:06:41.006: ../spice-gtk-0.41/src/spice-ses=
sion.c:2104 display-2:0: connect ready
(spicy:236125): GSpice-DEBUG: 13:06:41.007: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1415 display-2:0: channel type 2 id 0 num common caps 1 num caps 1
(spicy:236125): GSpice-DEBUG: 13:06:41.007: ../spice-gtk-0.41/src/spice-ses=
sion.c:2104 usbredir-9:1: connect ready
(spicy:236125): GSpice-DEBUG: 13:06:41.007: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1415 usbredir-9:1: channel type 9 id 1 num common caps 1 num caps 1
(spicy:236125): GSpice-DEBUG: 13:06:41.007: ../spice-gtk-0.41/src/spice-ses=
sion.c:2104 usbredir-9:0: connect ready
(spicy:236125): GSpice-DEBUG: 13:06:41.007: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1415 usbredir-9:0: channel type 9 id 0 num common caps 1 num caps 1
(spicy:236125): GSpice-DEBUG: 13:06:41.007: ../spice-gtk-0.41/src/spice-ses=
sion.c:2104 playback-5:0: connect ready
(spicy:236125): GSpice-DEBUG: 13:06:41.007: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1415 playback-5:0: channel type 5 id 0 num common caps 1 num caps 1
(spicy:236125): GSpice-DEBUG: 13:06:41.007: ../spice-gtk-0.41/src/spice-ses=
sion.c:2104 record-6:0: connect ready
(spicy:236125): GSpice-DEBUG: 13:06:41.007: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1415 record-6:0: channel type 6 id 0 num common caps 1 num caps 1
(spicy:236125): GSpice-DEBUG: 13:06:41.041: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1441 record-6:0: Peer version: 2:2
(spicy:236125): GSpice-DEBUG: 13:06:41.041: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1999 record-6:0: spice_channel_recv_link_msg: 2 caps
(spicy:236125): GSpice-DEBUG: 13:06:41.041: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2013 record-6:0: got remote common caps:
(spicy:236125): GSpice-DEBUG: 13:06:41.041: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1949 =090:0xB
(spicy:236125): GSpice-DEBUG: 13:06:41.041: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2020 record-6:0: got remote channel caps:
(spicy:236125): GSpice-DEBUG: 13:06:41.041: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1949 =090:0x6
(spicy:236125): GSpice-DEBUG: 13:06:41.041: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 0 in 0xB: yes
(spicy:236125): GSpice-DEBUG: 13:06:41.041: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 2 in 0xB: no
(spicy:236125): GSpice-DEBUG: 13:06:41.041: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 1 in 0xB: yes
(spicy:236125): GSpice-DEBUG: 13:06:41.042: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 3 in 0xB: yes
(spicy:236125): GSpice-DEBUG: 13:06:41.042: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2052 record-6:0: use mini header: 1
(spicy:236125): GSpice-DEBUG: 13:06:41.048: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1441 playback-5:0: Peer version: 2:2
(spicy:236125): GSpice-DEBUG: 13:06:41.048: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1999 playback-5:0: spice_channel_recv_link_msg: 2 caps
(spicy:236125): GSpice-DEBUG: 13:06:41.048: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2013 playback-5:0: got remote common caps:
(spicy:236125): GSpice-DEBUG: 13:06:41.048: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1949 =090:0xB
(spicy:236125): GSpice-DEBUG: 13:06:41.048: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2020 playback-5:0: got remote channel caps:
(spicy:236125): GSpice-DEBUG: 13:06:41.048: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1949 =090:0xA
(spicy:236125): GSpice-DEBUG: 13:06:41.048: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 0 in 0xB: yes
(spicy:236125): GSpice-DEBUG: 13:06:41.048: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 2 in 0xB: no
(spicy:236125): GSpice-DEBUG: 13:06:41.048: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 1 in 0xB: yes
(spicy:236125): GSpice-DEBUG: 13:06:41.050: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 3 in 0xB: yes
(spicy:236125): GSpice-DEBUG: 13:06:41.050: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2052 playback-5:0: use mini header: 1
(spicy:236125): GSpice-DEBUG: 13:06:41.053: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1441 display-2:0: Peer version: 2:2
(spicy:236125): GSpice-DEBUG: 13:06:41.053: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1999 display-2:0: spice_channel_recv_link_msg: 2 caps
(spicy:236125): GSpice-DEBUG: 13:06:41.053: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2013 display-2:0: got remote common caps:
(spicy:236125): GSpice-DEBUG: 13:06:41.053: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1949 =090:0xB
(spicy:236125): GSpice-DEBUG: 13:06:41.053: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2020 display-2:0: got remote channel caps:
(spicy:236125): GSpice-DEBUG: 13:06:41.053: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1949 =090:0x1052
(spicy:236125): GSpice-DEBUG: 13:06:41.054: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 0 in 0xB: yes
(spicy:236125): GSpice-DEBUG: 13:06:41.054: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 2 in 0xB: no
(spicy:236125): GSpice-DEBUG: 13:06:41.054: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 1 in 0xB: yes
(spicy:236125): GSpice-DEBUG: 13:06:41.055: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 3 in 0xB: yes
(spicy:236125): GSpice-DEBUG: 13:06:41.055: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2052 display-2:0: use mini header: 1
(spicy:236125): GSpice-DEBUG: 13:06:41.055: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1350 record-6:0: channel up, state 3
(spicy:236125): GSpice-DEBUG: 13:06:41.055: ../spice-gtk-0.41/src/spice-gst=
audio.c:445 record volume changed to 65535 (100,00)
(spicy:236125): GSpice-DEBUG: 13:06:41.055: ../spice-gtk-0.41/src/spice-gst=
audio.c:477 record mute changed to 0
(spicy:236125): GSpice-DEBUG: 13:06:41.095: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1441 usbredir-9:1: Peer version: 2:2
(spicy:236125): GSpice-DEBUG: 13:06:41.096: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1999 usbredir-9:1: spice_channel_recv_link_msg: 2 caps
(spicy:236125): GSpice-DEBUG: 13:06:41.096: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2013 usbredir-9:1: got remote common caps:
(spicy:236125): GSpice-DEBUG: 13:06:41.096: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1949 =090:0xB
(spicy:236125): GSpice-DEBUG: 13:06:41.096: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2020 usbredir-9:1: got remote channel caps:
(spicy:236125): GSpice-DEBUG: 13:06:41.096: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1949 =090:0x1
(spicy:236125): GSpice-DEBUG: 13:06:41.096: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 0 in 0xB: yes
(spicy:236125): GSpice-DEBUG: 13:06:41.096: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 2 in 0xB: no
(spicy:236125): GSpice-DEBUG: 13:06:41.096: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 1 in 0xB: yes
(spicy:236125): GSpice-DEBUG: 13:06:41.097: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 3 in 0xB: yes
(spicy:236125): GSpice-DEBUG: 13:06:41.097: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2052 usbredir-9:1: use mini header: 1
(spicy:236125): GSpice-DEBUG: 13:06:41.097: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1441 usbredir-9:0: Peer version: 2:2
(spicy:236125): GSpice-DEBUG: 13:06:41.097: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1999 usbredir-9:0: spice_channel_recv_link_msg: 2 caps
(spicy:236125): GSpice-DEBUG: 13:06:41.097: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2013 usbredir-9:0: got remote common caps:
(spicy:236125): GSpice-DEBUG: 13:06:41.097: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1949 =090:0xB
(spicy:236125): GSpice-DEBUG: 13:06:41.097: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2020 usbredir-9:0: got remote channel caps:
(spicy:236125): GSpice-DEBUG: 13:06:41.097: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1949 =090:0x1
(spicy:236125): GSpice-DEBUG: 13:06:41.097: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 0 in 0xB: yes
(spicy:236125): GSpice-DEBUG: 13:06:41.097: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 2 in 0xB: no
(spicy:236125): GSpice-DEBUG: 13:06:41.097: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 1 in 0xB: yes
(spicy:236125): GSpice-DEBUG: 13:06:41.098: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 3 in 0xB: yes
(spicy:236125): GSpice-DEBUG: 13:06:41.098: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2052 usbredir-9:0: use mini header: 1
(spicy:236125): GSpice-DEBUG: 13:06:41.099: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1350 playback-5:0: channel up, state 3
(spicy:236125): GSpice-DEBUG: 13:06:41.099: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1350 display-2:0: channel up, state 3
(spicy:236125): GSpice-DEBUG: 13:06:41.099: ../spice-gtk-0.41/src/channel-d=
isplay.c:1128 display-2:0: spice_display_channel_up: cache_size 83886080, g=
lz_window_size 12582912 (bytes)
(spicy:236125): GSpice-DEBUG: 13:06:41.099: ../spice-gtk-0.41/src/channel-p=
layback.c:340 playback-5:0: playback_handle_mode: time 218941180 mode 3 dat=
a 0x56220544e676 size 0
(spicy:236125): GSpice-DEBUG: 13:06:41.099: ../spice-gtk-0.41/src/spice-gst=
audio.c:372 playback volume changed to 65535 (100,00)
(spicy:236125): GSpice-DEBUG: 13:06:41.099: ../spice-gtk-0.41/src/spice-gst=
audio.c:404 playback mute changed to 0
(spicy:236125): GSpice-DEBUG: 13:06:41.107: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1350 usbredir-9:1: channel up, state 3
(spicy:236125): GSpice-DEBUG: 13:06:41.107: ../spice-gtk-0.41/src/usb-backe=
nd.c:1349 spice_usb_backend_channel_flush_writes 0x5622053547a0 is up
(spicy:236125): GSpice-DEBUG: 13:06:41.107: ../spice-gtk-0.41/src/usb-backe=
nd.c:697 usbredir_write_callback ch 0x5622053547a0, 80 bytes
(spicy:236125): GSpice-DEBUG: 13:06:41.107: ../spice-gtk-0.41/src/usb-backe=
nd.c:833 spice_usb_backend_return_write_data ch 0x5622053547a0 -> parser
(spicy:236125): GSpice-DEBUG: 13:06:41.107: ../spice-gtk-0.41/src/usb-backe=
nd.c:652 usbredir_read_callback ch 0x5622053547a0, 12 bytes
(spicy:236125): GSpice-DEBUG: 13:06:41.107: ../spice-gtk-0.41/src/usb-backe=
nd.c:652 usbredir_read_callback ch 0x5622053547a0, 64 bytes
(spicy:236125): GSpice-DEBUG: 13:06:41.107: ../spice-gtk-0.41/src/usb-backe=
nd.c:652 usbredir_read_callback ch 0x5622053547a0, 4 bytes
(spicy:236125): GSpice-DEBUG: 13:06:41.107: ../spice-gtk-0.41/src/usb-backe=
nd.c:652 usbredir_read_callback ch 0x5622053547a0, 0 bytes
(spicy:236125): GSpice-DEBUG: 13:06:41.107: ../spice-gtk-0.41/src/usb-backe=
nd.c:652 usbredir_read_callback ch 0x5622053547a0, 12 bytes
(spicy:236125): GSpice-DEBUG: 13:06:41.107: ../spice-gtk-0.41/src/usb-backe=
nd.c:652 usbredir_read_callback ch 0x5622053547a0, 64 bytes
(spicy:236125): GSpice-DEBUG: 13:06:41.107: ../spice-gtk-0.41/src/usb-backe=
nd.c:652 usbredir_read_callback ch 0x5622053547a0, 4 bytes
(spicy:236125): GSpice-DEBUG: 13:06:41.107: ../spice-gtk-0.41/src/usb-backe=
nd.c:1064 usbredir_hello 0x5622053547a0 not attached=20
(spicy:236125): GSpice-DEBUG: 13:06:41.107: ../spice-gtk-0.41/src/usb-backe=
nd.c:652 usbredir_read_callback ch 0x5622053547a0, 0 bytes
(spicy:236125): GSpice-DEBUG: 13:06:41.108: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1350 usbredir-9:0: channel up, state 3
(spicy:236125): GSpice-DEBUG: 13:06:41.108: ../spice-gtk-0.41/src/usb-backe=
nd.c:1349 spice_usb_backend_channel_flush_writes 0x56220536a4c0 is up
(spicy:236125): GSpice-DEBUG: 13:06:41.108: ../spice-gtk-0.41/src/usb-backe=
nd.c:697 usbredir_write_callback ch 0x56220536a4c0, 80 bytes
(spicy:236125): GSpice-DEBUG: 13:06:41.108: ../spice-gtk-0.41/src/usb-backe=
nd.c:833 spice_usb_backend_return_write_data ch 0x56220536a4c0 -> parser
(spicy:236125): GSpice-DEBUG: 13:06:41.108: ../spice-gtk-0.41/src/usb-backe=
nd.c:652 usbredir_read_callback ch 0x56220536a4c0, 12 bytes
(spicy:236125): GSpice-DEBUG: 13:06:41.108: ../spice-gtk-0.41/src/usb-backe=
nd.c:652 usbredir_read_callback ch 0x56220536a4c0, 64 bytes
(spicy:236125): GSpice-DEBUG: 13:06:41.108: ../spice-gtk-0.41/src/usb-backe=
nd.c:652 usbredir_read_callback ch 0x56220536a4c0, 4 bytes
(spicy:236125): GSpice-DEBUG: 13:06:41.108: ../spice-gtk-0.41/src/usb-backe=
nd.c:652 usbredir_read_callback ch 0x56220536a4c0, 0 bytes
(spicy:236125): GSpice-DEBUG: 13:06:41.108: ../spice-gtk-0.41/src/usb-backe=
nd.c:652 usbredir_read_callback ch 0x56220536a4c0, 12 bytes
(spicy:236125): GSpice-DEBUG: 13:06:41.108: ../spice-gtk-0.41/src/usb-backe=
nd.c:652 usbredir_read_callback ch 0x56220536a4c0, 64 bytes
(spicy:236125): GSpice-DEBUG: 13:06:41.108: ../spice-gtk-0.41/src/usb-backe=
nd.c:652 usbredir_read_callback ch 0x56220536a4c0, 4 bytes
(spicy:236125): GSpice-DEBUG: 13:06:41.108: ../spice-gtk-0.41/src/usb-backe=
nd.c:1064 usbredir_hello 0x56220536a4c0 not attached=20
(spicy:236125): GSpice-DEBUG: 13:06:41.108: ../spice-gtk-0.41/src/usb-backe=
nd.c:652 usbredir_read_callback ch 0x56220536a4c0, 0 bytes
(spicy:236125): GSpice-DEBUG: 13:06:41.139: ../spice-gtk-0.41/src/channel-d=
isplay.c:1969 surface flags: 1
(spicy:236125): GSpice-DEBUG: 13:06:41.139: ../spice-gtk-0.41/src/channel-d=
isplay.c:1007 display-2:0: Create primary canvas
(spicy:236125): GSpice-DEBUG: 13:06:41.139: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 1 in 0x1052: yes
(spicy:236125): GSpice-DEBUG: 13:06:41.244: ../spice-gtk-0.41/src/channel-d=
isplay.c:2039 display-2:0: received new monitors config from guest: n: 1/1
(spicy:236125): GSpice-DEBUG: 13:06:41.244: ../spice-gtk-0.41/src/channel-d=
isplay.c:2057 display-2:0: monitor id: 0, surface id: 0, +0+0-2560x1440
(spicy:236125): GSpice-DEBUG: 13:06:41.256: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 6 in 0x1052: yes
(spicy:236125): GSpice-DEBUG: 13:06:41.256: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 12 in 0x1052: yes
(spicy:236125): GSpice-DEBUG: 13:06:41.260: ../spice-gtk-0.41/src/spice-wid=
get.c:1389 0:0 recalc geom: guest +0+0:0x0, window 0x0, zoom 1, scale 1, di=
m 0x0mm
(spicy:236125): GSpice-DEBUG: 13:06:41.260: ../spice-gtk-0.41/src/spice-wid=
get.c:1389 0:0 recalc geom: guest +0+0:0x0, window 0x0, zoom 0, scale 1, di=
m 0x0mm
(spicy:236125): GSpice-DEBUG: 13:06:41.260: ../spice-gtk-0.41/src/spice-wid=
get.c:1389 0:0 recalc geom: guest +0+0:0x0, window 0x0, zoom 0, scale 1, di=
m 0x0mm
(spicy:236125): GSpice-DEBUG: 13:06:41.260: ../spice-gtk-0.41/src/spice-wid=
get.c:1389 0:0 recalc geom: guest +0+0:0x0, window 0x0, zoom 0, scale 1, di=
m 0x0mm
(spicy:236125): GSpice-DEBUG: 13:06:41.260: ../spice-gtk-0.41/src/spice-wid=
get.c:1389 0:0 recalc geom: guest +0+0:0x0, window 0x0, zoom 0, scale 1, di=
m 0x0mm
(spicy:236125): GSpice-DEBUG: 13:06:41.260: ../spice-gtk-0.41/src/spice-wid=
get.c:372 0:0 keypress-delay is set to 100 ms
(spicy:236125): GSpice-DEBUG: 13:06:41.260: ../spice-gtk-0.41/src/spice-wid=
get.c:1389 0:0 recalc geom: guest +0+0:0x0, window 0x0, zoom 1, scale 1, di=
m 0x0mm
(spicy:236125): GSpice-DEBUG: 13:06:41.260: ../spice-gtk-0.41/src/spice-wid=
get.c:1389 0:0 recalc geom: guest +0+0:0x0, window 0x0, zoom 1, scale 1, di=
m 0x0mm
(spicy:236125): GSpice-DEBUG: 13:06:41.260: ../spice-gtk-0.41/src/spice-wid=
get.c:2670 0:0 mouse mode 2 (client)
(spicy:236125): GSpice-DEBUG: 13:06:41.260: ../spice-gtk-0.41/src/channel-d=
isplay.c:561 display-2:0: get primary 0x7f41cc1ef010
(spicy:236125): GSpice-DEBUG: 13:06:41.260: ../spice-gtk-0.41/src/spice-wid=
get.c:316 0:0 update monitor area
(spicy:236125): GSpice-DEBUG: 13:06:41.260: ../spice-gtk-0.41/src/spice-wid=
get.c:2697 0:0 update area +0+0 2560x1440
(spicy:236125): GSpice-DEBUG: 13:06:41.260: ../spice-gtk-0.41/src/spice-wid=
get.c:2723 0:0 primary: 2560x1440
(spicy:236125): GSpice-DEBUG: 13:06:41.260: ../spice-gtk-0.41/src/spice-wid=
get.c:1389 0:0 recalc geom: guest +0+0:2560x1440, window 0x0, zoom 1, scale=
 1, dim 0x0mm
(spicy:236125): GSpice-DEBUG: 13:06:41.260: ../spice-gtk-0.41/src/spice-wid=
get.c:2994 0:0 widget mark: 0, display 0x562205444d50
(spicy:236125): GSpice-DEBUG: 13:06:41.260: ../spice-gtk-0.41/src/spice-wid=
get.c:1389 0:0 recalc geom: guest +0+0:2560x1440, window 0x0, zoom 1, scale=
 1, dim 0x0mm
(spicy:236125): GSpice-DEBUG: 13:06:41.260: ../spice-gtk-0.41/src/spice-wid=
get.c:1389 0:0 recalc geom: guest +0+0:2560x1440, window 0x0, zoom 1, scale=
 1, dim 0x0mm
(spicy:236125): GSpice-DEBUG: 13:06:41.260: ../spice-gtk-0.41/src/spice-wid=
get.c:1389 0:0 recalc geom: guest +0+0:2560x1440, window 0x0, zoom 1, scale=
 1, dim 0x0mm
(spicy:236125): GSpice-DEBUG: 13:06:41.260: ../spice-gtk-0.41/tools/spicy.c=
:422 menu_cb_bool_prop: grab-keyboard =3D yes
(spicy:236125): GSpice-DEBUG: 13:06:41.260: ../spice-gtk-0.41/tools/spicy.c=
:422 menu_cb_bool_prop: grab-mouse =3D yes
(spicy:236125): GSpice-DEBUG: 13:06:41.260: ../spice-gtk-0.41/tools/spicy.c=
:422 menu_cb_bool_prop: resize-guest =3D yes
(spicy:236125): GSpice-DEBUG: 13:06:41.260: ../spice-gtk-0.41/src/spice-wid=
get.c:1389 0:0 recalc geom: guest +0+0:2560x1440, window 0x0, zoom 1, scale=
 1, dim 0x0mm
(spicy:236125): GSpice-DEBUG: 13:06:41.260: ../spice-gtk-0.41/tools/spicy.c=
:422 menu_cb_bool_prop: auto-clipboard =3D yes
(spicy:236125): GSpice-DEBUG: 13:06:41.260: ../spice-gtk-0.41/tools/spicy.c=
:422 menu_cb_bool_prop: sync-modifiers =3D yes
(spicy:236125): GSpice-DEBUG: 13:06:41.260: ../spice-gtk-0.41/tools/spicy.c=
:1451 add display monitor 0:0
(spicy:236125): GSpice-DEBUG: 13:06:41.278: ../spice-gtk-0.41/src/spice-wid=
get.c:1389 0:0 recalc geom: guest +0+0:2560x1440, window 640x480, zoom 1, s=
cale 1, dim 0x0mm
(spicy:236125): GSpice-DEBUG: 13:06:41.279: ../spice-gtk-0.41/src/channel-d=
isplay.c:1183 display-2:0: display_handle_mark
(spicy:236125): GSpice-DEBUG: 13:06:41.283: ../spice-gtk-0.41/src/spice-wid=
get.c:1977 0:0 focus_in_event
(spicy:236125): GSpice-DEBUG: 13:06:41.283: ../spice-gtk-0.41/src/spice-wid=
get.c:1636 0:0 release_keys
(spicy:236125): GSpice-DEBUG: 13:06:41.283: ../spice-gtk-0.41/src/spice-gtk=
-session.c:165 inputs-3:0: client_modifiers:0x2, guest_modifiers:0x0
(spicy:236125): GSpice-DEBUG: 13:06:41.286: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2763 inputs-3:0: Open coroutine starting 0x5622053ea6c0
(spicy:236125): GSpice-DEBUG: 13:06:41.286: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2587 inputs-3:0: Started background coroutine 0x5622053ea490
(spicy:236125): GSpice-DEBUG: 13:06:41.286: ../spice-gtk-0.41/src/spice-ses=
sion.c:2267 inputs-3:0: Using plain text, port 5912
(spicy:236125): GSpice-DEBUG: 13:06:41.286: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2763 cursor-4:0: Open coroutine starting 0x5622053ea3c0
(spicy:236125): GSpice-DEBUG: 13:06:41.286: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2587 cursor-4:0: Started background coroutine 0x5622053ea190
(spicy:236125): GSpice-DEBUG: 13:06:41.286: ../spice-gtk-0.41/src/spice-ses=
sion.c:2267 cursor-4:0: Using plain text, port 5912
(spicy:236125): GSpice-DEBUG: 13:06:41.286: ../spice-gtk-0.41/src/spice-wid=
get.c:2994 0:0 widget mark: 1, display 0x562205444d50
(spicy:236125): GSpice-DEBUG: 13:06:41.286: ../spice-gtk-0.41/src/spice-ses=
sion.c:2198 open host localhost:5912
(spicy:236125): GSpice-DEBUG: 13:06:41.286: ../spice-gtk-0.41/src/spice-ses=
sion.c:2120 inputs-3:0: connecting 0x7f41cb12ef30...
(spicy:236125): GSpice-DEBUG: 13:06:41.286: ../spice-gtk-0.41/src/spice-ses=
sion.c:2198 open host localhost:5912
(spicy:236125): GSpice-DEBUG: 13:06:41.286: ../spice-gtk-0.41/src/spice-ses=
sion.c:2120 cursor-4:0: connecting 0x7f41ca12ef30...
(spicy:236125): GSpice-DEBUG: 13:06:41.286: ../spice-gtk-0.41/src/spice-ses=
sion.c:2104 inputs-3:0: connect ready
(spicy:236125): GSpice-DEBUG: 13:06:41.286: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1415 inputs-3:0: channel type 3 id 0 num common caps 1 num caps 0
(spicy:236125): GSpice-DEBUG: 13:06:41.286: ../spice-gtk-0.41/src/spice-ses=
sion.c:2104 cursor-4:0: connect ready
(spicy:236125): GSpice-DEBUG: 13:06:41.286: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1415 cursor-4:0: channel type 4 id 0 num common caps 1 num caps 0
(spicy:236125): GSpice-DEBUG: 13:06:41.324: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1441 inputs-3:0: Peer version: 2:2
(spicy:236125): GSpice-DEBUG: 13:06:41.324: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1999 inputs-3:0: spice_channel_recv_link_msg: 2 caps
(spicy:236125): GSpice-DEBUG: 13:06:41.324: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2013 inputs-3:0: got remote common caps:
(spicy:236125): GSpice-DEBUG: 13:06:41.324: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1949 =090:0xB
(spicy:236125): GSpice-DEBUG: 13:06:41.324: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2020 inputs-3:0: got remote channel caps:
(spicy:236125): GSpice-DEBUG: 13:06:41.324: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1949 =090:0x1
(spicy:236125): GSpice-DEBUG: 13:06:41.324: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 0 in 0xB: yes
(spicy:236125): GSpice-DEBUG: 13:06:41.324: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 2 in 0xB: no
(spicy:236125): GSpice-DEBUG: 13:06:41.324: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 1 in 0xB: yes
(spicy:236125): GSpice-DEBUG: 13:06:41.325: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 3 in 0xB: yes
(spicy:236125): GSpice-DEBUG: 13:06:41.325: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2052 inputs-3:0: use mini header: 1
(spicy:236125): GSpice-DEBUG: 13:06:41.329: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1441 cursor-4:0: Peer version: 2:2
(spicy:236125): GSpice-DEBUG: 13:06:41.329: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1999 cursor-4:0: spice_channel_recv_link_msg: 1 caps
(spicy:236125): GSpice-DEBUG: 13:06:41.329: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2013 cursor-4:0: got remote common caps:
(spicy:236125): GSpice-DEBUG: 13:06:41.329: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1949 =090:0xB
(spicy:236125): GSpice-DEBUG: 13:06:41.329: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2020 cursor-4:0: got remote channel caps:
(spicy:236125): GSpice-DEBUG: 13:06:41.329: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 0 in 0xB: yes
(spicy:236125): GSpice-DEBUG: 13:06:41.329: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 2 in 0xB: no
(spicy:236125): GSpice-DEBUG: 13:06:41.329: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 1 in 0xB: yes
(spicy:236125): GSpice-DEBUG: 13:06:41.330: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 3 in 0xB: yes
(spicy:236125): GSpice-DEBUG: 13:06:41.330: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2052 cursor-4:0: use mini header: 1
(spicy:236125): GSpice-DEBUG: 13:06:41.333: ../spice-gtk-0.41/src/channel-b=
ase.c:77 main-1:0: spice_channel_handle_notify -- warn!!! #0: keyboard chan=
nel is insecure
(spicy:236125): GSpice-DEBUG: 13:06:41.334: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1350 inputs-3:0: channel up, state 3
(spicy:236125): GSpice-DEBUG: 13:06:41.340: ../spice-gtk-0.41/src/spice-cha=
nnel.c:1350 cursor-4:0: channel up, state 3
(spicy:236125): GSpice-DEBUG: 13:06:41.376: ../spice-gtk-0.41/src/channel-c=
ursor.c:385 cursor-4:0: set_cursor: flags 2, size 16384
(spicy:236125): GSpice-DEBUG: 13:06:41.376: ../spice-gtk-0.41/src/channel-c=
ursor.c:391 cursor-4:0: set_cursor: type alpha(0), 1df001, 64x64
(spicy:236125): GSpice-DEBUG: 13:06:42.810: ../spice-gtk-0.41/src/channel-m=
ain.c:1148 main-1:0: sending new monitors config to guest
(spicy:236125): GSpice-DEBUG: 13:06:42.810: ../spice-gtk-0.41/src/channel-m=
ain.c:1162 main-1:0: monitor #0: 640x480+0+0 @ 32 bpp
(spicy:236125): GSpice-DEBUG: 13:06:42.810: ../spice-gtk-0.41/src/channel-m=
ain.c:1079 #0 +0+0-640x480
(spicy:236125): GSpice-DEBUG: 13:06:43.019: ../spice-gtk-0.41/src/spice-wid=
get.c:1945 0:0 enter_event
(spicy:236125): GSpice-DEBUG: 13:06:43.019: ../spice-gtk-0.41/src/spice-wid=
get.c:889 0:0 grab keyboard
(spicy:236125): GSpice-DEBUG: 13:06:43.020: ../spice-gtk-0.41/src/spice-wid=
get.c:1945 0:0 enter_event
(spicy:236125): GSpice-DEBUG: 13:06:43.053: ../spice-gtk-0.41/src/channel-c=
ursor.c:385 cursor-4:0: set_cursor: flags 2, size 16384
(spicy:236125): GSpice-DEBUG: 13:06:43.053: ../spice-gtk-0.41/src/channel-c=
ursor.c:391 cursor-4:0: set_cursor: type alpha(0), 1df02e, 64x64
(spicy:236125): GSpice-DEBUG: 13:06:43.055: ../spice-gtk-0.41/src/channel-c=
ursor.c:385 cursor-4:0: set_cursor: flags 2, size 16384
(spicy:236125): GSpice-DEBUG: 13:06:43.055: ../spice-gtk-0.41/src/channel-c=
ursor.c:391 cursor-4:0: set_cursor: type alpha(0), 1df02f, 64x64
(spicy:236125): GSpice-DEBUG: 13:06:43.115: ../spice-gtk-0.41/src/channel-c=
ursor.c:385 cursor-4:0: set_cursor: flags 2, size 16384
(spicy:236125): GSpice-DEBUG: 13:06:43.115: ../spice-gtk-0.41/src/channel-c=
ursor.c:391 cursor-4:0: set_cursor: type alpha(0), 1df031, 64x64
(spicy:236125): GSpice-DEBUG: 13:06:43.156: ../spice-gtk-0.41/src/channel-c=
ursor.c:385 cursor-4:0: set_cursor: flags 2, size 16384
(spicy:236125): GSpice-DEBUG: 13:06:43.156: ../spice-gtk-0.41/src/channel-c=
ursor.c:391 cursor-4:0: set_cursor: type alpha(0), 1df032, 64x64
(spicy:236125): GSpice-DEBUG: 13:06:43.199: ../spice-gtk-0.41/src/decode-gl=
z.c:94 glz_decoder_window_resize: array resize 16 -> 32
(spicy:236125): GSpice-DEBUG: 13:06:43.235: ../spice-gtk-0.41/src/channel-c=
ursor.c:385 cursor-4:0: set_cursor: flags 2, size 16384
(spicy:236125): GSpice-DEBUG: 13:06:43.235: ../spice-gtk-0.41/src/channel-c=
ursor.c:391 cursor-4:0: set_cursor: type alpha(0), 1df03c, 64x64
(spicy:236125): GSpice-DEBUG: 13:06:43.249: ../spice-gtk-0.41/src/channel-c=
ursor.c:385 cursor-4:0: set_cursor: flags 2, size 16384
(spicy:236125): GSpice-DEBUG: 13:06:43.249: ../spice-gtk-0.41/src/channel-c=
ursor.c:391 cursor-4:0: set_cursor: type alpha(0), 1df03d, 64x64
(spicy:236125): GSpice-DEBUG: 13:06:43.320: ../spice-gtk-0.41/src/decode-gl=
z.c:94 glz_decoder_window_resize: array resize 32 -> 64
(spicy:236125): GSpice-DEBUG: 13:06:43.567: ../spice-gtk-0.41/src/decode-gl=
z.c:94 glz_decoder_window_resize: array resize 64 -> 128
(spicy:236125): GSpice-DEBUG: 13:06:43.630: ../spice-gtk-0.41/src/decode-gl=
z.c:94 glz_decoder_window_resize: array resize 128 -> 256
(spicy:236125): GSpice-DEBUG: 13:06:43.782: ../spice-gtk-0.41/src/decode-gl=
z.c:94 glz_decoder_window_resize: array resize 256 -> 512
(spicy:236125): GSpice-DEBUG: 13:06:44.258: ../spice-gtk-0.41/src/channel-c=
ursor.c:385 cursor-4:0: set_cursor: flags 2, size 16384
(spicy:236125): GSpice-DEBUG: 13:06:44.258: ../spice-gtk-0.41/src/channel-c=
ursor.c:391 cursor-4:0: set_cursor: type alpha(0), 1df1d1, 64x64
(spicy:236125): GSpice-DEBUG: 13:06:44.315: ../spice-gtk-0.41/src/channel-c=
ursor.c:385 cursor-4:0: set_cursor: flags 2, size 16384
(spicy:236125): GSpice-DEBUG: 13:06:44.315: ../spice-gtk-0.41/src/channel-c=
ursor.c:391 cursor-4:0: set_cursor: type alpha(0), 1df1d6, 64x64
(spicy:236125): GSpice-DEBUG: 13:06:44.342: ../spice-gtk-0.41/src/channel-c=
ursor.c:385 cursor-4:0: set_cursor: flags 2, size 16384
(spicy:236125): GSpice-DEBUG: 13:06:44.342: ../spice-gtk-0.41/src/channel-c=
ursor.c:391 cursor-4:0: set_cursor: type alpha(0), 1df1da, 64x64
(spicy:236125): GSpice-DEBUG: 13:06:44.438: ../spice-gtk-0.41/src/decode-gl=
z.c:94 glz_decoder_window_resize: array resize 512 -> 1024
(spicy:236125): GSpice-DEBUG: 13:06:44.529: ../spice-gtk-0.41/src/channel-c=
ursor.c:385 cursor-4:0: set_cursor: flags 2, size 16384
(spicy:236125): GSpice-DEBUG: 13:06:44.529: ../spice-gtk-0.41/src/channel-c=
ursor.c:391 cursor-4:0: set_cursor: type alpha(0), 1df30c, 64x64
(spicy:236125): GSpice-DEBUG: 13:06:44.569: ../spice-gtk-0.41/src/channel-c=
ursor.c:385 cursor-4:0: set_cursor: flags 2, size 16384
(spicy:236125): GSpice-DEBUG: 13:06:44.569: ../spice-gtk-0.41/src/channel-c=
ursor.c:391 cursor-4:0: set_cursor: type alpha(0), 1df3a5, 64x64
(spicy:236125): GSpice-DEBUG: 13:06:44.596: ../spice-gtk-0.41/src/channel-c=
ursor.c:385 cursor-4:0: set_cursor: flags 2, size 16384
(spicy:236125): GSpice-DEBUG: 13:06:44.596: ../spice-gtk-0.41/src/channel-c=
ursor.c:391 cursor-4:0: set_cursor: type alpha(0), 1df3a6, 64x64
(spicy:236125): GSpice-DEBUG: 13:06:44.629: ../spice-gtk-0.41/src/channel-c=
ursor.c:385 cursor-4:0: set_cursor: flags 2, size 16384
(spicy:236125): GSpice-DEBUG: 13:06:44.629: ../spice-gtk-0.41/src/channel-c=
ursor.c:391 cursor-4:0: set_cursor: type alpha(0), 1df474, 64x64
(spicy:236125): GSpice-DEBUG: 13:06:44.653: ../spice-gtk-0.41/src/decode-gl=
z.c:94 glz_decoder_window_resize: array resize 1024 -> 2048
(spicy:236125): GSpice-DEBUG: 13:06:44.679: ../spice-gtk-0.41/src/channel-c=
ursor.c:385 cursor-4:0: set_cursor: flags 2, size 16384
(spicy:236125): GSpice-DEBUG: 13:06:44.679: ../spice-gtk-0.41/src/channel-c=
ursor.c:391 cursor-4:0: set_cursor: type alpha(0), 1df50f, 64x64
(spicy:236125): GSpice-DEBUG: 13:06:44.687: ../spice-gtk-0.41/src/spice-wid=
get.c:1960 0:0 leave_event
(spicy:236125): GSpice-DEBUG: 13:06:44.687: ../spice-gtk-0.41/src/spice-wid=
get.c:967 0:0 ungrab keyboard
(spicy:236125): GSpice-DEBUG: 13:06:44.688: ../spice-gtk-0.41/src/spice-wid=
get.c:1960 0:0 leave_event
(spicy:236125): GSpice-DEBUG: 13:06:45.052: ../spice-gtk-0.41/src/spice-wid=
get.c:599 0:0 grab notify 0
(spicy:236125): GSpice-DEBUG: 13:06:45.052: ../spice-gtk-0.41/src/spice-wid=
get.c:1636 0:0 release_keys
(spicy:236125): GSpice-DEBUG: 13:06:46.699: ../spice-gtk-0.41/src/spice-wid=
get.c:599 0:0 grab notify 1
(spicy:236125): GSpice-DEBUG: 13:06:46.702: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2981 test cap 12 in 0x1052: yes
(spicy:236125): GSpice-DEBUG: 13:06:46.702: ../spice-gtk-0.41/src/channel-d=
isplay.c:734 display-2:0: changing preferred video codec type to: h264 mjpe=
g vp8 vp9=20
(spicy:236125): GSpice-DEBUG: 13:06:46.817: ../spice-gtk-0.41/src/spice-wid=
get.c:1945 0:0 enter_event
(spicy:236125): GSpice-DEBUG: 13:06:46.817: ../spice-gtk-0.41/src/spice-wid=
get.c:889 0:0 grab keyboard
(spicy:236125): GSpice-DEBUG: 13:06:46.822: ../spice-gtk-0.41/src/spice-wid=
get.c:1945 0:0 enter_event
(spicy:236125): GSpice-DEBUG: 13:06:46.844: ../spice-gtk-0.41/src/channel-c=
ursor.c:385 cursor-4:0: set_cursor: flags 2, size 16384
(spicy:236125): GSpice-DEBUG: 13:06:46.844: ../spice-gtk-0.41/src/channel-c=
ursor.c:391 cursor-4:0: set_cursor: type alpha(0), 1df549, 64x64
(spicy:236125): GSpice-DEBUG: 13:06:46.875: ../spice-gtk-0.41/src/channel-c=
ursor.c:385 cursor-4:0: set_cursor: flags 2, size 16384
(spicy:236125): GSpice-DEBUG: 13:06:46.875: ../spice-gtk-0.41/src/channel-c=
ursor.c:391 cursor-4:0: set_cursor: type alpha(0), 1df54a, 64x64
(spicy:236125): GSpice-DEBUG: 13:06:47.022: ../spice-gtk-0.41/src/channel-c=
ursor.c:385 cursor-4:0: set_cursor: flags 2, size 16384
(spicy:236125): GSpice-DEBUG: 13:06:47.022: ../spice-gtk-0.41/src/channel-c=
ursor.c:391 cursor-4:0: set_cursor: type alpha(0), 1df5fc, 64x64
(spicy:236125): GSpice-DEBUG: 13:06:47.115: ../spice-gtk-0.41/src/channel-c=
ursor.c:385 cursor-4:0: set_cursor: flags 2, size 16384
(spicy:236125): GSpice-DEBUG: 13:06:47.115: ../spice-gtk-0.41/src/channel-c=
ursor.c:391 cursor-4:0: set_cursor: type alpha(0), 1df674, 64x64
(spicy:236125): GSpice-DEBUG: 13:06:47.578: ../spice-gtk-0.41/src/decode-gl=
z.c:94 glz_decoder_window_resize: array resize 2048 -> 4096
(spicy:236125): GSpice-DEBUG: 13:06:47.765: ../spice-gtk-0.41/src/channel-c=
ursor.c:385 cursor-4:0: set_cursor: flags 2, size 16384
(spicy:236125): GSpice-DEBUG: 13:06:47.765: ../spice-gtk-0.41/src/channel-c=
ursor.c:391 cursor-4:0: set_cursor: type alpha(0), 1dff13, 64x64
(spicy:236125): GSpice-DEBUG: 13:06:47.769: ../spice-gtk-0.41/src/channel-c=
ursor.c:385 cursor-4:0: set_cursor: flags 2, size 16384
(spicy:236125): GSpice-DEBUG: 13:06:47.769: ../spice-gtk-0.41/src/channel-c=
ursor.c:391 cursor-4:0: set_cursor: type alpha(0), 1dff14, 64x64
(spicy:236125): GSpice-DEBUG: 13:06:47.821: ../spice-gtk-0.41/src/channel-c=
ursor.c:385 cursor-4:0: set_cursor: flags 2, size 16384
(spicy:236125): GSpice-DEBUG: 13:06:47.821: ../spice-gtk-0.41/src/channel-c=
ursor.c:391 cursor-4:0: set_cursor: type alpha(0), 1dff15, 64x64
(spicy:236125): GSpice-DEBUG: 13:06:47.835: ../spice-gtk-0.41/src/channel-c=
ursor.c:385 cursor-4:0: set_cursor: flags 2, size 16384
(spicy:236125): GSpice-DEBUG: 13:06:47.835: ../spice-gtk-0.41/src/channel-c=
ursor.c:391 cursor-4:0: set_cursor: type alpha(0), 1dff16, 64x64
(spicy:236125): GSpice-DEBUG: 13:06:47.909: ../spice-gtk-0.41/src/channel-c=
ursor.c:385 cursor-4:0: set_cursor: flags 2, size 16384
(spicy:236125): GSpice-DEBUG: 13:06:47.909: ../spice-gtk-0.41/src/channel-c=
ursor.c:391 cursor-4:0: set_cursor: type alpha(0), 1dff17, 64x64
(spicy:236125): GSpice-DEBUG: 13:06:47.913: ../spice-gtk-0.41/src/spice-wid=
get.c:1960 0:0 leave_event
(spicy:236125): GSpice-DEBUG: 13:06:47.913: ../spice-gtk-0.41/src/spice-wid=
get.c:967 0:0 ungrab keyboard
(spicy:236125): GSpice-DEBUG: 13:06:47.914: ../spice-gtk-0.41/src/spice-wid=
get.c:1960 0:0 leave_event
(spicy:236125): GSpice-DEBUG: 13:06:48.280: ../spice-gtk-0.41/src/decode-gl=
z.c:94 glz_decoder_window_resize: array resize 4096 -> 8192
(spicy:236125): GSpice-DEBUG: 13:06:49.332: ../spice-gtk-0.41/src/spice-ses=
sion.c:2027 session: disconnecting 0
(spicy:236125): GSpice-DEBUG: 13:06:49.333: ../spice-gtk-0.41/src/spice-wid=
get.c:3462 0:0 channel_destroy 0
(spicy:236125): GSpice-DEBUG: 13:06:49.333: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2943 inputs-3:0: channel disconnect 0
(spicy:236125): GSpice-DEBUG: 13:06:49.333: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2736 inputs-3:0: Coroutine exit inputs-3:0
(spicy:236125): GSpice-DEBUG: 13:06:49.333: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2926 inputs-3:0: reset=20
(spicy:236125): GSpice-DEBUG: 13:06:49.333: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2874 inputs-3:0: channel reset
(spicy:236125): GSpice-DEBUG: 13:06:49.334: ../spice-gtk-0.41/tools/spicy.c=
:1829 zap audio channel
(spicy:236125): GSpice-DEBUG: 13:06:49.334: ../spice-gtk-0.41/src/spice-wid=
get.c:3462 0:0 channel_destroy 0
(spicy:236125): GSpice-DEBUG: 13:06:49.334: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2943 playback-5:0: channel disconnect 0
(spicy:236125): GSpice-DEBUG: 13:06:49.334: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2736 playback-5:0: Coroutine exit playback-5:0
(spicy:236125): GSpice-DEBUG: 13:06:49.334: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2926 playback-5:0: reset=20
(spicy:236125): GSpice-DEBUG: 13:06:49.334: ../spice-gtk-0.41/src/spice-wid=
get.c:3462 0:0 channel_destroy 0
(spicy:236125): GSpice-DEBUG: 13:06:49.334: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2943 record-6:0: channel disconnect 0
(spicy:236125): GSpice-DEBUG: 13:06:49.334: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2736 record-6:0: Coroutine exit record-6:0
(spicy:236125): GSpice-DEBUG: 13:06:49.334: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2926 record-6:0: reset=20
(spicy:236125): GSpice-DEBUG: 13:06:49.334: ../spice-gtk-0.41/src/spice-wid=
get.c:3462 0:0 channel_destroy 0
(spicy:236125): GSpice-DEBUG: 13:06:49.334: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2943 usbredir-9:0: channel disconnect 0
(spicy:236125): GSpice-DEBUG: 13:06:49.334: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2736 usbredir-9:0: Coroutine exit usbredir-9:0
(spicy:236125): GSpice-DEBUG: 13:06:49.334: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2926 usbredir-9:0: reset=20
(spicy:236125): GSpice-DEBUG: 13:06:49.334: ../spice-gtk-0.41/src/usb-backe=
nd.c:1359 spice_usb_backend_channel_delete >> 0x56220536a4c0
(spicy:236125): GSpice-DEBUG: 13:06:49.334: ../spice-gtk-0.41/src/usb-backe=
nd.c:1375 spice_usb_backend_channel_delete << 0x56220536a4c0
(spicy:236125): GSpice-DEBUG: 13:06:49.334: ../spice-gtk-0.41/src/usb-backe=
nd.c:1303 spice_usb_backend_channel_new >>
(spicy:236125): GSpice-DEBUG: 13:06:49.334: ../spice-gtk-0.41/src/usb-backe=
nd.c:697 usbredir_write_callback ch 0x56220536a4c0, 80 bytes
(spicy:236125): GSpice-DEBUG: 13:06:49.334: ../spice-gtk-0.41/src/usb-backe=
nd.c:1343 spice_usb_backend_channel_new << 0x56220536a4c0
(spicy:236125): GSpice-DEBUG: 13:06:49.334: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2874 usbredir-9:0: channel reset
(spicy:236125): GSpice-DEBUG: 13:06:49.335: ../spice-gtk-0.41/src/spice-wid=
get.c:3462 0:0 channel_destroy 1
(spicy:236125): GSpice-DEBUG: 13:06:49.335: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2943 usbredir-9:1: channel disconnect 0
(spicy:236125): GSpice-DEBUG: 13:06:49.335: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2736 usbredir-9:1: Coroutine exit usbredir-9:1
(spicy:236125): GSpice-DEBUG: 13:06:49.335: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2926 usbredir-9:1: reset=20
(spicy:236125): GSpice-DEBUG: 13:06:49.335: ../spice-gtk-0.41/src/usb-backe=
nd.c:1359 spice_usb_backend_channel_delete >> 0x5622053547a0
(spicy:236125): GSpice-DEBUG: 13:06:49.335: ../spice-gtk-0.41/src/usb-backe=
nd.c:1375 spice_usb_backend_channel_delete << 0x5622053547a0
(spicy:236125): GSpice-DEBUG: 13:06:49.335: ../spice-gtk-0.41/src/usb-backe=
nd.c:1303 spice_usb_backend_channel_new >>
(spicy:236125): GSpice-DEBUG: 13:06:49.335: ../spice-gtk-0.41/src/usb-backe=
nd.c:697 usbredir_write_callback ch 0x562206195a20, 80 bytes
(spicy:236125): GSpice-DEBUG: 13:06:49.335: ../spice-gtk-0.41/src/usb-backe=
nd.c:1343 spice_usb_backend_channel_new << 0x562206195a20
(spicy:236125): GSpice-DEBUG: 13:06:49.335: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2874 usbredir-9:1: channel reset
(spicy:236125): GSpice-DEBUG: 13:06:49.335: ../spice-gtk-0.41/src/spice-wid=
get.c:3462 0:0 channel_destroy 0
(spicy:236125): GSpice-DEBUG: 13:06:49.335: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2943 cursor-4:0: channel disconnect 0
(spicy:236125): GSpice-DEBUG: 13:06:49.335: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2736 cursor-4:0: Coroutine exit cursor-4:0
(spicy:236125): GSpice-DEBUG: 13:06:49.335: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2926 cursor-4:0: reset=20
(spicy:236125): GSpice-DEBUG: 13:06:49.335: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2874 cursor-4:0: channel reset
(spicy:236125): GSpice-DEBUG: 13:06:49.335: ../spice-gtk-0.41/tools/spicy.c=
:1824 zap display channel (#0)
(spicy:236125): GSpice-DEBUG: 13:06:49.335: ../spice-gtk-0.41/src/spice-wid=
get.c:3462 0:0 channel_destroy 0
(spicy:236125): GSpice-DEBUG: 13:06:49.335: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2943 display-2:0: channel disconnect 0
(spicy:236125): GSpice-DEBUG: 13:06:49.335: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2736 display-2:0: Coroutine exit display-2:0
(spicy:236125): GSpice-DEBUG: 13:06:49.335: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2926 display-2:0: reset=20
(spicy:236125): GSpice-DEBUG: 13:06:49.335: ../spice-gtk-0.41/src/channel-d=
isplay.c:1094 display-2:0: keeping existing primary surface, migration or r=
eset
(spicy:236125): GSpice-DEBUG: 13:06:49.335: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2874 display-2:0: channel reset
(spicy:236125): GSpice-DEBUG: 13:06:49.336: ../spice-gtk-0.41/src/spice-ses=
sion.c:2370 main-1:0: the session lost the main channel
(spicy:236125): GSpice-DEBUG: 13:06:49.336: ../spice-gtk-0.41/tools/spicy.c=
:1817 zap main channel
(spicy:236125): GSpice-DEBUG: 13:06:49.336: ../spice-gtk-0.41/src/spice-wid=
get.c:3462 0:0 channel_destroy 0
(spicy:236125): GSpice-DEBUG: 13:06:49.336: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2943 main-1:0: channel disconnect 0
(spicy:236125): GSpice-DEBUG: 13:06:49.336: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2736 main-1:0: Coroutine exit main-1:0
(spicy:236125): GSpice-DEBUG: 13:06:49.336: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2926 main-1:0: reset=20
(spicy:236125): GSpice-DEBUG: 13:06:49.336: ../spice-gtk-0.41/src/channel-m=
ain.c:1590 agent connected: no
(spicy:236125): GSpice-DEBUG: 13:06:49.336: ../spice-gtk-0.41/src/spice-ses=
sion.c:1835 no migration in progress
(spicy:236125): GSpice-DEBUG: 13:06:49.336: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2475 inputs-3:0: Delayed unref channel 0x5622053ea6c0
(spicy:236125): GSpice-DEBUG: 13:06:49.336: ../spice-gtk-0.41/src/spice-cha=
nnel.c:160 inputs-3:0: spice_channel_dispose 0x5622053ea6c0
(spicy:236125): GSpice-DEBUG: 13:06:49.336: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2943 inputs-3:0: channel disconnect 12
(spicy:236125): GSpice-DEBUG: 13:06:49.336: ../spice-gtk-0.41/src/spice-cha=
nnel.c:178 inputs-3:0: spice_channel_finalize 0x5622053ea6c0
0:00:08.768503252 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audiosink> current READY pending VOID_PE=
NDING, desired next READY
0:00:08.768547755 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audiosink-actual-sink-pulse> current REA=
DY pending VOID_PENDING, desired next READY
0:00:08.768584735 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2597:gst_bin_element_set_state:<audiosink-actual-sink-pulse> skipping tr=
ansition from READY to  READY
0:00:08.768605143 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<audiosink> child 'audiosink-actual-sink-=
pulse' changed state to 2(READY) successfully
0:00:08.768626629 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audiosink> completed state change t=
o READY
0:00:08.768645661 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'audiosink' changed sta=
te to 2(READY) successfully
0:00:08.768665583 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audioresample0> current READY pending VO=
ID_PENDING, desired next READY
0:00:08.768679541 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2597:gst_bin_element_set_state:<audioresample0> skipping transition from=
 READY to  READY
0:00:08.768694966 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'audioresample0' change=
d state to 2(READY) successfully
0:00:08.768713291 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audioconvert0> current READY pending VOI=
D_PENDING, desired next READY
0:00:08.768726957 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2597:gst_bin_element_set_state:<audioconvert0> skipping transition from =
READY to  READY
0:00:08.768741554 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'audioconvert0' changed=
 state to 2(READY) successfully
0:00:08.768759123 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<queue0> current READY pending VOID_PENDI=
NG, desired next READY
0:00:08.768772947 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2597:gst_bin_element_set_state:<queue0> skipping transition from READY t=
o  READY
0:00:08.768787503 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'queue0' changed state =
to 2(READY) successfully
0:00:08.768803586 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<appsrc> current READY pending VOID_PENDI=
NG, desired next READY
0:00:08.768817350 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2597:gst_bin_element_set_state:<appsrc> skipping transition from READY t=
o  READY
0:00:08.768832221 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'appsrc' changed state =
to 2(READY) successfully
0:00:08.768847940 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<pipeline0> completed state change t=
o READY
(spicy:236125): GSpice-DEBUG: 13:06:49.336: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2874 playback-5:0: channel reset
(spicy:236125): GSpice-DEBUG: 13:06:49.337: ../spice-gtk-0.41/src/spice-gst=
audio.c:136 record_stop
0:00:08.769147531 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<appsink> current READY pending VOID_PEND=
ING, desired next READY
0:00:08.769191883 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2597:gst_bin_element_set_state:<appsink> skipping transition from READY =
to  READY
0:00:08.769209871 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'appsink' changed state=
 to 2(READY) successfully
0:00:08.769230443 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audioresample1> current READY pending VO=
ID_PENDING, desired next READY
0:00:08.769244277 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2597:gst_bin_element_set_state:<audioresample1> skipping transition from=
 READY to  READY
0:00:08.769259050 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'audioresample1' change=
d state to 2(READY) successfully
0:00:08.769276959 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audioconvert1> current READY pending VOI=
D_PENDING, desired next READY
0:00:08.769290464 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2597:gst_bin_element_set_state:<audioconvert1> skipping transition from =
READY to  READY
0:00:08.769305005 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'audioconvert1' changed=
 state to 2(READY) successfully
0:00:08.769323964 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<queue1> current READY pending VOID_PENDI=
NG, desired next READY
0:00:08.769337769 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2597:gst_bin_element_set_state:<queue1> skipping transition from READY t=
o  READY
0:00:08.769352458 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'queue1' changed state =
to 2(READY) successfully
0:00:08.769368765 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audiosrc> current READY pending VOID_PEN=
DING, desired next READY
0:00:08.769395942 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audiosrc-actual-src-puls> current READY =
pending VOID_PENDING, desired next READY
0:00:08.769410830 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2597:gst_bin_element_set_state:<audiosrc-actual-src-puls> skipping trans=
ition from READY to  READY
0:00:08.769425986 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<audiosrc> child 'audiosrc-actual-src-pul=
s' changed state to 2(READY) successfully
0:00:08.769443669 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audiosrc> completed state change to=
 READY
0:00:08.769460952 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'audiosrc' changed stat=
e to 2(READY) successfully
0:00:08.769475778 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<pipeline1> completed state change t=
o READY
(spicy:236125): GSpice-DEBUG: 13:06:49.337: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2874 record-6:0: channel reset
(spicy:236125): GSpice-DEBUG: 13:06:49.337: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2475 usbredir-9:0: Delayed unref channel 0x5622053ec700
(spicy:236125): GSpice-DEBUG: 13:06:49.337: ../spice-gtk-0.41/src/channel-u=
sbredir.c:403 usbredir-9:0: disconnecting device from usb channel 0x5622053=
ec700
(spicy:236125): GSpice-DEBUG: 13:06:49.337: ../spice-gtk-0.41/src/spice-cha=
nnel.c:160 usbredir-9:0: spice_channel_dispose 0x5622053ec700
(spicy:236125): GSpice-DEBUG: 13:06:49.337: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2943 usbredir-9:0: channel disconnect 12
(spicy:236125): GSpice-DEBUG: 13:06:49.337: ../spice-gtk-0.41/src/usb-backe=
nd.c:1359 spice_usb_backend_channel_delete >> 0x56220536a4c0
(spicy:236125): GSpice-DEBUG: 13:06:49.337: ../spice-gtk-0.41/src/usb-backe=
nd.c:1375 spice_usb_backend_channel_delete << 0x56220536a4c0
(spicy:236125): GSpice-DEBUG: 13:06:49.337: ../spice-gtk-0.41/src/spice-cha=
nnel.c:178 usbredir-9:0: spice_channel_finalize 0x5622053ec700
(spicy:236125): GSpice-DEBUG: 13:06:49.337: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2475 usbredir-9:1: Delayed unref channel 0x5622053ec3f0
(spicy:236125): GSpice-DEBUG: 13:06:49.337: ../spice-gtk-0.41/src/channel-u=
sbredir.c:403 usbredir-9:1: disconnecting device from usb channel 0x5622053=
ec3f0
(spicy:236125): GSpice-DEBUG: 13:06:49.337: ../spice-gtk-0.41/src/spice-cha=
nnel.c:160 usbredir-9:1: spice_channel_dispose 0x5622053ec3f0
(spicy:236125): GSpice-DEBUG: 13:06:49.337: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2943 usbredir-9:1: channel disconnect 12
(spicy:236125): GSpice-DEBUG: 13:06:49.337: ../spice-gtk-0.41/src/usb-backe=
nd.c:1359 spice_usb_backend_channel_delete >> 0x562206195a20
(spicy:236125): GSpice-DEBUG: 13:06:49.338: ../spice-gtk-0.41/src/usb-backe=
nd.c:1375 spice_usb_backend_channel_delete << 0x562206195a20
(spicy:236125): GSpice-DEBUG: 13:06:49.338: ../spice-gtk-0.41/src/spice-cha=
nnel.c:178 usbredir-9:1: spice_channel_finalize 0x5622053ec3f0
(spicy:236125): GSpice-DEBUG: 13:06:49.338: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2475 cursor-4:0: Delayed unref channel 0x5622053ea3c0
(spicy:236125): GSpice-DEBUG: 13:06:49.338: ../spice-gtk-0.41/src/spice-cha=
nnel.c:160 cursor-4:0: spice_channel_dispose 0x5622053ea3c0
(spicy:236125): GSpice-DEBUG: 13:06:49.338: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2943 cursor-4:0: channel disconnect 12
(spicy:236125): GSpice-DEBUG: 13:06:49.338: ../spice-gtk-0.41/src/spice-cha=
nnel.c:178 cursor-4:0: spice_channel_finalize 0x5622053ea3c0
(spicy:236125): GSpice-DEBUG: 13:06:49.338: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2475 display-2:0: Delayed unref channel 0x5622053e0410
(spicy:236125): GSpice-DEBUG: 13:06:49.338: ../spice-gtk-0.41/src/spice-cha=
nnel.c:160 display-2:0: spice_channel_dispose 0x5622053e0410
(spicy:236125): GSpice-DEBUG: 13:06:49.338: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2943 display-2:0: channel disconnect 12
(spicy:236125): GSpice-DEBUG: 13:06:49.340: ../spice-gtk-0.41/src/spice-cha=
nnel.c:178 display-2:0: spice_channel_finalize 0x5622053e0410
(spicy:236125): GSpice-DEBUG: 13:06:49.340: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2475 playback-5:0: Delayed unref channel 0x5622053ecd20
(spicy:236125): GSpice-DEBUG: 13:06:49.340: ../spice-gtk-0.41/src/spice-cha=
nnel.c:160 playback-5:0: spice_channel_dispose 0x5622053ecd20
(spicy:236125): GSpice-DEBUG: 13:06:49.340: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2943 playback-5:0: channel disconnect 12
(spicy:236125): GSpice-DEBUG: 13:06:49.340: ../spice-gtk-0.41/src/spice-gst=
audio.c:506 playback closed
0:00:08.772888089 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audiosink> current READY pending VOID_PE=
NDING, desired next READY
0:00:08.772922973 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audiosink-actual-sink-pulse> current REA=
DY pending VOID_PENDING, desired next READY
0:00:08.772939203 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2597:gst_bin_element_set_state:<audiosink-actual-sink-pulse> skipping tr=
ansition from READY to  READY
0:00:08.772956345 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<audiosink> child 'audiosink-actual-sink-=
pulse' changed state to 2(READY) successfully
0:00:08.772989564 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audiosink> completed state change t=
o READY
0:00:08.773008101 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'audiosink' changed sta=
te to 2(READY) successfully
0:00:08.773026480 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audioresample0> current READY pending VO=
ID_PENDING, desired next READY
0:00:08.773040304 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2597:gst_bin_element_set_state:<audioresample0> skipping transition from=
 READY to  READY
0:00:08.773054501 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'audioresample0' change=
d state to 2(READY) successfully
0:00:08.773071560 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audioconvert0> current READY pending VOI=
D_PENDING, desired next READY
0:00:08.773085193 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2597:gst_bin_element_set_state:<audioconvert0> skipping transition from =
READY to  READY
0:00:08.773099559 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'audioconvert0' changed=
 state to 2(READY) successfully
0:00:08.773116301 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<queue0> current READY pending VOID_PENDI=
NG, desired next READY
0:00:08.773130063 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2597:gst_bin_element_set_state:<queue0> skipping transition from READY t=
o  READY
0:00:08.773144651 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'queue0' changed state =
to 2(READY) successfully
0:00:08.773159543 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<appsrc> current READY pending VOID_PENDI=
NG, desired next READY
0:00:08.773172526 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2597:gst_bin_element_set_state:<appsrc> skipping transition from READY t=
o  READY
0:00:08.773186684 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'appsrc' changed state =
to 2(READY) successfully
0:00:08.773201547 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<pipeline0> completed state change t=
o READY
(spicy:236125): GSpice-DEBUG: 13:06:49.341: ../spice-gtk-0.41/src/spice-cha=
nnel.c:178 playback-5:0: spice_channel_finalize 0x5622053ecd20
(spicy:236125): GSpice-DEBUG: 13:06:49.341: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2475 record-6:0: Delayed unref channel 0x5622053eca10
(spicy:236125): GSpice-DEBUG: 13:06:49.341: ../spice-gtk-0.41/src/spice-cha=
nnel.c:160 record-6:0: spice_channel_dispose 0x5622053eca10
(spicy:236125): GSpice-DEBUG: 13:06:49.341: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2943 record-6:0: channel disconnect 12
(spicy:236125): GSpice-DEBUG: 13:06:49.341: ../spice-gtk-0.41/src/spice-gst=
audio.c:510 record closed
(spicy:236125): GSpice-DEBUG: 13:06:49.341: ../spice-gtk-0.41/src/spice-gst=
audio.c:136 record_stop
0:00:08.773392544 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<appsink> current READY pending VOID_PEND=
ING, desired next READY
0:00:08.773421690 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2597:gst_bin_element_set_state:<appsink> skipping transition from READY =
to  READY
0:00:08.773438191 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'appsink' changed state=
 to 2(READY) successfully
0:00:08.773466222 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audioresample1> current READY pending VO=
ID_PENDING, desired next READY
0:00:08.773481029 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2597:gst_bin_element_set_state:<audioresample1> skipping transition from=
 READY to  READY
0:00:08.773495241 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'audioresample1' change=
d state to 2(READY) successfully
0:00:08.773512536 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audioconvert1> current READY pending VOI=
D_PENDING, desired next READY
0:00:08.773525795 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2597:gst_bin_element_set_state:<audioconvert1> skipping transition from =
READY to  READY
0:00:08.773539675 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'audioconvert1' changed=
 state to 2(READY) successfully
0:00:08.773556931 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<queue1> current READY pending VOID_PENDI=
NG, desired next READY
0:00:08.773570283 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2597:gst_bin_element_set_state:<queue1> skipping transition from READY t=
o  READY
0:00:08.773584328 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'queue1' changed state =
to 2(READY) successfully
0:00:08.773599956 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audiosrc> current READY pending VOID_PEN=
DING, desired next READY
0:00:08.773624090 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audiosrc-actual-src-puls> current READY =
pending VOID_PENDING, desired next READY
0:00:08.773638343 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2597:gst_bin_element_set_state:<audiosrc-actual-src-puls> skipping trans=
ition from READY to  READY
0:00:08.773652587 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<audiosrc> child 'audiosrc-actual-src-pul=
s' changed state to 2(READY) successfully
0:00:08.773667921 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audiosrc> completed state change to=
 READY
0:00:08.773684894 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'audiosrc' changed stat=
e to 2(READY) successfully
0:00:08.773699904 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<pipeline1> completed state change t=
o READY
(spicy:236125): GSpice-DEBUG: 13:06:49.341: ../spice-gtk-0.41/src/spice-cha=
nnel.c:178 record-6:0: spice_channel_finalize 0x5622053eca10
(spicy:236125): GSpice-DEBUG: 13:06:49.342: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2874 main-1:0: channel reset
(spicy:236125): GSpice-DEBUG: 13:06:49.342: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2475 main-1:0: Delayed unref channel 0x5622053970f0
GSpice-Message: 13:06:49.342: main channel: closed
(spicy:236125): GSpice-DEBUG: 13:06:49.342: ../spice-gtk-0.41/src/spice-cha=
nnel.c:160 main-1:0: spice_channel_dispose 0x5622053970f0
(spicy:236125): GSpice-DEBUG: 13:06:49.342: ../spice-gtk-0.41/src/spice-cha=
nnel.c:2943 main-1:0: channel disconnect 12
(spicy:236125): GSpice-DEBUG: 13:06:49.342: ../spice-gtk-0.41/tools/spicy.c=
:1260 destroy window (#0:0)
(spicy:236125): GSpice-DEBUG: 13:06:49.343: ../spice-gtk-0.41/src/spice-wid=
get.c:2013 0:0 focus_out_event
(spicy:236125): GSpice-DEBUG: 13:06:49.343: ../spice-gtk-0.41/src/spice-wid=
get.c:1636 0:0 release_keys
(spicy:236125): GSpice-DEBUG: 13:06:49.352: ../spice-gtk-0.41/src/spice-wid=
get.c:461 0:0 spice display dispose
(spicy:236125): GSpice-DEBUG: 13:06:49.352: ../spice-gtk-0.41/src/spice-wid=
get.c:461 0:0 spice display dispose
(spicy:236125): GSpice-DEBUG: 13:06:49.353: ../spice-gtk-0.41/src/spice-wid=
get.c:480 0:0 Finalize spice display
(spicy:236125): GSpice-DEBUG: 13:06:49.353: ../spice-gtk-0.41/tools/spicy.c=
:1910 connection_destroy (0)
(spicy:236125): GSpice-DEBUG: 13:06:49.353: ../spice-gtk-0.41/src/spice-ses=
sion.c:332 session dispose
(spicy:236125): GSpice-DEBUG: 13:06:49.353: ../spice-gtk-0.41/src/spice-ses=
sion.c:1835 no migration in progress
(spicy:236125): GSpice-DEBUG: 13:06:49.353: ../spice-gtk-0.41/src/spice-gst=
audio.c:77 spice_gstaudio_dispose
0:00:08.785531561 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audiosink> current READY pending VOID_PE=
NDING, desired next NULL
0:00:08.785573133 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audiosink-actual-sink-pulse> current REA=
DY pending VOID_PENDING, desired next NULL
0:00:08.786092865 236125 0x562204e5c670 INFO                   pulse pulses=
ink.c:3225:gst_pulsesink_release_mainloop:<audiosink-actual-sink-pulse> ter=
minating pa main loop thread
0:00:08.786324535 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audiosink-actual-sink-pulse> comple=
ted state change to NULL
0:00:08.786375381 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audiosink-actual-sink-pulse> n=
otifying about state-changed READY to NULL (VOID_PENDING pending)
0:00:08.786421623 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<audiosink> child 'audiosink-actual-sink-=
pulse' changed state to 1(NULL) successfully
0:00:08.786459737 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audiosink-actual-sink-pulse> comple=
ted state change to NULL
0:00:08.786491457 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstpad=
.c:2137:gst_pad_unlink: unlinking sink:proxypad0(0x562205414070) and audios=
ink-actual-sink-pulse:sink(0x562205401160)
0:00:08.786517184 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstpad=
.c:2192:gst_pad_unlink: unlinked sink:proxypad0 and audiosink-actual-sink-p=
ulse:sink
0:00:08.786534935 236125 0x562204e5c670 INFO           GST_PARENTAGE gstbin=
.c:1803:gst_bin_remove_func:<audiosink> removed child "audiosink-actual-sin=
k-pulse"
0:00:08.786595081 236125 0x562204e5c670 INFO     GST_ELEMENT_FACTORY gstele=
mentfactory.c:489:gst_element_factory_create_with_properties: creating elem=
ent "fakesink"
0:00:08.787087503 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:759:gst_element_add_pad:<GstBaseSink@0x562205497410> adding pad 'sin=
k'
0:00:08.787159069 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:1016:gst_element_get_static_pad: found pad fake-audio-sink:sink
0:00:08.787205860 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:2382:gst_pad_link_prepare: trying to link sink:proxypad0 and fake-audio-=
sink:sink
0:00:08.787227162 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:2590:gst_pad_link_full: linked sink:proxypad0 and fake-audio-sink:sink, =
successful
0:00:08.787240411 236125 0x562204e5c670 INFO               GST_EVENT gsteve=
nt.c:1660:gst_event_new_reconfigure: creating reconfigure event
0:00:08.787255983 236125 0x562204e5c670 INFO               GST_EVENT gstpad=
.c:5946:gst_pad_send_event_unchecked:<sink:proxypad0> Received event on flu=
shing pad. Discarding
0:00:08.787273300 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audiosink> completed state change t=
o NULL
0:00:08.787291445 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audiosink> notifying about sta=
te-changed READY to NULL (VOID_PENDING pending)
0:00:08.787319298 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'audiosink' changed sta=
te to 1(NULL) successfully
0:00:08.787346255 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audioresample0> current READY pending VO=
ID_PENDING, desired next NULL
0:00:08.787368319 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audioresample0> completed state cha=
nge to NULL
0:00:08.787383692 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audioresample0> notifying abou=
t state-changed READY to NULL (VOID_PENDING pending)
0:00:08.787404410 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'audioresample0' change=
d state to 1(NULL) successfully
0:00:08.787424635 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audioconvert0> current READY pending VOI=
D_PENDING, desired next NULL
0:00:08.787442456 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audioconvert0> completed state chan=
ge to NULL
0:00:08.787456902 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audioconvert0> notifying about=
 state-changed READY to NULL (VOID_PENDING pending)
0:00:08.787476761 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'audioconvert0' changed=
 state to 1(NULL) successfully
0:00:08.787495580 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<queue0> current READY pending VOID_PENDI=
NG, desired next NULL
0:00:08.787513367 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<queue0> completed state change to N=
ULL
0:00:08.787528501 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<queue0> notifying about state-=
changed READY to NULL (VOID_PENDING pending)
0:00:08.787548136 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'queue0' changed state =
to 1(NULL) successfully
0:00:08.787577860 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<appsrc> current READY pending VOID_PENDI=
NG, desired next NULL
0:00:08.787597989 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<appsrc> completed state change to N=
ULL
0:00:08.787613076 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<appsrc> notifying about state-=
changed READY to NULL (VOID_PENDING pending)
0:00:08.787632445 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline0> child 'appsrc' changed state =
to 1(NULL) successfully
0:00:08.787736002 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3382:gst_element_dispose:<audiosink-actual-sink-pulse> 0x56220542218=
0 dispose
0:00:08.787755939 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:875:gst_element_remove_pad:<audiosink-actual-sink-pulse> removing pa=
d 'sink'
0:00:08.787781186 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3428:gst_element_dispose:<audiosink-actual-sink-pulse> 0x56220542218=
0 parent class dispose
0:00:08.787800356 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3460:gst_element_finalize:<audiosink-actual-sink-pulse> 0x5622054221=
80 finalize
0:00:08.787823149 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3465:gst_element_finalize:<audiosink-actual-sink-pulse> 0x5622054221=
80 finalize parent
0:00:08.787852387 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<pipeline0> completed state change t=
o NULL
0:00:08.787879251 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<pipeline0> notifying about sta=
te-changed READY to NULL (VOID_PENDING pending)
0:00:08.787936520 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstpad=
.c:2137:gst_pad_unlink: unlinking audioresample0:src(0x562205400f10) and au=
diosink:sink(0x562205412060)
0:00:08.787981517 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstpad=
.c:2192:gst_pad_unlink: unlinked audioresample0:src and audiosink:sink
0:00:08.788024817 236125 0x562204e5c670 INFO           GST_PARENTAGE gstbin=
.c:1803:gst_bin_remove_func:<pipeline0> removed child "audiosink"
0:00:08.788091536 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstpad=
.c:2137:gst_pad_unlink: unlinking audioconvert0:src(0x562205400a70) and aud=
ioresample0:sink(0x562205400cc0)
0:00:08.788136800 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstpad=
.c:2192:gst_pad_unlink: unlinked audioconvert0:src and audioresample0:sink
0:00:08.788178716 236125 0x562204e5c670 INFO           GST_PARENTAGE gstbin=
.c:1803:gst_bin_remove_func:<pipeline0> removed child "audioresample0"
0:00:08.788217251 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3382:gst_element_dispose:<audioresample0> 0x56220540d050 dispose
0:00:08.788243460 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:875:gst_element_remove_pad:<audioresample0> removing pad 'sink'
0:00:08.788282883 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:875:gst_element_remove_pad:<audioresample0> removing pad 'src'
0:00:08.788319209 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3428:gst_element_dispose:<audioresample0> 0x56220540d050 parent clas=
s dispose
0:00:08.788366999 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3460:gst_element_finalize:<audioresample0> 0x56220540d050 finalize
0:00:08.788392410 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3465:gst_element_finalize:<audioresample0> 0x56220540d050 finalize p=
arent
0:00:08.788432664 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstpad=
.c:2137:gst_pad_unlink: unlinking queue0:src(0x5622054005d0) and audioconve=
rt0:sink(0x562205400820)
0:00:08.788472834 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstpad=
.c:2192:gst_pad_unlink: unlinked queue0:src and audioconvert0:sink
0:00:08.788511747 236125 0x562204e5c670 INFO           GST_PARENTAGE gstbin=
.c:1803:gst_bin_remove_func:<pipeline0> removed child "audioconvert0"
0:00:08.788563273 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3382:gst_element_dispose:<audioconvert0> 0x56220540a230 dispose
0:00:08.788589194 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:875:gst_element_remove_pad:<audioconvert0> removing pad 'sink'
0:00:08.788622861 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:875:gst_element_remove_pad:<audioconvert0> removing pad 'src'
0:00:08.788653823 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3428:gst_element_dispose:<audioconvert0> 0x56220540a230 parent class=
 dispose
0:00:08.788679820 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3460:gst_element_finalize:<audioconvert0> 0x56220540a230 finalize
0:00:08.788703426 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3465:gst_element_finalize:<audioconvert0> 0x56220540a230 finalize pa=
rent
0:00:08.788742013 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstpad=
.c:2137:gst_pad_unlink: unlinking appsrc:src(0x562205400130) and queue0:sin=
k(0x562205400380)
0:00:08.788783683 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstpad=
.c:2192:gst_pad_unlink: unlinked appsrc:src and queue0:sink
0:00:08.788824429 236125 0x562204e5c670 INFO           GST_PARENTAGE gstbin=
.c:1803:gst_bin_remove_func:<pipeline0> removed child "queue0"
0:00:08.788866873 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3382:gst_element_dispose:<queue0> 0x5622053ea6f0 dispose
0:00:08.788893037 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:875:gst_element_remove_pad:<queue0> removing pad 'sink'
0:00:08.788933000 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:875:gst_element_remove_pad:<queue0> removing pad 'src'
0:00:08.788970587 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3428:gst_element_dispose:<queue0> 0x5622053ea6f0 parent class dispos=
e
0:00:08.789004736 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3460:gst_element_finalize:<queue0> 0x5622053ea6f0 finalize
0:00:08.789031786 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3465:gst_element_finalize:<queue0> 0x5622053ea6f0 finalize parent
0:00:08.789076129 236125 0x562204e5c670 INFO           GST_PARENTAGE gstbin=
.c:1803:gst_bin_remove_func:<pipeline0> removed child "appsrc"
0:00:08.789136560 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3382:gst_element_dispose:<pipeline0> 0x56220541a1c0 dispose
0:00:08.789206281 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3428:gst_element_dispose:<pipeline0> 0x56220541a1c0 parent class dis=
pose
0:00:08.789237930 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3460:gst_element_finalize:<pipeline0> 0x56220541a1c0 finalize
0:00:08.789262239 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3465:gst_element_finalize:<pipeline0> 0x56220541a1c0 finalize parent
0:00:08.789298739 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3382:gst_element_dispose:<appsrc> 0x5622053f19e0 dispose
0:00:08.789325756 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:875:gst_element_remove_pad:<appsrc> removing pad 'src'
0:00:08.789363087 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3428:gst_element_dispose:<appsrc> 0x5622053f19e0 parent class dispos=
e
0:00:08.789393963 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3460:gst_element_finalize:<appsrc> 0x5622053f19e0 finalize
0:00:08.789419389 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3465:gst_element_finalize:<appsrc> 0x5622053f19e0 finalize parent
0:00:08.789456431 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<fake-audio-sink> completed state ch=
ange to NULL
0:00:08.789501544 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstpad=
.c:2137:gst_pad_unlink: unlinking sink:proxypad0(0x562205414070) and fake-a=
udio-sink:sink(0x56220543c730)
0:00:08.789535478 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstpad=
.c:2192:gst_pad_unlink: unlinked sink:proxypad0 and fake-audio-sink:sink
0:00:08.789566464 236125 0x562204e5c670 INFO           GST_PARENTAGE gstbin=
.c:1803:gst_bin_remove_func:<audiosink> removed child "fake-audio-sink"
0:00:08.789609676 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3382:gst_element_dispose:<fake-audio-sink> 0x562205497410 dispose
0:00:08.789636932 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:875:gst_element_remove_pad:<fake-audio-sink> removing pad 'sink'
0:00:08.789678205 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3428:gst_element_dispose:<fake-audio-sink> 0x562205497410 parent cla=
ss dispose
0:00:08.789709969 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3460:gst_element_finalize:<fake-audio-sink> 0x562205497410 finalize
0:00:08.789736021 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3465:gst_element_finalize:<fake-audio-sink> 0x562205497410 finalize =
parent
0:00:08.789771652 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3382:gst_element_dispose:<audiosink> 0x562205410020 dispose
0:00:08.789797413 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:875:gst_element_remove_pad:<audiosink> removing pad 'sink'
0:00:08.789841797 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3428:gst_element_dispose:<audiosink> 0x562205410020 parent class dis=
pose
0:00:08.789870706 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3460:gst_element_finalize:<audiosink> 0x562205410020 finalize
0:00:08.789917355 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3465:gst_element_finalize:<audiosink> 0x562205410020 finalize parent
0:00:08.790002721 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<appsink> current READY pending VOID_PEND=
ING, desired next NULL
0:00:08.790056209 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<appsink> completed state change to =
NULL
0:00:08.790089093 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<appsink> notifying about state=
-changed READY to NULL (VOID_PENDING pending)
0:00:08.790150346 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'appsink' changed state=
 to 1(NULL) successfully
0:00:08.790192220 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audioresample1> current READY pending VO=
ID_PENDING, desired next NULL
0:00:08.790230089 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audioresample1> completed state cha=
nge to NULL
0:00:08.790259143 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audioresample1> notifying abou=
t state-changed READY to NULL (VOID_PENDING pending)
0:00:08.790298808 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'audioresample1' change=
d state to 1(NULL) successfully
0:00:08.790337747 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audioconvert1> current READY pending VOI=
D_PENDING, desired next NULL
0:00:08.790372330 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audioconvert1> completed state chan=
ge to NULL
0:00:08.790389786 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audioconvert1> notifying about=
 state-changed READY to NULL (VOID_PENDING pending)
0:00:08.790411786 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'audioconvert1' changed=
 state to 1(NULL) successfully
0:00:08.790432255 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<queue1> current READY pending VOID_PENDI=
NG, desired next NULL
0:00:08.790450843 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<queue1> completed state change to N=
ULL
0:00:08.790466570 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<queue1> notifying about state-=
changed READY to NULL (VOID_PENDING pending)
0:00:08.790486021 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'queue1' changed state =
to 1(NULL) successfully
0:00:08.790503166 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audiosrc> current READY pending VOID_PEN=
DING, desired next NULL
0:00:08.790531135 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2479:gst_bin_element_set_state:<audiosrc-actual-src-puls> current READY =
pending VOID_PENDING, desired next NULL
0:00:08.791194447 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audiosrc-actual-src-puls> completed=
 state change to NULL
0:00:08.791245050 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audiosrc-actual-src-puls> noti=
fying about state-changed READY to NULL (VOID_PENDING pending)
0:00:08.791288066 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<audiosrc> child 'audiosrc-actual-src-pul=
s' changed state to 1(NULL) successfully
0:00:08.791326207 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audiosrc-actual-src-puls> completed=
 state change to NULL
0:00:08.791357009 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstpad=
.c:2137:gst_pad_unlink: unlinking audiosrc-actual-src-puls:src(0x5622054013=
b0) and src:proxypad1(0x5622054142d0)
0:00:08.791387431 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstpad=
.c:2192:gst_pad_unlink: unlinked audiosrc-actual-src-puls:src and src:proxy=
pad1
0:00:08.791408732 236125 0x562204e5c670 INFO           GST_PARENTAGE gstbin=
.c:1803:gst_bin_remove_func:<audiosrc> removed child "audiosrc-actual-src-p=
uls"
0:00:08.791466243 236125 0x562204e5c670 INFO     GST_ELEMENT_FACTORY gstele=
mentfactory.c:489:gst_element_factory_create_with_properties: creating elem=
ent "audiotestsrc"
0:00:08.791524621 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:759:gst_element_add_pad:<GstBaseSrc@0x56220587b330> adding pad 'src'
0:00:08.791570864 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:1016:gst_element_get_static_pad: found pad fake-auto-audio-src:src
0:00:08.791591096 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:2382:gst_pad_link_prepare: trying to link fake-auto-audio-src:src and sr=
c:proxypad1
0:00:08.791603599 236125 0x562204e5c670 INFO                GST_PADS gstpad=
.c:2590:gst_pad_link_full: linked fake-auto-audio-src:src and src:proxypad1=
, successful
0:00:08.791611999 236125 0x562204e5c670 INFO               GST_EVENT gsteve=
nt.c:1660:gst_event_new_reconfigure: creating reconfigure event
0:00:08.791622041 236125 0x562204e5c670 INFO               GST_EVENT gstpad=
.c:5946:gst_pad_send_event_unchecked:<fake-auto-audio-src:src> Received eve=
nt on flushing pad. Discarding
0:00:08.791636422 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<audiosrc> completed state change to=
 NULL
0:00:08.791648021 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<audiosrc> notifying about stat=
e-changed READY to NULL (VOID_PENDING pending)
0:00:08.791663955 236125 0x562204e5c670 INFO              GST_STATES gstbin=
.c:2928:gst_bin_change_state_func:<pipeline1> child 'audiosrc' changed stat=
e to 1(NULL) successfully
0:00:08.791692083 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3382:gst_element_dispose:<audiosrc-actual-src-puls> 0x562205437ec0 d=
ispose
0:00:08.791703178 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:875:gst_element_remove_pad:<audiosrc-actual-src-puls> removing pad '=
src'
0:00:08.791721122 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3428:gst_element_dispose:<audiosrc-actual-src-puls> 0x562205437ec0 p=
arent class dispose
0:00:08.791745105 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3460:gst_element_finalize:<audiosrc-actual-src-puls> 0x562205437ec0 =
finalize
0:00:08.791755277 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3465:gst_element_finalize:<audiosrc-actual-src-puls> 0x562205437ec0 =
finalize parent
0:00:08.791769137 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<pipeline1> completed state change t=
o NULL
0:00:08.791780079 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2706:_priv_gst_element_state_changed:<pipeline1> notifying about sta=
te-changed READY to NULL (VOID_PENDING pending)
0:00:08.791801657 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstpad=
.c:2137:gst_pad_unlink: unlinking audioresample1:src(0x56220543c290) and ap=
psink:sink(0x56220543c4e0)
0:00:08.791817500 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstpad=
.c:2192:gst_pad_unlink: unlinked audioresample1:src and appsink:sink
0:00:08.791831061 236125 0x562204e5c670 INFO           GST_PARENTAGE gstbin=
.c:1803:gst_bin_remove_func:<pipeline1> removed child "appsink"
0:00:08.791850745 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstpad=
.c:2137:gst_pad_unlink: unlinking audioconvert1:src(0x562205401cf0) and aud=
ioresample1:sink(0x56220543c040)
0:00:08.791865102 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstpad=
.c:2192:gst_pad_unlink: unlinked audioconvert1:src and audioresample1:sink
0:00:08.791878751 236125 0x562204e5c670 INFO           GST_PARENTAGE gstbin=
.c:1803:gst_bin_remove_func:<pipeline1> removed child "audioresample1"
0:00:08.791892157 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3382:gst_element_dispose:<audioresample1> 0x56220543af30 dispose
0:00:08.791901603 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:875:gst_element_remove_pad:<audioresample1> removing pad 'sink'
0:00:08.791915607 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:875:gst_element_remove_pad:<audioresample1> removing pad 'src'
0:00:08.791928674 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3428:gst_element_dispose:<audioresample1> 0x56220543af30 parent clas=
s dispose
0:00:08.791938866 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3460:gst_element_finalize:<audioresample1> 0x56220543af30 finalize
0:00:08.791947853 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3465:gst_element_finalize:<audioresample1> 0x56220543af30 finalize p=
arent
0:00:08.791962236 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstpad=
.c:2137:gst_pad_unlink: unlinking queue1:src(0x562205401850) and audioconve=
rt1:sink(0x562205401aa0)
0:00:08.791975378 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstpad=
.c:2192:gst_pad_unlink: unlinked queue1:src and audioconvert1:sink
0:00:08.791988418 236125 0x562204e5c670 INFO           GST_PARENTAGE gstbin=
.c:1803:gst_bin_remove_func:<pipeline1> removed child "audioconvert1"
0:00:08.792007351 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3382:gst_element_dispose:<audioconvert1> 0x56220543a850 dispose
0:00:08.792017254 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:875:gst_element_remove_pad:<audioconvert1> removing pad 'sink'
0:00:08.792036861 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:875:gst_element_remove_pad:<audioconvert1> removing pad 'src'
0:00:08.792050335 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3428:gst_element_dispose:<audioconvert1> 0x56220543a850 parent class=
 dispose
0:00:08.792059758 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3460:gst_element_finalize:<audioconvert1> 0x56220543a850 finalize
0:00:08.792069283 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3465:gst_element_finalize:<audioconvert1> 0x56220543a850 finalize pa=
rent
0:00:08.792083627 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstpad=
.c:2137:gst_pad_unlink: unlinking audiosrc:src(0x5622054122d0) and queue1:s=
ink(0x562205401600)
0:00:08.792098066 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstpad=
.c:2192:gst_pad_unlink: unlinked audiosrc:src and queue1:sink
0:00:08.792111255 236125 0x562204e5c670 INFO           GST_PARENTAGE gstbin=
.c:1803:gst_bin_remove_func:<pipeline1> removed child "queue1"
0:00:08.792124752 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3382:gst_element_dispose:<queue1> 0x5622053ea9f0 dispose
0:00:08.792133862 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:875:gst_element_remove_pad:<queue1> removing pad 'sink'
0:00:08.792149785 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:875:gst_element_remove_pad:<queue1> removing pad 'src'
0:00:08.792163192 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3428:gst_element_dispose:<queue1> 0x5622053ea9f0 parent class dispos=
e
0:00:08.792174963 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3460:gst_element_finalize:<queue1> 0x5622053ea9f0 finalize
0:00:08.792184315 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3465:gst_element_finalize:<queue1> 0x5622053ea9f0 finalize parent
0:00:08.792201456 236125 0x562204e5c670 INFO           GST_PARENTAGE gstbin=
.c:1803:gst_bin_remove_func:<pipeline1> removed child "audiosrc"
0:00:08.792218624 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3382:gst_element_dispose:<pipeline1> 0x56220541a3e0 dispose
0:00:08.792253534 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3428:gst_element_dispose:<pipeline1> 0x56220541a3e0 parent class dis=
pose
0:00:08.792264884 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3460:gst_element_finalize:<pipeline1> 0x56220541a3e0 finalize
0:00:08.792274426 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3465:gst_element_finalize:<pipeline1> 0x56220541a3e0 finalize parent
0:00:08.792287237 236125 0x562204e5c670 INFO              GST_STATES gstele=
ment.c:2806:gst_element_continue_state:<fake-auto-audio-src> completed stat=
e change to NULL
0:00:08.792302807 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstpad=
.c:2137:gst_pad_unlink: unlinking fake-auto-audio-src:src(0x562205400a70) a=
nd src:proxypad1(0x5622054142d0)
0:00:08.792318087 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstpad=
.c:2192:gst_pad_unlink: unlinked fake-auto-audio-src:src and src:proxypad1
0:00:08.792330349 236125 0x562204e5c670 INFO           GST_PARENTAGE gstbin=
.c:1803:gst_bin_remove_func:<audiosrc> removed child "fake-auto-audio-src"
0:00:08.792350801 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3382:gst_element_dispose:<fake-auto-audio-src> 0x56220587b330 dispos=
e
0:00:08.792360509 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:875:gst_element_remove_pad:<fake-auto-audio-src> removing pad 'src'
0:00:08.792373446 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3428:gst_element_dispose:<fake-auto-audio-src> 0x56220587b330 parent=
 class dispose
0:00:08.792384415 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3460:gst_element_finalize:<fake-auto-audio-src> 0x56220587b330 final=
ize
0:00:08.792393961 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3465:gst_element_finalize:<fake-auto-audio-src> 0x56220587b330 final=
ize parent
0:00:08.792406878 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3382:gst_element_dispose:<audiosrc> 0x562205410210 dispose
0:00:08.792416062 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:875:gst_element_remove_pad:<audiosrc> removing pad 'src'
0:00:08.792436493 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3428:gst_element_dispose:<audiosrc> 0x562205410210 parent class disp=
ose
0:00:08.792447081 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3460:gst_element_finalize:<audiosrc> 0x562205410210 finalize
0:00:08.792455910 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3465:gst_element_finalize:<audiosrc> 0x562205410210 finalize parent
0:00:08.792469780 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3382:gst_element_dispose:<appsink> 0x5622054188d0 dispose
0:00:08.792479285 236125 0x562204e5c670 INFO        GST_ELEMENT_PADS gstele=
ment.c:875:gst_element_remove_pad:<appsink> removing pad 'sink'
0:00:08.792492074 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3428:gst_element_dispose:<appsink> 0x5622054188d0 parent class dispo=
se
0:00:08.792509110 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3460:gst_element_finalize:<appsink> 0x5622054188d0 finalize
0:00:08.792518432 236125 0x562204e5c670 INFO         GST_REFCOUNTING gstele=
ment.c:3465:gst_element_finalize:<appsink> 0x5622054188d0 finalize parent
[timestamp] [threadID] facility level [function call] <message>
---------------------------------------------------------------------------=
-----
[ 8.606136] [00039a5d] libusb: debug [libusb_hotplug_deregister_callback] d=
eregister hotplug cb 1
[ 8.606150] [00039a5d] libusb: debug [libusb_interrupt_event_handler] =20
[ 8.606199] [00039a65] libusb: debug [usbi_wait_for_events] poll() returned=
 1
[ 8.606223] [00039a65] libusb: debug [handle_event_trigger] event triggered
[ 8.606229] [00039a65] libusb: debug [handle_event_trigger] someone purpose=
fully interrupted
[ 8.606233] [00039a65] libusb: debug [handle_event_trigger] someone unregis=
tered a hotplug cb
[ 8.606239] [00039a65] libusb: debug [usbi_hotplug_process] freeing hotplug=
 cb 0x562205265740 with handle 1
(spicy:236125): GSpice-DEBUG: 13:06:49.360: ../spice-gtk-0.41/src/usb-backe=
nd.c:481 handle_libusb_events <<
(spicy:236125): GSpice-DEBUG: 13:06:49.360: ../spice-gtk-0.41/src/usb-backe=
nd.c:538 spice_usb_backend_delete >>
[ 8.606451] [00039a5d] libusb: debug [libusb_exit] =20
[ 8.606514] [00039a64] libusb: debug [linux_udev_event_thread_main] udev ev=
ent thread exiting
[ 8.606656] [00039a5d] libusb: debug [libusb_unref_device] destroy device 2=
.100
[ 8.606688] [00039a5d] libusb: debug [libusb_unref_device] destroy device 2=
.1
[ 8.606694] [00039a5d] libusb: debug [libusb_unref_device] destroy device 1=
.3
[ 8.606698] [00039a5d] libusb: debug [libusb_unref_device] destroy device 1=
.4
[ 8.606703] [00039a5d] libusb: debug [libusb_unref_device] destroy device 1=
.2
[ 8.606707] [00039a5d] libusb: debug [libusb_unref_device] destroy device 1=
.5
[ 8.606711] [00039a5d] libusb: debug [libusb_unref_device] destroy device 1=
.1
[ 8.606716] [00039a5d] libusb: debug [usbi_remove_event_source] remove fd 1=
2
[ 8.606726] [00039a5d] libusb: debug [usbi_remove_event_source] remove fd 1=
1
(spicy:236125): GSpice-DEBUG: 13:06:49.361: ../spice-gtk-0.41/src/usb-backe=
nd.c:551 spice_usb_backend_delete <<
(spicy:236125): GSpice-DEBUG: 13:06:49.364: ../spice-gtk-0.41/src/spice-cha=
nnel.c:178 main-1:0: spice_channel_finalize 0x5622053970f0
0:00:08.798930222 236125 0x562204e5c670 INFO                GST_INIT gst.c:=
1116:gst_deinit: deinitializing GStreamer
0:00:08.801243693 236125 0x562204e5c670 INFO                GST_INIT gst.c:=
1260:gst_deinit: deinitialized GStreamer



If you have any suggestions as to what I am doing wrong or what I'm missing=
, I'd be greatful if you'd let me know.

Thanks,
Daniel
