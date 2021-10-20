Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9FA43553B
	for <lists+spice-devel@lfdr.de>; Wed, 20 Oct 2021 23:24:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5A226E3D2;
	Wed, 20 Oct 2021 21:24:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 880516E3D2
 for <spice-devel@lists.freedesktop.org>; Wed, 20 Oct 2021 21:24:24 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 a20-20020a1c7f14000000b003231d13ee3cso1091266wmd.3
 for <spice-devel@lists.freedesktop.org>; Wed, 20 Oct 2021 14:24:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bogomips.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=98IOh3+ZEpf2iMTz278+Ka1CCGSxBphSmWQy7W2x52I=;
 b=ahbGM4ASX8iGRB0zEP/fAvGxQZCskvYmu+ERxnsZZBiI6EWbDgMinFQtIKluMRIt1j
 pghYYUEZ3rD0yvrYMnSKB2wyN+vT7GNbZ7xWQujLix6jDgBDgiZiygeWdCQaTsChN/yl
 ekf9iOz98cEhw9nL2JE+vKKfvx7mdSAJorikE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=98IOh3+ZEpf2iMTz278+Ka1CCGSxBphSmWQy7W2x52I=;
 b=lcj8wYrf34w+NjGwh8OWc+hQzy0T6iSn2DaIqriFJEgbeVUlybDURGjvTll6blh6+E
 XRdwc3uvgGQ5YF4hbKHAy6D3ziO8uOtNyX1ieO4sWqffVRkdcuXDtGFZ4/hvAwP7EyHb
 zCWe4cSmzA7iVtmAAVvbb85iNgVosfFdQNeNw6Qz8DMXO2CAnD1rqUrgZ3eJmpBM+UiH
 bXvI7QD6LGSOI8SpVZWEyc5xXvPaGlW8GTHJ4pggr00+ByAwhOT5OjH/PF6siCcuvyM/
 u6LDY7pV0NINo+08gwKK9zG8EZulmTi7jOPkL38ttb/+gj9W3UQSprzL62VtHAXoQ+ug
 U/qQ==
X-Gm-Message-State: AOAM53063baiuzZ+mUnyGXaj5cL5SdUSUfdDgFoSZiT3P5AX6t126B2Z
 O7BWDBSMNcO7uQT8aiWDuao0kfHd3DOECV2CAujGPvDr9KLYP/O8
X-Google-Smtp-Source: ABdhPJz8KugeH4wehV85A+xLavfsNf9PIGizr2/CyMpjihHh3SZJGW4nd6Y4RKBhg+DdCzV3sDLeL6dgYijdNtCFbQs=
X-Received: by 2002:a1c:4484:: with SMTP id
 r126mr16554667wma.150.1634765062870; 
 Wed, 20 Oct 2021 14:24:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAO-kYtFhG-cNWAUvTh-r48wAhvXBZoKQPa3SQTS=3S+VnEB8OA@mail.gmail.com>
 <20211019042916.oirr77itnfmmtqw4@tapioca>
In-Reply-To: <20211019042916.oirr77itnfmmtqw4@tapioca>
From: John Paul Morrison <jmorrison@bogomips.com>
Date: Wed, 20 Oct 2021 14:24:10 -0700
Message-ID: <CAO-kYtGeSF-jUPSYAZ=r_dkjcn3gBWuSJj0mh4AmS1kOE6TyMg@mail.gmail.com>
To: Victor Toso <victortoso@redhat.com>
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000dd2f8305cecf664c"
Subject: Re: [Spice-devel] vdagent, pho-dav for Darwin/OSX?
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

--000000000000dd2f8305cecf664c
Content-Type: text/plain; charset="UTF-8"

Hi

I installed gtk3 and various dependencies with macports.

vdagent is a challenge - I have to remove alsa and libdrm for now as my
focus  is on mouse/clipboard.
I think uinput is a problem too - not sure if this is just keyboard or
mouse too.

phodav was pretty easy to build with minor changes, and it even works a
little bit.
I start sharing in remote-viewer, then run spice-webdavd in macos and mount
with mount_webdav -S.

The webdav folder shows up on the Desktop/Finder,  I can open and see a
directory listing.
I'm unable to copy or open from the Spice shared folder. But I was able to
copy from MacOS into the Spice folder.

spice-webdavd doesn't show any problems with GLIB debugging on. I get some
remote-viewer warnings with the Windows version 6.0 link you posted on
gitlab, and the Windows client freezes up with folder sharing too.  No luck
in Ubuntu either but theirs is version 6.0 too.

remote-viewer 6.0:
(remote-viewer.exe:26688): GSpice-WARNING **: read error: Stream is already
closed

that's all I've got for now


>
> > I'm not sure where to get started - I thought maybe I could
> > test some things in XQuartz first.  Hoping this can be done in
> > user space.
>
> Are you building vdagent with gtk? With gtk, we might be able to
> get some features like clipboard, I hope.
>
> Cheers,
> Victor
>

--000000000000dd2f8305cecf664c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi=
</div><div><br></div><div>I installed gtk3 and various dependencies with ma=
cports.=C2=A0</div><div><br></div><div>vdagent is a challenge - I have to r=
emove alsa and libdrm for=C2=A0now as my focus=C2=A0 is on mouse/clipboard.=
</div><div>I think uinput is a problem too - not sure if this is just keybo=
ard or mouse too.=C2=A0</div><div><br></div><div>phodav was pretty easy to =
build with minor changes, and it even works a little bit.</div><div>I start=
 sharing in remote-viewer, then run spice-webdavd=C2=A0in macos=C2=A0and mo=
unt with mount_webdav -S.</div><div><br></div><div>The webdav folder shows =
up on the Desktop/Finder,=C2=A0 I can open and see a directory listing.</di=
v><div>I&#39;m unable to copy or open from the Spice shared folder. But I w=
as able to copy from MacOS into the Spice folder.</div><div><br></div><div>=
spice-webdavd=C2=A0doesn&#39;t show any problems with GLIB debugging on. I =
get some remote-viewer warnings with the Windows version 6.0 link you poste=
d on gitlab, and the Windows client freezes up with folder sharing too.=C2=
=A0 No luck in Ubuntu either but theirs is=C2=A0version 6.0 too.=C2=A0</div=
><div><br></div><div>remote-viewer 6.0:</div><div>(remote-viewer.exe:26688)=
: GSpice-WARNING **: read error: Stream is already closed<br></div><div><br=
></div><div>that&#39;s all I&#39;ve got for now=C2=A0</div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"><br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">
&gt; <br>
&gt; I&#39;m not sure where to get started - I thought maybe I could<br>
&gt; test some things in XQuartz first.=C2=A0 Hoping this can be done in<br=
>
&gt; user space.<br>
<br>
Are you building vdagent with gtk? With gtk, we might be able to<br>
get some features like clipboard, I hope.<br>
<br>
Cheers,<br>
Victor<br>
</blockquote></div></div></div></div></div>

--000000000000dd2f8305cecf664c--
