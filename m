Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8956141FC
	for <lists+spice-devel@lfdr.de>; Tue,  1 Nov 2022 00:52:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43A2810E201;
	Mon, 31 Oct 2022 23:52:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A13010E201
 for <spice-devel@lists.freedesktop.org>; Mon, 31 Oct 2022 23:52:28 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id a14so18108501wru.5
 for <spice-devel@lists.freedesktop.org>; Mon, 31 Oct 2022 16:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=kabC7wFIqO6BnIwx/88SNk7Fa7JSIRjv/2577VW9eIs=;
 b=VlhpuiWwUxoMchevT7E9ZR3i1k2TMu4jrdM1vhMAhop4DKKXFADZXIpc7L1MqXQDPh
 NWDfPgJ7DkU7ghv0AnHGvzeVd9wgRf9CWouojDdOmotbewayGt0+UEKHqPSPKE6p4h4Z
 c/vKAjBg3yFy3NvWunOxXq5vGm8jcm1Moo7J+nVvKtqfsdlPUk+Y5qULuKG250dNbURC
 44mLp83kNY62RHwGQCg5SB32HzRmvWvOD57FVYH3i2HYYnidoI4M7HG8Il1tpmKFupdB
 JTd8WroW+k43jaldxMr+4L+JUPM3s/8gUdHj/vQ+OWRWvbe/Rr16sg95Cv1YtFmM8qkW
 50eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=kabC7wFIqO6BnIwx/88SNk7Fa7JSIRjv/2577VW9eIs=;
 b=0eH12ld/UlPr00D8PjHQNomcKsXlNO9b01Gct8dF/O1AlzTAFwx1T19CLyHsmfOJYf
 S0CmQ+J/l+MRJM5hQH5nuUL5MqZ9FZzbdoJL+BGlgOq4iWDUCG7v0PErUvOdQPx56TPD
 KFlJ4021grev8jpBBwaO5cr6Tk4iYRvWimjW0eKpdrYrulvEgdkPCD4VpjvDJz58fU0b
 j4cKCVls97aSKDm0pM3fYVHKzWriyWhBUUHWSj1Vwartq9eFwZWA11JU8X26CaZwNhcD
 18Z/EJ70u4edgbB3l+337NchiYDdPx7P8RKOBoPcSiQUCzhXLxGGk/RXQGkV3ILPRmg+
 n8/w==
X-Gm-Message-State: ACrzQf2bk4GoDtv2ywwK6RcqmeUhoVZ2h669r+eTJyy+/xZMbh3ZjiOR
 qucavxTy7/VSImI+Uqd/uIEBBeyuEU4DlqAijOlEHcWH7w9gkg==
X-Google-Smtp-Source: AMsMyM5V7HEOIfy/06qsYgKF6OX4Nj/m1fy/5c1vndjX2YJo2ZmGHuGm7CES6KUfTZ6ShCVkaaoiCkiSLJh8bBEzbHE=
X-Received: by 2002:a05:6000:178a:b0:236:e1a4:7c5a with SMTP id
 e10-20020a056000178a00b00236e1a47c5amr472874wrg.428.1667260346696; Mon, 31
 Oct 2022 16:52:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAGeBE=w-KZXVACD6xeeqfoo03K5BZxzA8O2U5x-8=NLsR=ZQKw@mail.gmail.com>
 <CAHt6W4dkGkFVDBQbMFN0+AD24OB18uxhhQC5n4u51PiJGnAi8g@mail.gmail.com>
 <CAGeBE=y4HKusjFMYez9uGEzEMm_9uhgDeW5uakB-bErUWcPoJQ@mail.gmail.com>
 <CAHt6W4eysYyfv-9_W6n5YRv5qSd0rU46=vGf25fAO5s342a3aw@mail.gmail.com>
 <CAGeBE=xYOdDo40ec=T=auNhj-nq8nHXuOWZ6Tt+HT-gniu=YcQ@mail.gmail.com>
 <CAHt6W4cJW-Lj_rE+c9YqrDSft5f0t4RJ41z4bv4y2gVYyyfwNQ@mail.gmail.com>
 <CAAg9qJ3bMd=3_YD4UJ1rHDmm3s7L5NG047eioeuJ209s50MAKg@mail.gmail.com>
 <CAGeBE=w5OVLoKD_E72HdacqCivp=ZS2tuaDoHMJTB82-68W0-A@mail.gmail.com>
 <CAAg9qJ20nfDLfx_8Hboyw-GZpU5t4mrKH7+4L_Ne-wOrqbzEZg@mail.gmail.com>
 <CAGeBE=zLNuypqM296NKHbiVXf-u4hcK3MbTxXG34eOeDSgG_cg@mail.gmail.com>
 <CAGeBE=wNsck1_L88kV=oAVVe5LThruT4SZEJwuZPXrEVds-6tQ@mail.gmail.com>
 <CAAg9qJ1uLht3--b4OwQpiGPj2q=8FZvSF19VG+pQPWTPKz_RzA@mail.gmail.com>
In-Reply-To: <CAAg9qJ1uLht3--b4OwQpiGPj2q=8FZvSF19VG+pQPWTPKz_RzA@mail.gmail.com>
From: =?UTF-8?Q?Carlos_Gonz=C3=A1lez?= <piteccelaya@gmail.com>
Date: Mon, 31 Oct 2022 23:52:15 +0000
Message-ID: <CAGeBE=zqf-yb56MWYuok1ych_hsJAWsbwXB0zuFF834Vs2hDRw@mail.gmail.com>
To: Uri Lublin <uril@redhat.com>, freddy77@gmail.com,
 spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000b6865905ec5d4c6d"
Subject: Re: [Spice-devel] Vdagent not working on a Debian guest
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

--000000000000b6865905ec5d4c6d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

After trying it yet again, quoting myself:
>>As already mentioned, the -f and -o options are serving of absolutely
nothing

Repeat: *absolutely nothing*
Same any other directory

Spice-vdagent's logs say nothing at all.

The only ones saying something are remote-viewer and qemu-monitor: "file
transfer is disabled".

Will you ask me to repeat myself some more times?
Thanks for that


El jue, 27 oct 2022 a las 16:55, Uri Lublin (<uril@redhat.com>) escribi=C3=
=B3:

>
>
>>> Now, could we focus on the nasty bug with file transferring? As already
>>> mentioned, the -f and -o options are serving of absolutely nothing...
>>>
>>
> Does it help if you run spice-vdagent -xd -f $HOME ?
> Did you try other directories with -f ?
>
> Uri.
>

--000000000000b6865905ec5d4c6d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>After trying it yet again, quoting myself:</div><div>=
&gt;&gt;As already mentioned, the -f and -o options are serving of absolute=
ly nothing</div><div><br></div><div>Repeat: *absolutely nothing*</div><div>=
Same any other directory</div><div><br></div><div>Spice-vdagent&#39;s logs =
say nothing at all.</div><div><br></div><div>The only ones saying something=
 are remote-viewer and qemu-monitor: &quot;file transfer is disabled&quot;.=
</div><div><br></div><div>Will you ask me to repeat myself some more times?=
</div><div>Thanks for that<br></div><div><br></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">El jue, 27 oct 2022 a las 16:5=
5, Uri Lublin (&lt;<a href=3D"mailto:uril@redhat.com">uril@redhat.com</a>&g=
t;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div class=3D"gmail_quote"><br><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div></div><d=
iv><br></div><div>Now, could we focus on the nasty bug with file transferri=
ng? As already mentioned, the -f and -o options are serving of absolutely n=
othing...</div></div></blockquote></div></div></blockquote><div><br></div><=
div>Does it help if you run spice-vdagent -xd -f $HOME ?</div><div>Did you =
try other directories with -f ?</div><br><div>Uri.</div></div></div>
</blockquote></div></div>

--000000000000b6865905ec5d4c6d--
