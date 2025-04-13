Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E550A8732E
	for <lists+spice-devel@lfdr.de>; Sun, 13 Apr 2025 20:44:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED39C10E248;
	Sun, 13 Apr 2025 18:44:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eI3fhHmw";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com
 [209.85.219.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C458110E248
 for <spice-devel@lists.freedesktop.org>; Sun, 13 Apr 2025 18:44:31 +0000 (UTC)
Received: by mail-yb1-f176.google.com with SMTP id
 3f1490d57ef6-e6a8aa771e8so2913486276.3
 for <spice-devel@lists.freedesktop.org>; Sun, 13 Apr 2025 11:44:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1744569870; x=1745174670; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=QSE0Lz66/hx0TcP+WSTfTVnBCoZWBaASLLffTJQvNNM=;
 b=eI3fhHmw77YjWvPMuBaJesICtIxtbWEHHSvZcuiTAb20JAqR8kL78YdkKOjdxVfatz
 IUdxakI2odkkqNe1p113WpwjdqKS/atQ6oSk6lNAWgU9pK2lSrxP3fZL6vCVl2HaK4kM
 Ulv9+iU+z9Uc2FF5gw4MrWXRnZ069KJN49LI79lJiqnQKwX7PnC3M4Uh/wthluhOqSoZ
 LehDDRuDbZo7V9fvNQOpQ25ERQoklmpy0G7U1CHWMMGiBoi/tEP8GZGFgmLuLrEKkVAU
 hioL9fycb/wuuED+O9YPBQudTLVUsB+NBdlcJ6bVUcSIzFIDqvZRKUqrxz0Jj+k3v9mY
 yUHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744569870; x=1745174670;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=QSE0Lz66/hx0TcP+WSTfTVnBCoZWBaASLLffTJQvNNM=;
 b=bTtsgdiw0DMJfzYrVgotO5XHltFI9vT1ZKUMBcNXeQmdaVAf9jMJnzK908rCJ3XgX3
 auvwB9Hu55y3Mv96ovri1lim5h9XcchiffZGJmQKFolJTmQcQHrTI0AESQDypwKXZQ71
 MrBfXLGK1hfEQ452SrYlLLwCIdbammQYCECigCiun1x8VLZD52RjnHXoT8KrVRYm2gMu
 C2wOj+KeozGDRVVuzt81//wO05aFIghlAr22+nhQYxCqeAn3XIH5wU3N9b6LsgM6vpj9
 CgVSGkmCWdxA5/nVzEi2gh+zN5rPJyxgQVn72mEKh+MCqNEsYkGHlIxKYI2US/pvOKkQ
 anpQ==
X-Gm-Message-State: AOJu0Yw+oEdBjMjKqHmUcIrt5h/LmnlVZSshuP0CkjOAtiCnUznxJAhX
 r3Xr90K8PKR48cG+zwvO2bvloAMc9ODVnGRh61w+fBcCM4xMqW0zJyclwv6rDtMBEYypkXBBnIh
 wFo8TBjoSLapCMN4atCsP68iIwm0=
X-Gm-Gg: ASbGncua5NeZVJ6Vf1PVcZIJDLJdiLubMfRk/j4CtFvnWgnFmnP+36ZkmCYIUqfpI9k
 z9MedL52lE8EgG+0lYbSfgUtsRXXgfe61IY1TIsMG2y2m444OYmkeZ5OIdu3zHeHwN0iVdSThwm
 JfYCdBmomAjjA8uoa/LBo=
X-Google-Smtp-Source: AGHT+IHU5iD3+j0m+Nm74TdoGg6mK4N5DtHpeKmXGA94Q/JZJYOGFJ/FE4czPRtcMEDAstmZqo3HCuxcqN3uwAu6rWQ=
X-Received: by 2002:a05:6902:2747:b0:e63:49ad:c496 with SMTP id
 3f1490d57ef6-e704df72380mr15894114276.49.1744569870342; Sun, 13 Apr 2025
 11:44:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAGSeoByMZYXsCq480ExO2UgMOWZQdLp8a0J=0Gy84eE_=MeqQg@mail.gmail.com>
In-Reply-To: <CAGSeoByMZYXsCq480ExO2UgMOWZQdLp8a0J=0Gy84eE_=MeqQg@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sun, 13 Apr 2025 19:44:18 +0100
X-Gm-Features: ATxdqUGzWD4yk9Jg0kR0de6r_XL5ZNk6niQOPYgXIb18sv6dIvh9N_x9WL50z1Y
Message-ID: <CAHt6W4ceanJL=9+bL+2=d=ef-pDkW13mLmP6pzkDVQs=hwNRpA@mail.gmail.com>
Subject: Re: Problem with QXL driver
To: Serhio Gor <yousergor@gmail.com>
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="00000000000068677a0632ad5355"
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

--00000000000068677a0632ad5355
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 13, 2025 at 4:58=E2=80=AFPM Serhio Gor <yousergor@gmail.com> wr=
ote:

> Hello,
> My name is Sergio , I'm sysadmin  and I use Proxmox with virtual machines
> with Spice remote connection.
> Today I faced with problem -
>
> Have Virtual machine with Devuan and GUI Mate . During surfing in interne=
t
> and when I click some buttons on pages the virtual machine freezes and
> don't work . In logs I found
> kernel: [16172.719139] [drm:qxl_gem_object_create [qxl]] *ERROR* Failed t=
o
> allocate GEM object (261164, 1, 4096, -12)
> kernel: [16172.719160] [drm:qxl_alloc_ioctl [qxl]] *ERROR*
> qxl_alloc_ioctl: failed to create gem ret=3D-12
>
>  I found this problem  described here
> https://forum.proxmox.com/threads/ttm-buffer-eviction-failed.152720/
> solution is not to use QXL but use virtio
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Hi,
>
> @jebbam <https://forum.proxmox.com/members/77564/> I cannot solve your
> problem but at least I can reference a workaround:
> https://bbs.archlinux.org/viewtopic.php?id=3D215839
>
> QXL should be the culprit and the workaround is to switch to VirtIO for
> the display settings.
>
> View attachment 75429 <https://forum.proxmox.com/attachments/75429/>
>
> VDI Client still works fine. Also feels faster.
>
> Other reference and bonus:
>
> https://www.reddit.com/r/Proxmox/comments/1b01sbx/spice_really_sluggish_w=
ith_ubuntu_2204/
>
> https://www.reddit.com/r/Proxmox/comments/1auvdlg/qxl_vs_virtio_gpu_vs_vi=
rgl_gpu_trivial_benchmark/
>
> Best regards,
> Stefan
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
> but I need Spice connection to virtual machines and without qxl it doesn'=
t
> work.
>
> I ask you if you have some patch or another solution for this problem
> please give me answer.
> Thank you in advance!
>

Spice should work with virtio too.

Besides, QXL driver should not cause GEM allocation errors, meaning that
the bug should be fixed.

Frediano

--00000000000068677a0632ad5355
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr" class=3D"gmail_attr">On Sun, Apr 13, 2025 at 4:58=E2=80=AFPM Serhi=
o Gor &lt;<a href=3D"mailto:yousergor@gmail.com">yousergor@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr">Hello,=C2=A0<div>My name is Sergio , I&#39;m sysadmin=C2=A0 and I=
 use Proxmox with virtual machines with Spice remote connection.=C2=A0</div=
><div>Today I faced with problem -</div><div><br></div><div>Have Virtual ma=
chine with Devuan and GUI Mate . During surfing in internet and when I clic=
k some buttons on pages the virtual machine freezes and don&#39;t work . In=
 logs I found=C2=A0</div>kernel: [16172.719139] [drm:qxl_gem_object_create =
[qxl]] *ERROR* Failed to allocate GEM object (261164, 1, 4096, -12)<div>ker=
nel: [16172.719160] [drm:qxl_alloc_ioctl [qxl]] *ERROR* qxl_alloc_ioctl: fa=
iled to create gem ret=3D-12</div><div><br></div><div>=C2=A0I found this pr=
oblem=C2=A0 described here=C2=A0<div><a href=3D"https://forum.proxmox.com/t=
hreads/ttm-buffer-eviction-failed.152720/" target=3D"_blank">https://forum.=
proxmox.com/threads/ttm-buffer-eviction-failed.152720/</a>=C2=A0</div></div=
><div>solution is not to use QXL but use virtio</div><div><span style=3D"co=
lor:rgb(20,22,24);font-family:&quot;Open Sans&quot;,Roboto,-apple-system,Bl=
inkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sa=
ns&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;font-=
size:13px;background-color:rgb(249,250,250)">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span></div><div><span style=3D"=
color:rgb(20,22,24);font-family:&quot;Open Sans&quot;,Roboto,-apple-system,=
BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira =
Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;fon=
t-size:13px;background-color:rgb(249,250,250)">Hi,</span><br style=3D"box-s=
izing:border-box;color:rgb(20,22,24);font-family:&quot;Open Sans&quot;,Robo=
to,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cant=
arell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quo=
t;,sans-serif;font-size:13px;background-color:rgb(249,250,250)"><br style=
=3D"box-sizing:border-box;color:rgb(20,22,24);font-family:&quot;Open Sans&q=
uot;,Roboto,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ub=
untu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica=
 Neue&quot;,sans-serif;font-size:13px;background-color:rgb(249,250,250)"><a=
 href=3D"https://forum.proxmox.com/members/77564/" id=3D"m_-212649983274352=
4758gmail-js-XFUniqueId92" style=3D"box-sizing:border-box;background-color:=
rgb(249,250,250);color:rgb(229,112,0);text-decoration-line:none;font-family=
:&quot;Open Sans&quot;,Roboto,-apple-system,BlinkMacSystemFont,&quot;Segoe =
UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quo=
t;,&quot;Helvetica Neue&quot;,sans-serif;font-size:13px" target=3D"_blank">=
@jebbam</a><span style=3D"color:rgb(20,22,24);font-family:&quot;Open Sans&q=
uot;,Roboto,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ub=
untu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica=
 Neue&quot;,sans-serif;font-size:13px;background-color:rgb(249,250,250)">=
=C2=A0I cannot solve your problem but at least I can reference a workaround=
:</span><br style=3D"box-sizing:border-box;color:rgb(20,22,24);font-family:=
&quot;Open Sans&quot;,Roboto,-apple-system,BlinkMacSystemFont,&quot;Segoe U=
I&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot=
;,&quot;Helvetica Neue&quot;,sans-serif;font-size:13px;background-color:rgb=
(249,250,250)"><a href=3D"https://bbs.archlinux.org/viewtopic.php?id=3D2158=
39" rel=3D"nofollow ugc noopener" style=3D"box-sizing:border-box;background=
-color:rgb(249,250,250);color:rgb(229,112,0);text-decoration-line:none;font=
-family:&quot;Open Sans&quot;,Roboto,-apple-system,BlinkMacSystemFont,&quot=
;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid S=
ans&quot;,&quot;Helvetica Neue&quot;,sans-serif;font-size:13px" target=3D"_=
blank">https://bbs.archlinux.org/viewtopic.php?id=3D215839</a><br style=3D"=
box-sizing:border-box;color:rgb(20,22,24);font-family:&quot;Open Sans&quot;=
,Roboto,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu=
,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neu=
e&quot;,sans-serif;font-size:13px;background-color:rgb(249,250,250)"><br st=
yle=3D"box-sizing:border-box;color:rgb(20,22,24);font-family:&quot;Open San=
s&quot;,Roboto,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen=
,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvet=
ica Neue&quot;,sans-serif;font-size:13px;background-color:rgb(249,250,250)"=
><span style=3D"color:rgb(20,22,24);font-family:&quot;Open Sans&quot;,Robot=
o,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Canta=
rell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot=
;,sans-serif;font-size:13px;background-color:rgb(249,250,250)">QXL should b=
e the culprit and the workaround is to switch to VirtIO for the display set=
tings.</span><br style=3D"box-sizing:border-box;color:rgb(20,22,24);font-fa=
mily:&quot;Open Sans&quot;,Roboto,-apple-system,BlinkMacSystemFont,&quot;Se=
goe UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans=
&quot;,&quot;Helvetica Neue&quot;,sans-serif;font-size:13px;background-colo=
r:rgb(249,250,250)"><br style=3D"box-sizing:border-box;color:rgb(20,22,24);=
font-family:&quot;Open Sans&quot;,Roboto,-apple-system,BlinkMacSystemFont,&=
quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;Dro=
id Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;font-size:13px;backgrou=
nd-color:rgb(249,250,250)"><a href=3D"https://forum.proxmox.com/attachments=
/75429/" style=3D"box-sizing:border-box;background-color:rgb(249,250,250);c=
olor:rgb(229,112,0);text-decoration-line:none;font-family:&quot;Open Sans&q=
uot;,Roboto,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ub=
untu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica=
 Neue&quot;,sans-serif;font-size:13px" target=3D"_blank">View attachment 75=
429</a><br style=3D"box-sizing:border-box;color:rgb(20,22,24);font-family:&=
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
0,250)">VDI Client still works fine. Also feels faster.</span><br style=3D"=
box-sizing:border-box;color:rgb(20,22,24);font-family:&quot;Open Sans&quot;=
,Roboto,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu=
,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neu=
e&quot;,sans-serif;font-size:13px;background-color:rgb(249,250,250)"><br st=
yle=3D"box-sizing:border-box;color:rgb(20,22,24);font-family:&quot;Open San=
s&quot;,Roboto,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen=
,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvet=
ica Neue&quot;,sans-serif;font-size:13px;background-color:rgb(249,250,250)"=
><span style=3D"color:rgb(20,22,24);font-family:&quot;Open Sans&quot;,Robot=
o,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Canta=
rell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot=
;,sans-serif;font-size:13px;background-color:rgb(249,250,250)">Other refere=
nce and bonus:</span><br style=3D"box-sizing:border-box;color:rgb(20,22,24)=
;font-family:&quot;Open Sans&quot;,Roboto,-apple-system,BlinkMacSystemFont,=
&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;Dr=
oid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;font-size:13px;backgro=
und-color:rgb(249,250,250)"><a href=3D"https://www.reddit.com/r/Proxmox/com=
ments/1b01sbx/spice_really_sluggish_with_ubuntu_2204/" rel=3D"nofollow ugc =
noopener" style=3D"box-sizing:border-box;background-color:rgb(249,250,250);=
color:rgb(229,112,0);text-decoration-line:none;font-family:&quot;Open Sans&=
quot;,Roboto,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,U=
buntu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetic=
a Neue&quot;,sans-serif;font-size:13px" target=3D"_blank">https://www.reddi=
t.com/r/Proxmox/comments/1b01sbx/spice_really_sluggish_with_ubuntu_2204/</a=
><br style=3D"box-sizing:border-box;color:rgb(20,22,24);font-family:&quot;O=
pen Sans&quot;,Roboto,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;=
,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot=
;Helvetica Neue&quot;,sans-serif;font-size:13px;background-color:rgb(249,25=
0,250)"><a href=3D"https://www.reddit.com/r/Proxmox/comments/1auvdlg/qxl_vs=
_virtio_gpu_vs_virgl_gpu_trivial_benchmark/" rel=3D"nofollow ugc noopener" =
style=3D"box-sizing:border-box;background-color:rgb(249,250,250);color:rgb(=
229,112,0);text-decoration-line:none;font-family:&quot;Open Sans&quot;,Robo=
to,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cant=
arell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quo=
t;,sans-serif;font-size:13px" target=3D"_blank">https://www.reddit.com/r/Pr=
oxmox/comments/1auvdlg/qxl_vs_virtio_gpu_vs_virgl_gpu_trivial_benchmark/</a=
><br style=3D"box-sizing:border-box;color:rgb(20,22,24);font-family:&quot;O=
pen Sans&quot;,Roboto,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;=
,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot=
;Helvetica Neue&quot;,sans-serif;font-size:13px;background-color:rgb(249,25=
0,250)"><br style=3D"box-sizing:border-box;color:rgb(20,22,24);font-family:=
&quot;Open Sans&quot;,Roboto,-apple-system,BlinkMacSystemFont,&quot;Segoe U=
I&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot=
;,&quot;Helvetica Neue&quot;,sans-serif;font-size:13px;background-color:rgb=
(249,250,250)"><span style=3D"color:rgb(20,22,24);font-family:&quot;Open Sa=
ns&quot;,Roboto,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxyge=
n,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helve=
tica Neue&quot;,sans-serif;font-size:13px;background-color:rgb(249,250,250)=
">Best regards,</span><br style=3D"box-sizing:border-box;color:rgb(20,22,24=
);font-family:&quot;Open Sans&quot;,Roboto,-apple-system,BlinkMacSystemFont=
,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;D=
roid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;font-size:13px;backgr=
ound-color:rgb(249,250,250)"><span style=3D"color:rgb(20,22,24);font-family=
:&quot;Open Sans&quot;,Roboto,-apple-system,BlinkMacSystemFont,&quot;Segoe =
UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quo=
t;,&quot;Helvetica Neue&quot;,sans-serif;font-size:13px;background-color:rg=
b(249,250,250)">Stefan</span></div><div><span style=3D"color:rgb(20,22,24);=
font-family:&quot;Open Sans&quot;,Roboto,-apple-system,BlinkMacSystemFont,&=
quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;Dro=
id Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;font-size:13px;backgrou=
nd-color:rgb(249,250,250)">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span></div><div><span style=3D"color:rgb(20=
,22,24);font-family:&quot;Open Sans&quot;,Roboto,-apple-system,BlinkMacSyst=
emFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&=
quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;font-size:13px;=
background-color:rgb(249,250,250)">but I need Spice connection to virtual m=
achines and without qxl it doesn&#39;t work.=C2=A0</span></div><div><span s=
tyle=3D"color:rgb(20,22,24);font-family:&quot;Open Sans&quot;,Roboto,-apple=
-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,&qu=
ot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-s=
erif;font-size:13px;background-color:rgb(249,250,250)"><br></span></div><di=
v><span style=3D"color:rgb(20,22,24);font-family:&quot;Open Sans&quot;,Robo=
to,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cant=
arell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quo=
t;,sans-serif;font-size:13px;background-color:rgb(249,250,250)">I ask you i=
f you have some patch or another solution for this problem please give me a=
nswer.=C2=A0</span></div><div><span style=3D"color:rgb(20,22,24);font-famil=
y:&quot;Open Sans&quot;,Roboto,-apple-system,BlinkMacSystemFont,&quot;Segoe=
 UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans&qu=
ot;,&quot;Helvetica Neue&quot;,sans-serif;font-size:13px;background-color:r=
gb(249,250,250)">Thank you in advance!</span></div></div></blockquote><div>=
<br></div><div>Spice should work with virtio too.</div><div><br></div><div>=
Besides, QXL driver should not cause GEM allocation errors, meaning that th=
e bug should be fixed.</div><div><br></div><div>Frediano</div><div>=C2=A0<b=
r></div></div></div>

--00000000000068677a0632ad5355--
