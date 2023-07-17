Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E143756463
	for <lists+spice-devel@lfdr.de>; Mon, 17 Jul 2023 15:21:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36AD510E240;
	Mon, 17 Jul 2023 13:21:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71BB410E240
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jul 2023 13:21:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1689600091;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=/5TnsXA3jKgPIyn2MjrbIqtF333wZm5SNWEJHYukbXc=;
 b=C5GzP01ZYLgz7jNp82kY3VjKAUrIZIrgeceTbhO9OHbDfpE1FQdG1EpkFiA8znUjR1uPVB
 vtDt/C7o0/j0Z7A4sav2ichHLyMlr8nC3x4hE301JaDPJN1vylVMjNf0ZIC2WfTqCkc59E
 BvJMf4ArdwHY1Sj6SBoHlR2moWNgzO0=
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com
 [209.85.161.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-620-sJ6N7X3UOJOv9zKT3_ALXg-1; Mon, 17 Jul 2023 09:21:30 -0400
X-MC-Unique: sJ6N7X3UOJOv9zKT3_ALXg-1
Received: by mail-oo1-f70.google.com with SMTP id
 006d021491bc7-5667dddaa5cso4728028eaf.2
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jul 2023 06:21:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689600089; x=1692192089;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=/5TnsXA3jKgPIyn2MjrbIqtF333wZm5SNWEJHYukbXc=;
 b=DJSWlQ5BS2W4hwBIK3sNvFQPI3Ut+loERtwyiJhLIfmYFY4OvYtjG39d/xaRPdgUNg
 Ny5OQUdxwjY4EWrfteprfbG9HQmuxvGMtlbxsdIpJxymIWgpvIm63ieDVVp8+hJlyEop
 TcB0UyiCvrHfPQbZySxMzWKsFAFTsQMzRDrmFCVHZqVWB3SDHWIOPri4wCZ8qqAd0Pvx
 Vaw/FJldrnHwJVoo3dAbRUSjGZdKsNT72DKDygwyhFyDw1gWn7WjfK8gYGBBWODxCE3+
 /xRPM3h8OOqxpYl575pV5aSsZUhJXtapAzDnjZsTLUYELDUhOYsqA/YJ2fWw4KUzy94K
 ZorA==
X-Gm-Message-State: ABy/qLYLY5N1wOtoeRYLNUTl2dEH8xAyRRfP+jxZfQk+GRcOdhDUzLyh
 8dOCpjWTUkJrhBuBePlqmay7G+NIVzqGka+AYFr3Vb265ii/wL6TpJrVkF89vQ/MxhCSJYXiE8T
 eGjW3aF5iMwQqqMOMfhr3MLqboS2Arj3xoKGtMCMIw0itxZg=
X-Received: by 2002:a4a:d295:0:b0:566:fc91:857d with SMTP id
 h21-20020a4ad295000000b00566fc91857dmr3888101oos.5.1689600088840; 
 Mon, 17 Jul 2023 06:21:28 -0700 (PDT)
X-Google-Smtp-Source: APBJJlGW2sqgVJHg2OrVqiE0QvfiFCIpoedhfBrbXNYCI3rOnElTnNH5zAXEK6ytEbWxq5RkGa+PL89hCHbWXzD5WMM=
X-Received: by 2002:a4a:d295:0:b0:566:fc91:857d with SMTP id
 h21-20020a4ad295000000b00566fc91857dmr3888080oos.5.1689600088430; Mon, 17 Jul
 2023 06:21:28 -0700 (PDT)
MIME-Version: 1.0
References: <tencent_B6679654B7F9B858ACDD19AF01982938DB0A@qq.com>
 <CAHt6W4esuZwZ6o+CdT2_jo2q+W3P38vrp0ooGA3gY3UUhNkORw@mail.gmail.com>
 <tencent_0D2D92EE12D6C0CDFE9C9D32A3AABB7D5809@qq.com>
 <CAHt6W4f6ND+RN6rKTs5JZuERgi1RCK2gz2UTf-Cts2fQs+hn3A@mail.gmail.com>
 <tencent_AD58C0DC85ACCD98353863670256EBF9A80A@qq.com>
 <CAHt6W4fAEJvtVWXczBDMBYvS=PkOP54+7_2M8b9UOD4WnCer9w@mail.gmail.com>
 <tencent_267D99E5D57A3EB616DE77666B7E66D2CE08@qq.com>
In-Reply-To: <tencent_267D99E5D57A3EB616DE77666B7E66D2CE08@qq.com>
From: Uri Lublin <ulublin@redhat.com>
Date: Mon, 17 Jul 2023 16:21:17 +0300
Message-ID: <CAAg9qJ1dbThL+GQG0yDuOc88MrLO+VwZnuBkJWrTpziKSqF-Kw@mail.gmail.com>
To: =?UTF-8?B?5Lq65a6X6YGT6aaW?= <928003896@qq.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000001574f30600aeadea"
Subject: Re: [Spice-devel] 
	=?utf-8?b?5Zue5aSN77yaIEhvdyBkb2VzIFNQSUNFIGRpc3Bs?=
	=?utf-8?q?ay_the_desktop_data_processed_by_Nvidia_vGPU=3F?=
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--0000000000001574f30600aeadea
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

On Mon, Jul 17, 2023 at 1:10=E2=80=AFPM =E4=BA=BA=E5=AE=97=E9=81=93=E9=A6=
=96 <928003896@qq.com> wrote:

> Hello,
> The attachment shows the effect of installing spice-streaming-agent on th=
e
> spice official website. There are two screens, one displaying normal and
> the other displaying black.
> =EF=BC=881=EF=BC=89Should the black screen be caused by spice-streaming-a=
gent? What is the
> reason for the black screen? Is there a solution?
>

Are both screens enabled by the OS ?


>
> =EF=BC=882=EF=BC=89Is there a way to only display the desktop generated b=
y spice streaming
> agent and run it normally like a remote desktop, allowing for keyboard an=
d
> mouse interaction?
>

Perhaps you can configure your OS to only enable the NVIDIA card.

Uri


>
> I hope you can help me, thank you!
>
>
> ------------------ =E5=8E=9F=E5=A7=8B=E9=82=AE=E4=BB=B6 -----------------=
-
> *=E5=8F=91=E4=BB=B6=E4=BA=BA:* "Frediano Ziglio"<freddy77@gmail.com>;
> *=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4:* 2023=E5=B9=B47=E6=9C=8812=E6=97=
=A5(=E6=98=9F=E6=9C=9F=E4=B8=89) =E6=99=9A=E4=B8=8A7:26
> *=E6=94=B6=E4=BB=B6=E4=BA=BA:* "=E4=BA=BA=E5=AE=97=E9=81=93=E9=A6=96"<928=
003896@qq.com>;
> *=E6=8A=84=E9=80=81:* "spice-devel"<spice-devel@lists.freedesktop.org>;
> *=E4=B8=BB=E9=A2=98:* Re: [Spice-devel] How does SPICE display the deskto=
p data processed
> by Nvidia vGPU?
>
> Il giorno mer 12 lug 2023 alle ore 09:37 =E4=BA=BA=E5=AE=97=E9=81=93=E9=
=A6=96 <928003896@qq.com> ha
> scritto:
> >
> > Hello,
> > The link you provided is also available on the official website, and I
> have also found it. However, there are few comments and it is still
> difficult to understand. Is there any technical manual or document other
> than those provided on the official website that can help me make coding
> modifications to SPICE?
> >
>
> Not much updated but you can find some base overall at
> https://www.spice-space.org/developers.html, probably you have already
> seen them.
>
> Frediano

--0000000000001574f30600aeadea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,<br></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Mon, Jul 17, 2023 at 1:10=E2=80=AFPM =E4=
=BA=BA=E5=AE=97=E9=81=93=E9=A6=96 &lt;<a href=3D"mailto:928003896@qq.com">9=
28003896@qq.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div>Hello,=C2=A0</div><div>The attachment shows the effect =
of installing spice-streaming-agent on the spice official website. There ar=
e two screens, one displaying normal and the other displaying black.=C2=A0<=
/div><div>=EF=BC=881=EF=BC=89Should the black screen be caused by spice-str=
eaming-agent? What is the reason for the black screen? Is there a solution?=
</div></blockquote><div><br></div><div>Are both screens enabled by the OS ?=
</div><br>=C2=A0<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>=EF=
=BC=882=EF=BC=89Is there a way to only display the desktop generated by spi=
ce streaming agent and run it normally like a remote desktop, allowing for =
keyboard and mouse interaction?</div></blockquote><div><br></div><div><div>=
Perhaps you can configure your OS to only enable the NVIDIA card.<br></div>=
<div><br></div><div>Uri<br></div>=C2=A0</div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div><br></div><div>I hope you can help me, thank you!<=
/div><div><br></div><div><br></div><div style=3D"font-size:12px;font-family=
:Arial Narrow;padding:2px 0px">------------------=C2=A0=E5=8E=9F=E5=A7=8B=
=E9=82=AE=E4=BB=B6=C2=A0------------------</div><div style=3D"font-size:12p=
x;background:rgb(239,239,239);padding:8px"><div><b>=E5=8F=91=E4=BB=B6=E4=BA=
=BA:</b> &quot;Frediano Ziglio&quot;&lt;<a href=3D"mailto:freddy77@gmail.co=
m" target=3D"_blank">freddy77@gmail.com</a>&gt;; </div><div><b>=E5=8F=91=E9=
=80=81=E6=97=B6=E9=97=B4:</b> 2023=E5=B9=B47=E6=9C=8812=E6=97=A5(=E6=98=9F=
=E6=9C=9F=E4=B8=89) =E6=99=9A=E4=B8=8A7:26</div><div><b>=E6=94=B6=E4=BB=B6=
=E4=BA=BA:</b> &quot;=E4=BA=BA=E5=AE=97=E9=81=93=E9=A6=96&quot;&lt;<a href=
=3D"mailto:928003896@qq.com" target=3D"_blank">928003896@qq.com</a>&gt;; </=
div><div><b>=E6=8A=84=E9=80=81:</b> &quot;spice-devel&quot;&lt;<a href=3D"m=
ailto:spice-devel@lists.freedesktop.org" target=3D"_blank">spice-devel@list=
s.freedesktop.org</a>&gt;; </div><div><b>=E4=B8=BB=E9=A2=98:</b> Re: [Spice=
-devel] How does SPICE display the desktop data processed by Nvidia vGPU?</=
div></div><div><br></div>Il giorno mer 12 lug 2023 alle ore 09:37 =E4=BA=BA=
=E5=AE=97=E9=81=93=E9=A6=96 &lt;<a href=3D"mailto:928003896@qq.com" rel=3D"=
noopener" target=3D"_blank">928003896@qq.com</a>&gt; ha scritto:<br>&gt;<br=
>&gt; Hello,<br>&gt; The link you provided is also available on the officia=
l website, and I have also found it. However, there are few comments and it=
 is still difficult to understand. Is there any technical manual or documen=
t other than those provided on the official website that can help me make c=
oding modifications to SPICE?<br>&gt;<br><br>Not much updated but you can f=
ind some base overall at<br><a href=3D"https://www.spice-space.org/develope=
rs.html," rel=3D"noopener" target=3D"_blank">https://www.spice-space.org/de=
velopers.html,</a> probably you have already<br>seen them.<br><br>Frediano<=
/blockquote></div></div>

--0000000000001574f30600aeadea--

