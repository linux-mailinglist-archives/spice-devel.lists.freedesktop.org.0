Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F7E496E11
	for <lists+spice-devel@lfdr.de>; Sat, 22 Jan 2022 22:00:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C48610E2E3;
	Sat, 22 Jan 2022 21:00:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com
 [IPv6:2607:f8b0:4864:20::829])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 936C110E2E3
 for <spice-devel@lists.freedesktop.org>; Sat, 22 Jan 2022 21:00:37 +0000 (UTC)
Received: by mail-qt1-x829.google.com with SMTP id bp39so14416573qtb.6
 for <spice-devel@lists.freedesktop.org>; Sat, 22 Jan 2022 13:00:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gDVcomf0bczNl3c8TCHkGIYzArrOTkB5iuI/BO1GzTc=;
 b=iTwmmJdVojIys9RkVPKtD/g3xy0CE+8D2Yy8LO9eUCJdWZV4O+t66E0qeXBcQcR8PN
 VCP/0Bm148kGfcSt5G4ynIBywytcYvURJSQgVa63biuHneAEyV0eUsSrtQzpXuUNj4vf
 ClG7MJgAGRYRdQFBNzAwu0aYyt793xArgo2e+/+cPHVzXhdZn1m51rO9D20xBnM60Sfy
 Z6eByb14hHMZ51oRUaYVynRovwB3HJoUr3UJKlPkZvbGJa2BD2r/8BJuF6xhdOygAFfg
 PL0gGP5GPS3cRedE9AV4c8RXCEV5fe36kuTJL/e0pFT3l4Ig6WnIzVBDe9jx0175ULDf
 orxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gDVcomf0bczNl3c8TCHkGIYzArrOTkB5iuI/BO1GzTc=;
 b=34ydLQxgDZAtSa/IdeSW5oxevK3pbmZFyu9lvxYvRP19loFt7UH5tLwZv7CPtPtyPM
 HIrjYRjvwV/fQrsHphC89hmGbxgk4/Lf9FEAcLdAl+/fdO/WPcM9hSIuaHXPgCyxNH9m
 T21iDLpnHXdpG3AKs2eDuNMuJ4qeV0Unf/wPij4Q1UpxHUDLgYFk3U5VLd5jD2dgUYRy
 RSgDvkKJb9eiAQ/iQxNWfWYFQlhTm7cn0mwwObhKCgm5a4+kbMdfI0nVYmOYrLML+hC2
 qmbdYqqv0T8P/t41N1ZlJ/+DnZDVGDtEnHRn0Fno958nhZqL8ZVuj2fKr2o2SGY7/Qfl
 kNHw==
X-Gm-Message-State: AOAM532Tv9L5OQ8nCbwN4p4XUNhJ9DMP40zWjLac7UlYO9EaCzzaNvyP
 En6WMyYc55P2TLyQGIPSkmH0OasUOjRX3piEG3I=
X-Google-Smtp-Source: ABdhPJy60pilf9Wt+6CaSgu7pKq/309dlwInyo3SoN12z3u76dpNMW6X8gVHijsm+Mnf5jXFPxmBACnWDKL7TF64Zfo=
X-Received: by 2002:a05:622a:93:: with SMTP id
 o19mr7781805qtw.489.1642885236314; 
 Sat, 22 Jan 2022 13:00:36 -0800 (PST)
MIME-Version: 1.0
References: <CAHAhJwJGu2W=GJNnm-qTLYnWh1z5vb55XuKMv2O6i47eL9-ovQ@mail.gmail.com>
 <YealL2OWwVPM11yD@redhat.com>
In-Reply-To: <YealL2OWwVPM11yD@redhat.com>
From: Ahmad Ismail <ismail783@gmail.com>
Date: Sun, 23 Jan 2022 03:00:25 +0600
Message-ID: <CAHAhJwJzUWqtExEefJamch+J7J+7TbkRaot-rq=gtA-6D7r3zw@mail.gmail.com>
To: =?UTF-8?Q?Daniel_P=2E_Berrang=C3=A9?= <berrange@redhat.com>
Content-Type: multipart/alternative; boundary="000000000000ead4db05d632069f"
Subject: Re: [Spice-devel] How to mount webdav inside QEMU
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
Cc: spice-devel@lists.freedesktop.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--000000000000ead4db05d632069f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you very much.

*Best Regards,Ahmad Ismail*


On Tue, Jan 18, 2022 at 5:32 PM Daniel P. Berrang=C3=A9 <berrange@redhat.co=
m>
wrote:

> On Tue, Jan 18, 2022 at 01:11:04AM +0600, Ahmad Ismail wrote:
> > I run the VM using
> >
> > qemu-system-x86_64 -accel kvm,thread=3Dmulti -cpu host -smp 2 -m 4096
> > -drive file=3Dmint20.3.qcow2,if=3Dvirtio \
> > -machine vmport=3Doff \
> > -vga qxl -usb -device usb-tablet \
> > -spice port=3D5900,addr=3D127.0.0.1,disable-ticketing \
> > -device virtio-serial-pci \
> > -chardev spicevmc,id=3Dspicechannel0,debug=3D0,name=3Dvdagent \
> > -device virtserialport,chardev=3Dspicechannel0,name=3Dcom.redhat.spice.=
0 \
> > -device
> virtserialport,chardev=3Dcharchannel1,id=3Dchannel1,name=3Dorg.spice-spac=
e.webdav.0
> > \
> > -chardev spiceport,name=3Dorg.spice-space.webdav.0,id=3Dcharchannel1
> >
> > The access the VM using remote-viewer spice://127.0.0.1:5900
> >
> > Then in the remote viewer I click:
> >
> > File > Preference > Share folder > Choose a folder from the Host
> >
> > Then In the host I click: Nemo > Network > Spice client folder
> >
> > Then the directory is mounted and I can share files between guest and
> host.
> >
> > I want to get rid of the clicks.
> >
> > I think to mount a drive I have to use something like
> >
> > mount -t davfs https://cs10.cloud.com:2078 /mnt/webdav
> >
> > But I am not understanding what URL shall i use after mount -t davfs
>
> This command uses a kernel filesystem driver. I'm not sure how that
> works, as SPICE webdav doesn't generally use that. When you're
> mounting in a GNOME desktop UI, it uses 'GIO' to mount it.
>
> If you're logged into your sesssion, you can do that using
>
>   gio mount dav+sd://Spice%2520folder._webdav._tcp.local/
>
>
> You can use 'gio mount --list' to confirm that URL, after mounting
> it from the UI.
>
> The actual mount appears in /run/user/$UID/gvfs/$URL where $URL
> is the same as the URL given to 'gio mount'
>
> Regards,
> Daniel
> --
> |: https://berrange.com      -o-
> https://www.flickr.com/photos/dberrange :|
> |: https://libvirt.org         -o-
> https://fstop138.berrange.com :|
> |: https://entangle-photo.org    -o-
> https://www.instagram.com/dberrange :|
>
>

--000000000000ead4db05d632069f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you very much.<div><br clear=3D"all"><div><div dir=
=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div =
dir=3D"ltr"><b style=3D"font-weight:normal"><p dir=3D"ltr" style=3D"line-he=
ight:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:10pt;f=
ont-family:Arial;color:rgb(0,0,0);background-color:transparent;font-weight:=
400;font-style:normal;font-variant:normal;text-decoration:none;vertical-ali=
gn:baseline;white-space:pre-wrap">Best Regards,</span></p><p dir=3D"ltr" st=
yle=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"fo=
nt-size:10pt;font-family:Arial;color:rgb(0,0,0);background-color:transparen=
t;font-weight:400;font-style:normal;font-variant:normal;text-decoration:non=
e;vertical-align:baseline;white-space:pre-wrap">Ahmad Ismail</span></p></b>=
</div></div></div><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Jan 18, 2022 at 5:32 PM Daniel P. Ber=
rang=C3=A9 &lt;<a href=3D"mailto:berrange@redhat.com">berrange@redhat.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On=
 Tue, Jan 18, 2022 at 01:11:04AM +0600, Ahmad Ismail wrote:<br>
&gt; I run the VM using<br>
&gt; <br>
&gt; qemu-system-x86_64 -accel kvm,thread=3Dmulti -cpu host -smp 2 -m 4096<=
br>
&gt; -drive file=3Dmint20.3.qcow2,if=3Dvirtio \<br>
&gt; -machine vmport=3Doff \<br>
&gt; -vga qxl -usb -device usb-tablet \<br>
&gt; -spice port=3D5900,addr=3D127.0.0.1,disable-ticketing \<br>
&gt; -device virtio-serial-pci \<br>
&gt; -chardev spicevmc,id=3Dspicechannel0,debug=3D0,name=3Dvdagent \<br>
&gt; -device virtserialport,chardev=3Dspicechannel0,name=3Dcom.redhat.spice=
.0 \<br>
&gt; -device virtserialport,chardev=3Dcharchannel1,id=3Dchannel1,name=3Dorg=
.spice-space.webdav.0<br>
&gt; \<br>
&gt; -chardev spiceport,name=3Dorg.spice-space.webdav.0,id=3Dcharchannel1<b=
r>
&gt; <br>
&gt; The access the VM using remote-viewer spice://<a href=3D"http://127.0.=
0.1:5900" rel=3D"noreferrer" target=3D"_blank">127.0.0.1:5900</a><br>
&gt; <br>
&gt; Then in the remote viewer I click:<br>
&gt; <br>
&gt; File &gt; Preference &gt; Share folder &gt; Choose a folder from the H=
ost<br>
&gt; <br>
&gt; Then In the host I click: Nemo &gt; Network &gt; Spice client folder<b=
r>
&gt; <br>
&gt; Then the directory is mounted and I can share files between guest and =
host.<br>
&gt; <br>
&gt; I want to get rid of the clicks.<br>
&gt; <br>
&gt; I think to mount a drive I have to use something like<br>
&gt; <br>
&gt; mount -t davfs <a href=3D"https://cs10.cloud.com:2078" rel=3D"noreferr=
er" target=3D"_blank">https://cs10.cloud.com:2078</a> /mnt/webdav<br>
&gt; <br>
&gt; But I am not understanding what URL shall i use after mount -t davfs<b=
r>
<br>
This command uses a kernel filesystem driver. I&#39;m not sure how that<br>
works, as SPICE webdav doesn&#39;t generally use that. When you&#39;re<br>
mounting in a GNOME desktop UI, it uses &#39;GIO&#39; to mount it.<br>
<br>
If you&#39;re logged into your sesssion, you can do that using<br>
<br>
=C2=A0 gio mount dav+sd://Spice%2520folder._webdav._tcp.local/<br>
<br>
<br>
You can use &#39;gio mount --list&#39; to confirm that URL, after mounting<=
br>
it from the UI.<br>
<br>
The actual mount appears in /run/user/$UID/gvfs/$URL where $URL<br>
is the same as the URL given to &#39;gio mount&#39;<br>
<br>
Regards,<br>
Daniel<br>
-- <br>
|: <a href=3D"https://berrange.com" rel=3D"noreferrer" target=3D"_blank">ht=
tps://berrange.com</a>=C2=A0 =C2=A0 =C2=A0 -o-=C2=A0 =C2=A0 <a href=3D"http=
s://www.flickr.com/photos/dberrange" rel=3D"noreferrer" target=3D"_blank">h=
ttps://www.flickr.com/photos/dberrange</a> :|<br>
|: <a href=3D"https://libvirt.org" rel=3D"noreferrer" target=3D"_blank">htt=
ps://libvirt.org</a>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-o-=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"https://fstop138.berrange.com" rel=3D"n=
oreferrer" target=3D"_blank">https://fstop138.berrange.com</a> :|<br>
|: <a href=3D"https://entangle-photo.org" rel=3D"noreferrer" target=3D"_bla=
nk">https://entangle-photo.org</a>=C2=A0 =C2=A0 -o-=C2=A0 =C2=A0 <a href=3D=
"https://www.instagram.com/dberrange" rel=3D"noreferrer" target=3D"_blank">=
https://www.instagram.com/dberrange</a> :|<br>
<br>
</blockquote></div>

--000000000000ead4db05d632069f--
