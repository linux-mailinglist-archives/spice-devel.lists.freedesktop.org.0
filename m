Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25BA863AE72
	for <lists+spice-devel@lfdr.de>; Mon, 28 Nov 2022 18:07:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FBB810E2FF;
	Mon, 28 Nov 2022 17:07:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA49E89FF7
 for <spice-devel@lists.freedesktop.org>; Mon, 28 Nov 2022 13:06:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1669640775;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=9yy350OauKOElccSmXxnA5PRs1oJwois74LkRn/A7v8=;
 b=MaNW3448cFCBJBO2VAslC+CsZqJQiU7vlCyjIEeLBRUKO9j8MZcpp5GPJew8f/PVJnAKp+
 /h8meBFMzs2bM4BT/EPC06dwRAjFTEmh68CCf/jPqWgjg9kkwhFJgQu9WQEQiApDF3yZRm
 Zp2UPqSQcQq4EBfxyaKynJGtozMbEVE=
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com
 [209.85.210.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-341-J_9MKI2tPFuse1xNWJdbiA-1; Mon, 28 Nov 2022 08:04:23 -0500
X-MC-Unique: J_9MKI2tPFuse1xNWJdbiA-1
Received: by mail-ot1-f70.google.com with SMTP id
 q22-20020a05683022d600b0066d919dd4c4so4291939otc.23
 for <spice-devel@lists.freedesktop.org>; Mon, 28 Nov 2022 05:04:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=9yy350OauKOElccSmXxnA5PRs1oJwois74LkRn/A7v8=;
 b=AzyynVwsm8wSwPJyrvihwLN0fnQRiV7UL77eZ+ZrAzEc8dGwalfj2r+gW7ia032c7X
 UwVJ77P6c3t31tvGCFD9hVm+cG5P4WWnWJWooMD/frs4+Jhe3oVd2H1Vvh3HMQD+bbfa
 xc+FwKbl1uUrLE4zGhLkYyvjf2+LJkdVpiLpLWxDSpqVvoWUvSOb2yVTE7VQVVgui1Sc
 /YGJPpsujweYRdNu0nMazuBsre00+ZITqt6/qsyFYn03eoF45wgDeTAUuD/ps8uXlBWL
 bHedGfSZ2ahLluJt5GmmKXU11iwfLlPqYvd0wWiOVzERLoT8ZfqiWNkJzcdzePt4MM7w
 9rww==
X-Gm-Message-State: ANoB5plpROOSjlYx8dB+9WZ6Z0jN2JaMfia45AM86LuiDYNRF932tF6P
 cU0136z4uStZkhrTNHRCBRbP82RB6PC9SloMB5qI54MNywudDuAAgrDGsVMBkd+0+CILP+4X2sM
 h34p45Mosai15Qyl3LL/4+WoqUMLCJPeU29Xsb1oMqMbtafc=
X-Received: by 2002:a05:6808:16a9:b0:35a:76f3:f550 with SMTP id
 bb41-20020a05680816a900b0035a76f3f550mr24288266oib.219.1669640662329; 
 Mon, 28 Nov 2022 05:04:22 -0800 (PST)
X-Google-Smtp-Source: AA0mqf6zbMvDx1kntD5Lbj2BeUwfKeQYIkT7JJEsSfyiZrEQ5sPK0hnA5sCQcvENBmrtWXSfw1wpIoUhQ/I7RYq2DPw=
X-Received: by 2002:a05:6808:16a9:b0:35a:76f3:f550 with SMTP id
 bb41-20020a05680816a900b0035a76f3f550mr24288226oib.219.1669640661848; Mon, 28
 Nov 2022 05:04:21 -0800 (PST)
MIME-Version: 1.0
References: <WefH0kcTW7ZcEJKoS36RR92aNVDLiXWVT8H27ogg3GaTK84TAGQdrOCZ9bP4URYdLMu4NQaAC1Kk89EX3h_en_QfyiVSR0jVQwAUwb_jOY4=@ecentrum.hu>
 <20221127140124.yvtvkwr4i5afbjut@tapioca>
In-Reply-To: <20221127140124.yvtvkwr4i5afbjut@tapioca>
From: Uri Lublin <ulublin@redhat.com>
Date: Mon, 28 Nov 2022 15:04:10 +0200
Message-ID: <CAAg9qJ2dCOMUz5RgUPvLhGi2nbOfdrxFGKYmaUxuw2fAq8eCug@mail.gmail.com>
To: =?UTF-8?B?TMOpdmFpLCBEw6FuaWVs?= <leva@ecentrum.hu>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000008d6bb405ee8782eb"
X-Mailman-Approved-At: Mon, 28 Nov 2022 17:07:35 +0000
Subject: Re: [Spice-devel] Trying to turn on gstreamer vaapi {en,de}coding
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--0000000000008d6bb405ee8782eb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Nov 27, 2022 at 4:04 PM Victor Toso <victortoso@redhat.com> wrote:

> Hi,
> On Fri, Nov 25, 2022 at 12:32:57PM +0000, L=C3=A9vai, D=C3=A1niel wrote:
> > Hi all!
> >
> > First time here, and was a bit hesitant to post tbh, as this is
> > not a "-devel" sort of thing, but reading through the posts
> > here it seamed there have been some technical questions
> > already, so I'm trying my luck. The post is a bit longwinded,
> > it has a bunch of debug outputs and parameters in-line, please
> > let me know if you prefer sharing these in another way.
>
> It is fine to post it here.
>
> > I'm using a couple of VMs with libvirt/qemu hosted on an Ubuntu
> > 22.04.1 LTS, accessing them via Spice from an Arch system. The
> > connection between Hypevisor and client are via Internet, so
> > despite 'localhost' being the host in the tests/examples below,
> > they don't actually run on the same system, it's just a tunnel
> > via `stunnel`.
>
> > What I wanted to do is speed up the display (drawing) so it
> > won't lag that much when browsing through spreadsheets and
> > using console (with small fonts, admittedly). The resolution
> > also plays a role in this at 2560x1440 (only one spice
> > display).
>
> Note that host video encoding will lag a bit. This is what you
> are trying. It should be better with spice-streaming-agent by
> setting up a video card to the guest, an example:
>
>
> https://www.spice-space.org/demos.html#accelerated-spice-streaming-with-i=
ntel


>
> > What I've tried already is changing the spice section in the domain
> configuration in libvirt:
> >     <graphics type=3D'spice' port=3D'5912' autoport=3D'no' listen=3D'12=
7.0.0.1'>
> >       <listen type=3D'address' address=3D'127.0.0.1'/>
> >       <image compression=3D'auto_glz'/>
> >       <jpeg compression=3D'never'/>
> >       <zlib compression=3D'never'/>
> >       <streaming mode=3D'all'/>
> >       <filetransfer enable=3D'yes'/>
> >       <gl enable=3D'no'/>
> >     </graphics>
>
> > Which translates into this -spice qemu parameter:
> > -spice
> port=3D5912,addr=3D127.0.0.1,disable-ticketing=3Don,image-compression=3Da=
uto_glz,jpeg-wan-compression=3Dnever,zlib-glz-wan-compression=3Dnever,strea=
ming-video=3Dall,seamless-migration=3Don
>
> > ... with the complete command as follows:
> > /usr/bin/qemu-system-x86_64 -name guest=3Darch,debug-threads=3Don -S -o=
bject
> {"qom-type":"secret","id":"masterKey0","format":"raw","file":"/var/lib/li=
bvirt/qemu/domain-22-arch/master-key.aes"}
> -machine
> pc-q35-4.2,usb=3Doff,vmport=3Doff,dump-guest-core=3Doff,memory-backend=3D=
pc.ram
> -accel kvm -cpu
> Cooperlake,ss=3Don,vmx=3Don,pdcm=3Don,hypervisor=3Don,tsc-adjust=3Don,sha=
-ni=3Don,umip=3Don,waitpkg=3Don,gfni=3Don,vaes=3Don,vpclmulqdq=3Don,rdpid=
=3Don,movdiri=3Don,movdir64b=3Don,fsrm=3Don,md-clear=3Don,avx-vnni=3Don,xsa=
ves=3Don,ibpb=3Don,ibrs=3Don,amd-stibp=3Don,amd-ssbd=3Don,hle=3Doff,rtm=3Do=
ff,avx512f=3Doff,avx512dq=3Doff,avx512cd=3Doff,avx512bw=3Doff,avx512vl=3Dof=
f,avx512vnni=3Doff,avx512-bf16=3Doff,taa-no=3Doff
> -m 16384 -object
> {"qom-type":"memory-backend-ram","id":"pc.ram","size":17179869184}
> -overcommit mem-lock=3Doff -smp 4,sockets=3D4,cores=3D1,threads=3D1 -no-u=
ser-config
> -nodefaults -chardev socket,id=3Dcharmonitor,fd=3D38,server=3Don,wait=3Do=
ff -mon
> chardev=3Dcharmonitor,id=3Dmonitor,mode=3Dcontrol -rtc base=3Dutc,driftfi=
x=3Dslew
> -global kvm-pit.lost_tick_policy=3Ddelay -no-hpet -no-shutdown -global
> ICH9-LPC.disable_s3=3D1 -global ICH9-LPC.disable_s4=3D1 -boot strict=3Don=
 -device
> pcie-root-port,port=3D16,chassis=3D1,id=3Dpci.1,bus=3Dpcie.0,multifunctio=
n=3Don,addr=3D0x2
> -device pcie-root-port,port=3D17,chassis=3D2,id=3Dpci.2,bus=3Dpcie.0,addr=
=3D0x2.0x1
> -device pcie-root-port,port=3D18,chassis=3D3,id=3Dpci.3,bus=3Dpcie.0,addr=
=3D0x2.0x2
> -device pcie-root-port,port=3D19,chassis=3D4,id=3Dpci.4,bus=3Dpcie.0,addr=
=3D0x2.0x3
> -device pcie-root-port,port=3D20,chassis=3D5,id=3Dpci.5,bus=3Dpcie.0,addr=
=3D0x2.0x4
> -device pcie-root-port,port=3D21,chassis=3D6,id=3Dpci.6,bus=3Dpcie.0,addr=
=3D0x2.0x5
> -device pcie-root-port,port=3D22,chassis=3D7,id=3Dpci.7,bus=3Dpcie.0,addr=
=3D0x2.0x6
> -device pcie-root-port,port=3D23,chassis=3D8,id=3Dpci.8,bus=3Dpcie.0,addr=
=3D0x2.0x7
> -device qemu-xhci,p2=3D15,p3=3D15,id=3Dusb,bus=3Dpci.2,addr=3D0x0 -device
> virtio-serial-pci,id=3Dvirtio-serial0,bus=3Dpci.3,addr=3D0x0 -blockdev
> {"driver":"file","filename":"/var/lib/libvirt/images/archlinux.qcow2","no=
de-name":"libvirt-2-storage","auto-read-only":true,"discard":"unmap"}
> -blockdev
> {"node-name":"libvirt-2-format","read-only":false,"driver":"qcow2","file"=
:"libvirt-2-storage","backing":null}
> -device
> virtio-blk-pci,bus=3Dpci.4,addr=3D0x0,drive=3Dlibvirt-2-format,id=3Dvirti=
o-disk0,bootindex=3D1
> -device ide-cd,bus=3Dide.0,id=3Dsata0-0-0 -netdev
> tap,fd=3D39,id=3Dhostnet0,vhost=3Don,vhostfd=3D41 -device
> virtio-net-pci,netdev=3Dhostnet0,id=3Dnet0,bus=3Dpci.1,addr=3D0x0 -charde=
v
> pty,id=3Dcharserial0 -device isa-serial,chardev=3Dcharserial0,id=3Dserial=
0
> -chardev socket,id=3Dcharchannel0,fd=3D35,server=3Don,wait=3Doff -device
> virtserialport,bus=3Dvirtio-serial0.0,nr=3D1,chardev=3Dcharchannel0,id=3D=
channel0,name=3Dorg.qemu.guest_agent.0
> -chardev spicevmc,id=3Dcharchannel1,name=3Dvdagent -device
> virtserialport,bus=3Dvirtio-serial0.0,nr=3D2,chardev=3Dcharchannel1,id=3D=
channel1,name=3Dcom.redhat.spice.0
> -device usb-tablet,id=3Dinput0,bus=3Dusb.0,port=3D1 -device
> virtio-keyboard-pci,id=3Dinput2,bus=3Dpci.7,addr=3D0x0 -device
> usb-mouse,id=3Dinput3,bus=3Dusb.0,port=3D4 -audiodev
> {"id":"audio1","driver":"spice"} -spice
> port=3D5912,addr=3D127.0.0.1,disable-ticketing=3Don,image-compression=3Da=
uto_glz,jpeg-wan-compression=3Dnever,zlib-glz-wan-compression=3Dnever,strea=
ming-video=3Dall,seamless-migration=3Don
> -device virtio-vga,id=3Dvideo0,max_outputs=3D1,bus=3Dpcie.0,addr=3D0x1 -d=
evice
> ich9-intel-hda,id=3Dsound0,bus=3Dpcie.0,addr=3D0x1b -device
> hda-duplex,id=3Dsound0-codec0,bus=3Dsound0.0,cad=3D0,audiodev=3Daudio1 -c=
hardev
> spicevmc,id=3Dcharredir0,name=3Dusbredir -device
> usb-redir,chardev=3Dcharredir0,id=3Dredir0,bus=3Dusb.0,port=3D2 -chardev
> spicevmc,id=3Dcharredir1,name=3Dusbredir -device
> usb-redir,chardev=3Dcharredir1,id=3Dredir1,bus=3Dusb.0,port=3D3 -device
> virtio-balloon-pci,id=3Dballoon0,bus=3Dpci.5,addr=3D0x0 -object
> {"qom-type":"rng-random","id":"objrng0","filename":"/dev/urandom"} -devic=
e
> virtio-rng-pci,rng=3Dobjrng0,id=3Drng0,bus=3Dpci.6,addr=3D0x0 -sandbox
> on,obsolete=3Ddeny,elevateprivileges=3Ddeny,spawn=3Ddeny,resourcecontrol=
=3Ddeny
> -msg timestamp=3Don
>
> > Basically, I thought turning 'streaming mode'/'streaming-video'
> > to 'all' would make spice think it needs to stream the whole
> > screen content regardless of its heuristics detecting a video
> > stream.
>
> I'm replying by memory here, so I might be a little off. But just
> to add a bit more info. The streaming mode set to 'all' means
> that all regions being updated too often in the Display are
> included in one video stream that encapsulate those regions. The
> 'filter' mode, iirc, would split the different regions in
> different video streams.
>
> The whole screen streaming only happens if needed, even with
> mode set to 'all'.
>

Only areas on the screen that are recognized as video are sent as
video-stream, not
the whole screen.
IIRC, "all" is for all areas that are recognized, while "filter" does not
stream small areas.
Every area/region has its own video-stream.

What you (Daniel) want is for qemu (+spice-server) to, at intervals, render
the
whole screen, hardware-encode it and send it as a video stream to the
client.
Currently, this feature is not implemented.
I think some years ago Frediano wrote some code that does that as an
experiment. IIRC, there was an issue with the gstreamer ORC library
running in the environment libvirt creates for the qemu-kvm process.


Regards,
    Uri


> > I thought if I could enable HW encoding/decoding with
> > these options, I'd get better performance out of it.
>
> Yeah, that's a fair assumption. The main issue in general is with
> latency that video encoding adds, be it software or hardware.
>
> <snipped, package information>

>
> > As part of troubleshooting here, I checked if I have the
> > necessary codecs/encoders/decoders with gstreamer on the
> > different systems:
> >
> > On the hypervisor host (with Intel Alderlake (12th gen) graphics):
> >
> > As my unrpivileged user:
> > $ gst-inspect-1.0 |grep -F -i vaapi
> > vaapi:  vaapiav1dec: VA-API AV1 decoder
> > vaapi:  vaapidecodebin: VA-API Decode Bin
> > vaapi:  vaapih264dec: VA-API H264 decoder
> > vaapi:  vaapih264enc: VA-API H264 encoder
> > vaapi:  vaapih265dec: VA-API H265 decoder
> > vaapi:  vaapih265enc: VA-API H265 encoder
> > vaapi:  vaapijpegdec: VA-API JPEG decoder
> > vaapi:  vaapijpegenc: VA-API JPEG encoder
> > vaapi:  vaapimpeg2dec: VA-API MPEG2 decoder
> > vaapi:  vaapimpeg2enc: VA-API MPEG-2 encoder
> > vaapi:  vaapioverlay: VA-API overlay
> > vaapi:  vaapipostproc: VA-API video postprocessing
> > vaapi:  vaapisink: VA-API sink
> > vaapi:  vaapivc1dec: VA-API VC1 decoder
> > vaapi:  vaapivp9dec: VA-API VP9 decoder
> > vaapi:  vaapivp9enc: VA-API VP9 encoder
> >
> > As the libvirt user that runs qemu:
> > # sudo -u libvirt-qemu gst-inspect-1.0 |grep -F -i vaapi
> > vaapi:  vaapiav1dec: VA-API AV1 decoder
> > vaapi:  vaapidecodebin: VA-API Decode Bin
> > vaapi:  vaapih264dec: VA-API H264 decoder
> > vaapi:  vaapih264enc: VA-API H264 encoder
> > vaapi:  vaapih265dec: VA-API H265 decoder
> > vaapi:  vaapih265enc: VA-API H265 encoder
> > vaapi:  vaapijpegdec: VA-API JPEG decoder
> > vaapi:  vaapijpegenc: VA-API JPEG encoder
> > vaapi:  vaapimpeg2dec: VA-API MPEG2 decoder
> > vaapi:  vaapimpeg2enc: VA-API MPEG-2 encoder
> > vaapi:  vaapioverlay: VA-API overlay
> > vaapi:  vaapipostproc: VA-API video postprocessing
> > vaapi:  vaapisink: VA-API sink
> > vaapi:  vaapivc1dec: VA-API VC1 decoder
> > vaapi:  vaapivp9dec: VA-API VP9 decoder
> > vaapi:  vaapivp9enc: VA-API VP9 encoder
> >
> > On the client (with Intel CometLake (10th gen) graphics):
> > As my user running the client (spicy/remote-viewer):
> > $ gst-inspect-1.0 |grep -F -i vaapi
> > vaapi:  vaapidecodebin: VA-API Decode Bin
> > vaapi:  vaapih264dec: VA-API H264 decoder
> > vaapi:  vaapih264enc: VA-API H264 encoder
> > vaapi:  vaapih265dec: VA-API H265 decoder
> > vaapi:  vaapih265enc: VA-API H265 encoder
> > vaapi:  vaapijpegdec: VA-API JPEG decoder
> > vaapi:  vaapijpegenc: VA-API JPEG encoder
> > vaapi:  vaapimpeg2dec: VA-API MPEG2 decoder
> > vaapi:  vaapimpeg2enc: VA-API MPEG-2 encoder
> > vaapi:  vaapioverlay: VA-API overlay
> > vaapi:  vaapipostproc: VA-API video postprocessing
> > vaapi:  vaapisink: VA-API sink
> > vaapi:  vaapivc1dec: VA-API VC1 decoder
> > vaapi:  vaapivp8dec: VA-API VP8 decoder
> > vaapi:  vaapivp8enc: VA-API VP8 encoder
> > vaapi:  vaapivp9dec: VA-API VP9 decoder
> >
> > (a good common ground could be VP9 as the host can encode and
> > the client can decode, or h264/h265 as both can encode/decode)
>
> There are a lot of settings that you'll likely need to tweak in
> spice server (host) for good optimization and even hardware
> encoding. You can see at [0] that the plugin for video encoding
> is hardcoded with x264enc. I can't see if you have it or not in
> your host because of the grep, but that could be another reason
> for not being able to encode in h264 (edit: seems to be present
> in the logs)
>
> [0]
> https://gitlab.freedesktop.org/spice/spice/-/blob/master/server/gstreamer=
-encoder.c#L887
>
> The spice-gtk (client) uses GStreamer's most generic elements to
> give it the possibility to setup a video decoding in the best way
> possible, preferably with hardware encoded although that was not
> guaranteed when I implemented that logic.
>
> > As an example of using vaapi, tested with mpv (--vo=3Dgpu):
>

<snipped, it works>


> > This works fine, while also can check the GPU utilization with
> > intel_gpu_top - the /Video/ metric keeps changing during
> > playback.
> >
> > So I'm testing with `spicy` first and foremost because it
> > actually has a menu option to switch between video encodings,
> > which I don't know how to do with e.g. remote-viewer or
> > virt-viewer.
> >
> > $ GST_DEBUG=3D4 spicy --spice-debug -p 5912 -h localhost
> >
> > Long story short, while the client output shows that gstreamer
> > picks up its vaapi plugin, and actually loads the intel iHD DRI
> > driver, it still doesn't use the GPU to decode.
>
> > I'm afraid something lies underneath the configuration and the
> > protocol that I don't understand. Maybe the host doesn't even
> > encode its stream into e.g. h264 even though the client
> > (=3Dspicy) requests so, therefore it can't very well decode it
> > with the GPU.
>
> > I imagined something along the lines of Spice encoding the
> > stream on the host with the help of the GPU (gstreamer + vaapi)
> > and then the client could decode it on the other end with its
> > GPU as well - as far as they agree on a codec that both support
> > (more specifically the host supports encoding to it and the
> > client suppports decoding from it).
> >
> > I was afraid of posting the full output with --spice-debug,
> > becuase it had a ton of "decode-glz.c:335 decode_header:" and
> > "scroll event" lines, so I snipped these out from it.
>
>
<snipped, log lines>

> If you have any suggestions as to what I am doing wrong or what
> > I'm missing, I'd be greatful if you'd let me know.
>
> From what I could see, you have set the h264 video-codec
> preference at 13:06:46 and terminated spicy around 13:06:49.
>
> So, perhaps the first issue is the assumption that as soon as you
> set the video-codec preference, that the stream will start. It'll
> not. The streaming will happen based on update frequency on the
> display. For example, a clock updating the seconds, once every
> second, will not create a video streaming. You should try running
> an App that has high update frequency or just a video.
>
> GStreamer needs to be enabled in spice-server at build time too.
> You can check with ldd in libspice-server.so...
>
> So, the logs from spice-server would be useful to know what issue
> might have happened at encoding if it doesn't work.
>
> Just trying to give you some ideas and directions to go.
>
> Cheers,
> Victor
>

--0000000000008d6bb405ee8782eb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi,<br></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Nov 27, 2022 at 4:04 PM Vi=
ctor Toso &lt;<a href=3D"mailto:victortoso@redhat.com">victortoso@redhat.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>Hi,<br>
On Fri, Nov 25, 2022 at 12:32:57PM +0000, L=C3=A9vai, D=C3=A1niel wrote:<br=
>
&gt; Hi all!<br>
&gt;<br>
&gt; First time here, and was a bit hesitant to post tbh, as this is<br>
&gt; not a &quot;-devel&quot; sort of thing, but reading through the posts<=
br>
&gt; here it seamed there have been some technical questions<br>
&gt; already, so I&#39;m trying my luck. The post is a bit longwinded,<br>
&gt; it has a bunch of debug outputs and parameters in-line, please<br>
&gt; let me know if you prefer sharing these in another way.<br>
<br>
It is fine to post it here.<br>
<br>
&gt; I&#39;m using a couple of VMs with libvirt/qemu hosted on an Ubuntu<br=
>
&gt; 22.04.1 LTS, accessing them via Spice from an Arch system. The<br>
&gt; connection between Hypevisor and client are via Internet, so<br>
&gt; despite &#39;localhost&#39; being the host in the tests/examples below=
,<br>
&gt; they don&#39;t actually run on the same system, it&#39;s just a tunnel=
<br>
&gt; via `stunnel`.<br>
<br>
&gt; What I wanted to do is speed up the display (drawing) so it<br>
&gt; won&#39;t lag that much when browsing through spreadsheets and<br>
&gt; using console (with small fonts, admittedly). The resolution<br>
&gt; also plays a role in this at 2560x1440 (only one spice<br>
&gt; display).<br>
<br>
Note that host video encoding will lag a bit. This is what you<br>
are trying. It should be better with spice-streaming-agent by<br>
setting up a video card to the guest, an example:<br>
<br>
=C2=A0 =C2=A0 <a href=3D"https://www.spice-space.org/demos.html#accelerated=
-spice-streaming-with-intel" rel=3D"noreferrer" target=3D"_blank">https://w=
ww.spice-space.org/demos.html#accelerated-spice-streaming-with-intel</a></b=
lockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
&gt; What I&#39;ve tried already is changing the spice section in the domai=
n configuration in libvirt:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;graphics type=3D&#39;spice&#39; port=3D&#39;591=
2&#39; autoport=3D&#39;no&#39; listen=3D&#39;127.0.0.1&#39;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;listen type=3D&#39;address&#39; address=
=3D&#39;127.0.0.1&#39;/&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;image compression=3D&#39;auto_glz&#39;/&=
gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;jpeg compression=3D&#39;never&#39;/&gt;<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;zlib compression=3D&#39;never&#39;/&gt;<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;streaming mode=3D&#39;all&#39;/&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;filetransfer enable=3D&#39;yes&#39;/&gt;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;gl enable=3D&#39;no&#39;/&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;/graphics&gt;<br>
<br>
&gt; Which translates into this -spice qemu parameter:<br>
&gt; -spice port=3D5912,addr=3D127.0.0.1,disable-ticketing=3Don,image-compr=
ession=3Dauto_glz,jpeg-wan-compression=3Dnever,zlib-glz-wan-compression=3Dn=
ever,streaming-video=3Dall,seamless-migration=3Don<br>
<br>
&gt; ... with the complete command as follows:<br>
&gt; /usr/bin/qemu-system-x86_64 -name guest=3Darch,debug-threads=3Don -S -=
object {&quot;qom-type&quot;:&quot;secret&quot;,&quot;id&quot;:&quot;master=
Key0&quot;,&quot;format&quot;:&quot;raw&quot;,&quot;file&quot;:&quot;/var/l=
ib/libvirt/qemu/domain-22-arch/master-key.aes&quot;} -machine pc-q35-4.2,us=
b=3Doff,vmport=3Doff,dump-guest-core=3Doff,memory-backend=3Dpc.ram -accel k=
vm -cpu Cooperlake,ss=3Don,vmx=3Don,pdcm=3Don,hypervisor=3Don,tsc-adjust=3D=
on,sha-ni=3Don,umip=3Don,waitpkg=3Don,gfni=3Don,vaes=3Don,vpclmulqdq=3Don,r=
dpid=3Don,movdiri=3Don,movdir64b=3Don,fsrm=3Don,md-clear=3Don,avx-vnni=3Don=
,xsaves=3Don,ibpb=3Don,ibrs=3Don,amd-stibp=3Don,amd-ssbd=3Don,hle=3Doff,rtm=
=3Doff,avx512f=3Doff,avx512dq=3Doff,avx512cd=3Doff,avx512bw=3Doff,avx512vl=
=3Doff,avx512vnni=3Doff,avx512-bf16=3Doff,taa-no=3Doff -m 16384 -object {&q=
uot;qom-type&quot;:&quot;memory-backend-ram&quot;,&quot;id&quot;:&quot;pc.r=
am&quot;,&quot;size&quot;:17179869184} -overcommit mem-lock=3Doff -smp 4,so=
ckets=3D4,cores=3D1,threads=3D1 -no-user-config -nodefaults -chardev socket=
,id=3Dcharmonitor,fd=3D38,server=3Don,wait=3Doff -mon chardev=3Dcharmonitor=
,id=3Dmonitor,mode=3Dcontrol -rtc base=3Dutc,driftfix=3Dslew -global kvm-pi=
t.lost_tick_policy=3Ddelay -no-hpet -no-shutdown -global ICH9-LPC.disable_s=
3=3D1 -global ICH9-LPC.disable_s4=3D1 -boot strict=3Don -device pcie-root-p=
ort,port=3D16,chassis=3D1,id=3Dpci.1,bus=3Dpcie.0,multifunction=3Don,addr=
=3D0x2 -device pcie-root-port,port=3D17,chassis=3D2,id=3Dpci.2,bus=3Dpcie.0=
,addr=3D0x2.0x1 -device pcie-root-port,port=3D18,chassis=3D3,id=3Dpci.3,bus=
=3Dpcie.0,addr=3D0x2.0x2 -device pcie-root-port,port=3D19,chassis=3D4,id=3D=
pci.4,bus=3Dpcie.0,addr=3D0x2.0x3 -device pcie-root-port,port=3D20,chassis=
=3D5,id=3Dpci.5,bus=3Dpcie.0,addr=3D0x2.0x4 -device pcie-root-port,port=3D2=
1,chassis=3D6,id=3Dpci.6,bus=3Dpcie.0,addr=3D0x2.0x5 -device pcie-root-port=
,port=3D22,chassis=3D7,id=3Dpci.7,bus=3Dpcie.0,addr=3D0x2.0x6 -device pcie-=
root-port,port=3D23,chassis=3D8,id=3Dpci.8,bus=3Dpcie.0,addr=3D0x2.0x7 -dev=
ice qemu-xhci,p2=3D15,p3=3D15,id=3Dusb,bus=3Dpci.2,addr=3D0x0 -device virti=
o-serial-pci,id=3Dvirtio-serial0,bus=3Dpci.3,addr=3D0x0 -blockdev {&quot;dr=
iver&quot;:&quot;file&quot;,&quot;filename&quot;:&quot;/var/lib/libvirt/ima=
ges/archlinux.qcow2&quot;,&quot;node-name&quot;:&quot;libvirt-2-storage&quo=
t;,&quot;auto-read-only&quot;:true,&quot;discard&quot;:&quot;unmap&quot;} -=
blockdev {&quot;node-name&quot;:&quot;libvirt-2-format&quot;,&quot;read-onl=
y&quot;:false,&quot;driver&quot;:&quot;qcow2&quot;,&quot;file&quot;:&quot;l=
ibvirt-2-storage&quot;,&quot;backing&quot;:null} -device virtio-blk-pci,bus=
=3Dpci.4,addr=3D0x0,drive=3Dlibvirt-2-format,id=3Dvirtio-disk0,bootindex=3D=
1 -device ide-cd,bus=3Dide.0,id=3Dsata0-0-0 -netdev tap,fd=3D39,id=3Dhostne=
t0,vhost=3Don,vhostfd=3D41 -device virtio-net-pci,netdev=3Dhostnet0,id=3Dne=
t0,bus=3Dpci.1,addr=3D0x0 -chardev pty,id=3Dcharserial0 -device isa-serial,=
chardev=3Dcharserial0,id=3Dserial0 -chardev socket,id=3Dcharchannel0,fd=3D3=
5,server=3Don,wait=3Doff -device virtserialport,bus=3Dvirtio-serial0.0,nr=
=3D1,chardev=3Dcharchannel0,id=3Dchannel0,name=3Dorg.qemu.guest_agent.0 -ch=
ardev spicevmc,id=3Dcharchannel1,name=3Dvdagent -device virtserialport,bus=
=3Dvirtio-serial0.0,nr=3D2,chardev=3Dcharchannel1,id=3Dchannel1,name=3Dcom.=
redhat.spice.0 -device usb-tablet,id=3Dinput0,bus=3Dusb.0,port=3D1 -device =
virtio-keyboard-pci,id=3Dinput2,bus=3Dpci.7,addr=3D0x0 -device usb-mouse,id=
=3Dinput3,bus=3Dusb.0,port=3D4 -audiodev {&quot;id&quot;:&quot;audio1&quot;=
,&quot;driver&quot;:&quot;spice&quot;} -spice port=3D5912,addr=3D127.0.0.1,=
disable-ticketing=3Don,image-compression=3Dauto_glz,jpeg-wan-compression=3D=
never,zlib-glz-wan-compression=3Dnever,streaming-video=3Dall,seamless-migra=
tion=3Don -device virtio-vga,id=3Dvideo0,max_outputs=3D1,bus=3Dpcie.0,addr=
=3D0x1 -device ich9-intel-hda,id=3Dsound0,bus=3Dpcie.0,addr=3D0x1b -device =
hda-duplex,id=3Dsound0-codec0,bus=3Dsound0.0,cad=3D0,audiodev=3Daudio1 -cha=
rdev spicevmc,id=3Dcharredir0,name=3Dusbredir -device usb-redir,chardev=3Dc=
harredir0,id=3Dredir0,bus=3Dusb.0,port=3D2 -chardev spicevmc,id=3Dcharredir=
1,name=3Dusbredir -device usb-redir,chardev=3Dcharredir1,id=3Dredir1,bus=3D=
usb.0,port=3D3 -device virtio-balloon-pci,id=3Dballoon0,bus=3Dpci.5,addr=3D=
0x0 -object {&quot;qom-type&quot;:&quot;rng-random&quot;,&quot;id&quot;:&qu=
ot;objrng0&quot;,&quot;filename&quot;:&quot;/dev/urandom&quot;} -device vir=
tio-rng-pci,rng=3Dobjrng0,id=3Drng0,bus=3Dpci.6,addr=3D0x0 -sandbox on,obso=
lete=3Ddeny,elevateprivileges=3Ddeny,spawn=3Ddeny,resourcecontrol=3Ddeny -m=
sg timestamp=3Don<br>
<br>
&gt; Basically, I thought turning &#39;streaming mode&#39;/&#39;streaming-v=
ideo&#39;<br>
&gt; to &#39;all&#39; would make spice think it needs to stream the whole<b=
r>
&gt; screen content regardless of its heuristics detecting a video<br>
&gt; stream.<br>
<br>
I&#39;m replying by memory here, so I might be a little off. But just<br>
to add a bit more info. The streaming mode set to &#39;all&#39; means<br>
that all regions being updated too often in the Display are<br>
included in one video stream that encapsulate those regions. The<br>
&#39;filter&#39; mode, iirc, would split the different regions in<br>
different video streams.<br>
<br>
The whole screen streaming only happens if needed, even with<br>
mode set to &#39;all&#39;.<br></blockquote><div><br></div><div>Only areas o=
n the screen that are recognized as video are sent as video-stream, not</di=
v><div>the whole screen.</div><div>IIRC, &quot;all&quot; is for all areas t=
hat are recognized, while &quot;filter&quot; does not stream small areas. <=
br></div><div>Every area/region has its own video-stream.<br></div><div><br=
></div><div>What you (Daniel) want is for qemu (+spice-server) to, at inter=
vals, render the</div><div>whole screen, hardware-encode it and send it as =
a video stream to the client.</div><div>Currently, this feature is not impl=
emented.<br></div><div>I think some years ago Frediano wrote some code that=
 does that as an</div><div>experiment. IIRC, there was an issue with the gs=
treamer ORC library</div><div>running in the environment libvirt creates fo=
r the qemu-kvm process.</div><div><br></div><div><br></div><div>Regards,</d=
iv><div>=C2=A0=C2=A0=C2=A0 Uri</div><div><br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">
<br>
&gt; I thought if I could enable HW encoding/decoding with<br>
&gt; these options, I&#39;d get better performance out of it.<br>
<br>
Yeah, that&#39;s a fair assumption. The main issue in general is with<br>
latency that video encoding adds, be it software or hardware.<br>
<br></blockquote><div>&lt;snipped, package information&gt;</div><div><br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">&gt;<br>
&gt; As part of troubleshooting here, I checked if I have the<br>
&gt; necessary codecs/encoders/decoders with gstreamer on the<br>
&gt; different systems:<br>
&gt;<br>
&gt; On the hypervisor host (with Intel Alderlake (12th gen) graphics):<br>
&gt;<br>
&gt; As my unrpivileged user:<br>
&gt; $ gst-inspect-1.0 |grep -F -i vaapi<br>
&gt; vaapi:=C2=A0 vaapiav1dec: VA-API AV1 decoder<br>
&gt; vaapi:=C2=A0 vaapidecodebin: VA-API Decode Bin<br>
&gt; vaapi:=C2=A0 vaapih264dec: VA-API H264 decoder<br>
&gt; vaapi:=C2=A0 vaapih264enc: VA-API H264 encoder<br>
&gt; vaapi:=C2=A0 vaapih265dec: VA-API H265 decoder<br>
&gt; vaapi:=C2=A0 vaapih265enc: VA-API H265 encoder<br>
&gt; vaapi:=C2=A0 vaapijpegdec: VA-API JPEG decoder<br>
&gt; vaapi:=C2=A0 vaapijpegenc: VA-API JPEG encoder<br>
&gt; vaapi:=C2=A0 vaapimpeg2dec: VA-API MPEG2 decoder<br>
&gt; vaapi:=C2=A0 vaapimpeg2enc: VA-API MPEG-2 encoder<br>
&gt; vaapi:=C2=A0 vaapioverlay: VA-API overlay<br>
&gt; vaapi:=C2=A0 vaapipostproc: VA-API video postprocessing<br>
&gt; vaapi:=C2=A0 vaapisink: VA-API sink<br>
&gt; vaapi:=C2=A0 vaapivc1dec: VA-API VC1 decoder<br>
&gt; vaapi:=C2=A0 vaapivp9dec: VA-API VP9 decoder<br>
&gt; vaapi:=C2=A0 vaapivp9enc: VA-API VP9 encoder<br>
&gt;<br>
&gt; As the libvirt user that runs qemu:<br>
&gt; # sudo -u libvirt-qemu gst-inspect-1.0 |grep -F -i vaapi<br>
&gt; vaapi:=C2=A0 vaapiav1dec: VA-API AV1 decoder<br>
&gt; vaapi:=C2=A0 vaapidecodebin: VA-API Decode Bin<br>
&gt; vaapi:=C2=A0 vaapih264dec: VA-API H264 decoder<br>
&gt; vaapi:=C2=A0 vaapih264enc: VA-API H264 encoder<br>
&gt; vaapi:=C2=A0 vaapih265dec: VA-API H265 decoder<br>
&gt; vaapi:=C2=A0 vaapih265enc: VA-API H265 encoder<br>
&gt; vaapi:=C2=A0 vaapijpegdec: VA-API JPEG decoder<br>
&gt; vaapi:=C2=A0 vaapijpegenc: VA-API JPEG encoder<br>
&gt; vaapi:=C2=A0 vaapimpeg2dec: VA-API MPEG2 decoder<br>
&gt; vaapi:=C2=A0 vaapimpeg2enc: VA-API MPEG-2 encoder<br>
&gt; vaapi:=C2=A0 vaapioverlay: VA-API overlay<br>
&gt; vaapi:=C2=A0 vaapipostproc: VA-API video postprocessing<br>
&gt; vaapi:=C2=A0 vaapisink: VA-API sink<br>
&gt; vaapi:=C2=A0 vaapivc1dec: VA-API VC1 decoder<br>
&gt; vaapi:=C2=A0 vaapivp9dec: VA-API VP9 decoder<br>
&gt; vaapi:=C2=A0 vaapivp9enc: VA-API VP9 encoder<br>
&gt;<br>
&gt; On the client (with Intel CometLake (10th gen) graphics):<br>
&gt; As my user running the client (spicy/remote-viewer):<br>
&gt; $ gst-inspect-1.0 |grep -F -i vaapi<br>
&gt; vaapi:=C2=A0 vaapidecodebin: VA-API Decode Bin<br>
&gt; vaapi:=C2=A0 vaapih264dec: VA-API H264 decoder<br>
&gt; vaapi:=C2=A0 vaapih264enc: VA-API H264 encoder<br>
&gt; vaapi:=C2=A0 vaapih265dec: VA-API H265 decoder<br>
&gt; vaapi:=C2=A0 vaapih265enc: VA-API H265 encoder<br>
&gt; vaapi:=C2=A0 vaapijpegdec: VA-API JPEG decoder<br>
&gt; vaapi:=C2=A0 vaapijpegenc: VA-API JPEG encoder<br>
&gt; vaapi:=C2=A0 vaapimpeg2dec: VA-API MPEG2 decoder<br>
&gt; vaapi:=C2=A0 vaapimpeg2enc: VA-API MPEG-2 encoder<br>
&gt; vaapi:=C2=A0 vaapioverlay: VA-API overlay<br>
&gt; vaapi:=C2=A0 vaapipostproc: VA-API video postprocessing<br>
&gt; vaapi:=C2=A0 vaapisink: VA-API sink<br>
&gt; vaapi:=C2=A0 vaapivc1dec: VA-API VC1 decoder<br>
&gt; vaapi:=C2=A0 vaapivp8dec: VA-API VP8 decoder<br>
&gt; vaapi:=C2=A0 vaapivp8enc: VA-API VP8 encoder<br>
&gt; vaapi:=C2=A0 vaapivp9dec: VA-API VP9 decoder<br>
&gt;<br>
&gt; (a good common ground could be VP9 as the host can encode and<br>
&gt; the client can decode, or h264/h265 as both can encode/decode)<br>
<br>
There are a lot of settings that you&#39;ll likely need to tweak in<br>
spice server (host) for good optimization and even hardware<br>
encoding. You can see at [0] that the plugin for video encoding<br>
is hardcoded with x264enc. I can&#39;t see if you have it or not in<br>
your host because of the grep, but that could be another reason<br>
for not being able to encode in h264 (edit: seems to be present<br>
in the logs)<br>
<br>
[0] <a href=3D"https://gitlab.freedesktop.org/spice/spice/-/blob/master/ser=
ver/gstreamer-encoder.c#L887" rel=3D"noreferrer" target=3D"_blank">https://=
gitlab.freedesktop.org/spice/spice/-/blob/master/server/gstreamer-encoder.c=
#L887</a><br>
<br>
The spice-gtk (client) uses GStreamer&#39;s most generic elements to<br>
give it the possibility to setup a video decoding in the best way<br>
possible, preferably with hardware encoded although that was not<br>
guaranteed when I implemented that logic.<br>
<br>
&gt; As an example of using vaapi, tested with mpv (--vo=3Dgpu):<br></block=
quote><div><br></div><div>&lt;snipped, it works&gt;<br></div><div>=C2=A0</d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">
&gt; This works fine, while also can check the GPU utilization with<br>
&gt; intel_gpu_top - the /Video/ metric keeps changing during<br>
&gt; playback.<br>
&gt;<br>
&gt; So I&#39;m testing with `spicy` first and foremost because it<br>
&gt; actually has a menu option to switch between video encodings,<br>
&gt; which I don&#39;t know how to do with e.g. remote-viewer or<br>
&gt; virt-viewer.<br>
&gt;<br>
&gt; $ GST_DEBUG=3D4 spicy --spice-debug -p 5912 -h localhost<br>
&gt;<br>
&gt; Long story short, while the client output shows that gstreamer<br>
&gt; picks up its vaapi plugin, and actually loads the intel iHD DRI<br>
&gt; driver, it still doesn&#39;t use the GPU to decode.<br>
<br>
&gt; I&#39;m afraid something lies underneath the configuration and the<br>
&gt; protocol that I don&#39;t understand. Maybe the host doesn&#39;t even<=
br>
&gt; encode its stream into e.g. h264 even though the client<br>
&gt; (=3Dspicy) requests so, therefore it can&#39;t very well decode it<br>
&gt; with the GPU.<br>
<br>
&gt; I imagined something along the lines of Spice encoding the<br>
&gt; stream on the host with the help of the GPU (gstreamer + vaapi)<br>
&gt; and then the client could decode it on the other end with its<br>
&gt; GPU as well - as far as they agree on a codec that both support<br>
&gt; (more specifically the host supports encoding to it and the<br>
&gt; client suppports decoding from it).<br>
&gt;<br>
&gt; I was afraid of posting the full output with --spice-debug,<br>
&gt; becuase it had a ton of &quot;decode-glz.c:335 decode_header:&quot; an=
d<br>
&gt; &quot;scroll event&quot; lines, so I snipped these out from it.<br>
<br></blockquote><div><br></div><div>&lt;snipped, log lines&gt;</div><div><=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
&gt; If you have any suggestions as to what I am doing wrong or what<br>
&gt; I&#39;m missing, I&#39;d be greatful if you&#39;d let me know.<br>
<br>
From what I could see, you have set the h264 video-codec<br>
preference at 13:06:46 and terminated spicy around 13:06:49.<br>
<br>
So, perhaps the first issue is the assumption that as soon as you<br>
set the video-codec preference, that the stream will start. It&#39;ll<br>
not. The streaming will happen based on update frequency on the<br>
display. For example, a clock updating the seconds, once every<br>
second, will not create a video streaming. You should try running<br>
an App that has high update frequency or just a video.<br>
<br>
GStreamer needs to be enabled in spice-server at build time too.<br>
You can check with ldd in libspice-server.so...<br>
<br>
So, the logs from spice-server would be useful to know what issue<br>
might have happened at encoding if it doesn&#39;t work.<br>
<br>
Just trying to give you some ideas and directions to go.<br>
<br>
Cheers,<br>
Victor<br>
</blockquote></div></div>

--0000000000008d6bb405ee8782eb--

