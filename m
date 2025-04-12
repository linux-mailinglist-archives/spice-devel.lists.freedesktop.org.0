Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB0AA8726E
	for <lists+spice-devel@lfdr.de>; Sun, 13 Apr 2025 17:48:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74EC310E08C;
	Sun, 13 Apr 2025 15:48:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com
 [209.85.219.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C547010E3D5
 for <spice-devel@lists.freedesktop.org>; Sat, 12 Apr 2025 18:54:54 +0000 (UTC)
Received: by mail-yb1-f180.google.com with SMTP id
 3f1490d57ef6-e6e2a303569so2314805276.0
 for <spice-devel@lists.freedesktop.org>; Sat, 12 Apr 2025 11:54:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1744484091; x=1745088891; darn=lists.freedesktop.org;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=QojsKYEdf5xIiTjlYsnAaKXw6i8WzEA0ShHVAIE5Ws8=;
 b=kje+/JooqSjpWZtb3DJ37HK4w2XSyh7GTlhdGqgognQ7DQS3El9kXpVmMnKnwB5pUT
 sKhdIUNd3Podl9TaNPAaYTDoe9ddTcrgggicZW7QEATjMtJrD6MQkLqsQrh6awf+5btU
 IbZ2a+NtYHNt0hGsJd26X28gk6DD5TY1u9n8D58OeyX591BXQinnE9DuA/WE1z3QYcBB
 m8vAtv7ULprscrZcjjQkjAXlmnZZfF0NJQoAqJK8Q0hTn2sD/Q77As/SwlbCCZlmjnQc
 SohH1HCmSdbV1mi5vNI7a4rU5dBHy1mjVCKTUeaY+L2ROrr+G8cZQml5YOHrdYqZ2RXK
 UhOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744484091; x=1745088891;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=QojsKYEdf5xIiTjlYsnAaKXw6i8WzEA0ShHVAIE5Ws8=;
 b=bzmHne9q90yeK4bn/PSH6Uzpbf6++Xjciw2ep2lFYxQvpfZunjk0/w8wPcStLVJDLL
 RZu2RC6/bboD6qXApDNOum0yJI4INv1bIonvoxBzytFP9aFPRDijWYjX1L5+GP8CIYp0
 HD92mdixdDAx9BHPAC1wzeR6AXvyKMdvvmwChXoCUnZRWyrWU0Qr5BwRyWbdWI6lskZB
 tnGt+EHsTVKv8Cot4Rc0LrfEMRh/5nwAw5S0tfdhzEqAIHw9WfyJp99yhchP6PBupx9Y
 OAlhKt5SrwR1lNibk0upRBq3pwLRyhEUmFB5/y5EYXauwFdg7jHJn85kCZwlLnRqnuaI
 lLSw==
X-Gm-Message-State: AOJu0Yz1Ou+JzLpShuJlKsvGLSJ6+O20SJ5p3t62m6Ed3+NEpeiuYsMf
 BSx8jaEdSJPSBNTSErmormcL9wjtytF/R9C9q+/8KW0FxlxhAAu+MihF0b/jk6z1kT5PPdf/oSA
 E3pR9T4YSuRdXnWxmBbgzpyX6+tuS6H15Px8eJA==
X-Gm-Gg: ASbGnctGant1bq9KDMV/iBX+au1nAlwxhe8B32XnhwGPSYYjbqW9b3SWOTt2tsHkJMg
 /mRtsPZ1WcupufanMIMMyFzbLChDSezDjbftIGF7wgOLWgZsnuqsPrrpR9LPJ46HZoQ+zINWTS6
 AvUn+ewRYyebIMoDCU1+APabc=
X-Google-Smtp-Source: AGHT+IFu+48sQ+k9w+5QPNR5W4ZLiCl2cInaVQROay9kcaKgNOXkrU4umT5irVAx0b9mFRvMCMl3JUSBM93YeNBWFWg=
X-Received: by 2002:a05:690c:6e03:b0:6f9:447d:d1a2 with SMTP id
 00721157ae682-70559a76c2dmr122278227b3.29.1744484091460; Sat, 12 Apr 2025
 11:54:51 -0700 (PDT)
MIME-Version: 1.0
From: Serhio Gor <yousergor@gmail.com>
Date: Sat, 12 Apr 2025 21:56:17 +0300
X-Gm-Features: ATxdqUGGs3qAIFpazBlQkSt6iAzokuKFGIMHbyrM3MoRGkwfSxLyzwqZj7OndfU
Message-ID: <CAGSeoByMZYXsCq480ExO2UgMOWZQdLp8a0J=0Gy84eE_=MeqQg@mail.gmail.com>
Subject: Problem with QXL driver
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="0000000000009688df0632995a9e"
X-Mailman-Approved-At: Sun, 13 Apr 2025 15:48:42 +0000
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

--0000000000009688df0632995a9e
Content-Type: text/plain; charset="UTF-8"

Hello,
My name is Sergio , I'm sysadmin  and I use Proxmox with virtual machines
with Spice remote connection.
Today I faced with problem -

Have Virtual machine with Devuan and GUI Mate . During surfing in internet
and when I click some buttons on pages the virtual machine freezes and
don't work . In logs I found
kernel: [16172.719139] [drm:qxl_gem_object_create [qxl]] *ERROR* Failed to
allocate GEM object (261164, 1, 4096, -12)
kernel: [16172.719160] [drm:qxl_alloc_ioctl [qxl]] *ERROR* qxl_alloc_ioctl:
failed to create gem ret=-12

 I found this problem  described here
https://forum.proxmox.com/threads/ttm-buffer-eviction-failed.152720/
solution is not to use QXL but use virtio
=================================================
Hi,

@jebbam <https://forum.proxmox.com/members/77564/> I cannot solve your
problem but at least I can reference a workaround:
https://bbs.archlinux.org/viewtopic.php?id=215839

QXL should be the culprit and the workaround is to switch to VirtIO for the
display settings.

View attachment 75429 <https://forum.proxmox.com/attachments/75429/>

VDI Client still works fine. Also feels faster.

Other reference and bonus:
https://www.reddit.com/r/Proxmox/comments/1b01sbx/spice_really_sluggish_with_ubuntu_2204/
https://www.reddit.com/r/Proxmox/comments/1auvdlg/qxl_vs_virtio_gpu_vs_virgl_gpu_trivial_benchmark/

Best regards,
Stefan
===================================================
but I need Spice connection to virtual machines and without qxl it doesn't
work.

I ask you if you have some patch or another solution for this problem
please give me answer.
Thank you in advance!

--0000000000009688df0632995a9e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,=C2=A0<div>My name is Sergio , I&#39;m sysadmin=C2=
=A0 and I use Proxmox with virtual machines with Spice remote connection.=
=C2=A0</div><div>Today I faced with problem -</div><div><br></div><div>Have=
 Virtual machine with Devuan and GUI Mate . During surfing in internet and =
when I click some buttons on pages the virtual machine freezes and don&#39;=
t work . In logs I found=C2=A0</div>kernel: [16172.719139] [drm:qxl_gem_obj=
ect_create [qxl]] *ERROR* Failed to allocate GEM object (261164, 1, 4096, -=
12)<div>kernel: [16172.719160] [drm:qxl_alloc_ioctl [qxl]] *ERROR* qxl_allo=
c_ioctl: failed to create gem ret=3D-12</div><div><br></div><div>=C2=A0I fo=
und this problem=C2=A0 described here=C2=A0<div><a href=3D"https://forum.pr=
oxmox.com/threads/ttm-buffer-eviction-failed.152720/">https://forum.proxmox=
.com/threads/ttm-buffer-eviction-failed.152720/</a>=C2=A0</div></div><div>s=
olution is not to use QXL but use virtio</div><div><span style=3D"color:rgb=
(20,22,24);font-family:&quot;Open Sans&quot;,Roboto,-apple-system,BlinkMacS=
ystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot=
;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;font-size:13=
px;background-color:rgb(249,250,250)">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span></div><div><span style=3D"color:=
rgb(20,22,24);font-family:&quot;Open Sans&quot;,Roboto,-apple-system,BlinkM=
acSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&q=
uot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;font-size=
:13px;background-color:rgb(249,250,250)">Hi,</span><br style=3D"box-sizing:=
border-box;color:rgb(20,22,24);font-family:&quot;Open Sans&quot;,Roboto,-ap=
ple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,=
&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,san=
s-serif;font-size:13px;background-color:rgb(249,250,250)"><br style=3D"box-=
sizing:border-box;color:rgb(20,22,24);font-family:&quot;Open Sans&quot;,Rob=
oto,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Can=
tarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&qu=
ot;,sans-serif;font-size:13px;background-color:rgb(249,250,250)"><a href=3D=
"https://forum.proxmox.com/members/77564/" class=3D"gmail-username" id=3D"g=
mail-js-XFUniqueId92" style=3D"box-sizing:border-box;background-color:rgb(2=
49,250,250);color:rgb(229,112,0);text-decoration-line:none;font-family:&quo=
t;Open Sans&quot;,Roboto,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&qu=
ot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&q=
uot;Helvetica Neue&quot;,sans-serif;font-size:13px">@jebbam</a><span style=
=3D"color:rgb(20,22,24);font-family:&quot;Open Sans&quot;,Roboto,-apple-sys=
tem,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;F=
ira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif=
;font-size:13px;background-color:rgb(249,250,250)">=C2=A0I cannot solve you=
r problem but at least I can reference a workaround:</span><br style=3D"box=
-sizing:border-box;color:rgb(20,22,24);font-family:&quot;Open Sans&quot;,Ro=
boto,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Ca=
ntarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&q=
uot;,sans-serif;font-size:13px;background-color:rgb(249,250,250)"><a href=
=3D"https://bbs.archlinux.org/viewtopic.php?id=3D215839" target=3D"_blank" =
class=3D"gmail-link gmail-link--external" rel=3D"nofollow ugc noopener" sty=
le=3D"box-sizing:border-box;background-color:rgb(249,250,250);color:rgb(229=
,112,0);text-decoration-line:none;font-family:&quot;Open Sans&quot;,Roboto,=
-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantare=
ll,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,=
sans-serif;font-size:13px">https://bbs.archlinux.org/viewtopic.php?id=3D215=
839</a><br style=3D"box-sizing:border-box;color:rgb(20,22,24);font-family:&=
quot;Open Sans&quot;,Roboto,-apple-system,BlinkMacSystemFont,&quot;Segoe UI=
&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;=
,&quot;Helvetica Neue&quot;,sans-serif;font-size:13px;background-color:rgb(=
249,250,250)"><br style=3D"box-sizing:border-box;color:rgb(20,22,24);font-f=
amily:&quot;Open Sans&quot;,Roboto,-apple-system,BlinkMacSystemFont,&quot;S=
egoe UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid San=
s&quot;,&quot;Helvetica Neue&quot;,sans-serif;font-size:13px;background-col=
or:rgb(249,250,250)"><span style=3D"color:rgb(20,22,24);font-family:&quot;O=
pen Sans&quot;,Roboto,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;=
,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot=
;Helvetica Neue&quot;,sans-serif;font-size:13px;background-color:rgb(249,25=
0,250)">QXL should be the culprit and the workaround is to switch to VirtIO=
 for the display settings.</span><br style=3D"box-sizing:border-box;color:r=
gb(20,22,24);font-family:&quot;Open Sans&quot;,Roboto,-apple-system,BlinkMa=
cSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&qu=
ot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;font-size:=
13px;background-color:rgb(249,250,250)"><br style=3D"box-sizing:border-box;=
color:rgb(20,22,24);font-family:&quot;Open Sans&quot;,Roboto,-apple-system,=
BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira =
Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;fon=
t-size:13px;background-color:rgb(249,250,250)"><a href=3D"https://forum.pro=
xmox.com/attachments/75429/" target=3D"_blank" style=3D"box-sizing:border-b=
ox;background-color:rgb(249,250,250);color:rgb(229,112,0);text-decoration-l=
ine:none;font-family:&quot;Open Sans&quot;,Roboto,-apple-system,BlinkMacSys=
temFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,=
&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;font-size:13px=
">View attachment 75429</a><br style=3D"box-sizing:border-box;color:rgb(20,=
22,24);font-family:&quot;Open Sans&quot;,Roboto,-apple-system,BlinkMacSyste=
mFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&q=
uot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;font-size:13px;b=
ackground-color:rgb(249,250,250)"><br style=3D"box-sizing:border-box;color:=
rgb(20,22,24);font-family:&quot;Open Sans&quot;,Roboto,-apple-system,BlinkM=
acSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&q=
uot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;font-size=
:13px;background-color:rgb(249,250,250)"><span style=3D"color:rgb(20,22,24)=
;font-family:&quot;Open Sans&quot;,Roboto,-apple-system,BlinkMacSystemFont,=
&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;Dr=
oid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;font-size:13px;backgro=
und-color:rgb(249,250,250)">VDI Client still works fine. Also feels faster.=
</span><br style=3D"box-sizing:border-box;color:rgb(20,22,24);font-family:&=
quot;Open Sans&quot;,Roboto,-apple-system,BlinkMacSystemFont,&quot;Segoe UI=
&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;=
,&quot;Helvetica Neue&quot;,sans-serif;font-size:13px;background-color:rgb(=
249,250,250)"><br style=3D"box-sizing:border-box;color:rgb(20,22,24);font-f=
amily:&quot;Open Sans&quot;,Roboto,-apple-system,BlinkMacSystemFont,&quot;S=
egoe UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid San=
s&quot;,&quot;Helvetica Neue&quot;,sans-serif;font-size:13px;background-col=
or:rgb(249,250,250)"><span style=3D"color:rgb(20,22,24);font-family:&quot;O=
pen Sans&quot;,Roboto,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;=
,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot=
;Helvetica Neue&quot;,sans-serif;font-size:13px;background-color:rgb(249,25=
0,250)">Other reference and bonus:</span><br style=3D"box-sizing:border-box=
;color:rgb(20,22,24);font-family:&quot;Open Sans&quot;,Roboto,-apple-system=
,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira=
 Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;fo=
nt-size:13px;background-color:rgb(249,250,250)"><a href=3D"https://www.redd=
it.com/r/Proxmox/comments/1b01sbx/spice_really_sluggish_with_ubuntu_2204/" =
target=3D"_blank" class=3D"gmail-link gmail-link--external" rel=3D"nofollow=
 ugc noopener" style=3D"box-sizing:border-box;background-color:rgb(249,250,=
250);color:rgb(229,112,0);text-decoration-line:none;font-family:&quot;Open =
Sans&quot;,Roboto,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxy=
gen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Hel=
vetica Neue&quot;,sans-serif;font-size:13px">https://www.reddit.com/r/Proxm=
ox/comments/1b01sbx/spice_really_sluggish_with_ubuntu_2204/</a><br style=3D=
"box-sizing:border-box;color:rgb(20,22,24);font-family:&quot;Open Sans&quot=
;,Roboto,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubunt=
u,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Ne=
ue&quot;,sans-serif;font-size:13px;background-color:rgb(249,250,250)"><a hr=
ef=3D"https://www.reddit.com/r/Proxmox/comments/1auvdlg/qxl_vs_virtio_gpu_v=
s_virgl_gpu_trivial_benchmark/" target=3D"_blank" class=3D"gmail-link gmail=
-link--external" rel=3D"nofollow ugc noopener" style=3D"box-sizing:border-b=
ox;background-color:rgb(249,250,250);color:rgb(229,112,0);text-decoration-l=
ine:none;font-family:&quot;Open Sans&quot;,Roboto,-apple-system,BlinkMacSys=
temFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,=
&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;font-size:13px=
">https://www.reddit.com/r/Proxmox/comments/1auvdlg/qxl_vs_virtio_gpu_vs_vi=
rgl_gpu_trivial_benchmark/</a><br style=3D"box-sizing:border-box;color:rgb(=
20,22,24);font-family:&quot;Open Sans&quot;,Roboto,-apple-system,BlinkMacSy=
stemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;=
,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;font-size:13p=
x;background-color:rgb(249,250,250)"><br style=3D"box-sizing:border-box;col=
or:rgb(20,22,24);font-family:&quot;Open Sans&quot;,Roboto,-apple-system,Bli=
nkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira San=
s&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;font-s=
ize:13px;background-color:rgb(249,250,250)"><span style=3D"color:rgb(20,22,=
24);font-family:&quot;Open Sans&quot;,Roboto,-apple-system,BlinkMacSystemFo=
nt,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot=
;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;font-size:13px;back=
ground-color:rgb(249,250,250)">Best regards,</span><br style=3D"box-sizing:=
border-box;color:rgb(20,22,24);font-family:&quot;Open Sans&quot;,Roboto,-ap=
ple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,=
&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,san=
s-serif;font-size:13px;background-color:rgb(249,250,250)"><span style=3D"co=
lor:rgb(20,22,24);font-family:&quot;Open Sans&quot;,Roboto,-apple-system,Bl=
inkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sa=
ns&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;font-=
size:13px;background-color:rgb(249,250,250)">Stefan</span></div><div><span =
style=3D"color:rgb(20,22,24);font-family:&quot;Open Sans&quot;,Roboto,-appl=
e-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,&q=
uot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-=
serif;font-size:13px;background-color:rgb(249,250,250)">=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span></div><d=
iv><span style=3D"color:rgb(20,22,24);font-family:&quot;Open Sans&quot;,Rob=
oto,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Can=
tarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&qu=
ot;,sans-serif;font-size:13px;background-color:rgb(249,250,250)">but I need=
 Spice connection to virtual machines and without qxl it doesn&#39;t work.=
=C2=A0</span></div><div><span style=3D"color:rgb(20,22,24);font-family:&quo=
t;Open Sans&quot;,Roboto,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&qu=
ot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&q=
uot;Helvetica Neue&quot;,sans-serif;font-size:13px;background-color:rgb(249=
,250,250)"><br></span></div><div><span style=3D"color:rgb(20,22,24);font-fa=
mily:&quot;Open Sans&quot;,Roboto,-apple-system,BlinkMacSystemFont,&quot;Se=
goe UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans=
&quot;,&quot;Helvetica Neue&quot;,sans-serif;font-size:13px;background-colo=
r:rgb(249,250,250)">I ask you if you have some patch or another solution fo=
r this problem please give me answer.=C2=A0</span></div><div><span style=3D=
"color:rgb(20,22,24);font-family:&quot;Open Sans&quot;,Roboto,-apple-system=
,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira=
 Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;fo=
nt-size:13px;background-color:rgb(249,250,250)">Thank you in advance!</span=
></div></div>

--0000000000009688df0632995a9e--
