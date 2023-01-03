Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF1165BC8E
	for <lists+spice-devel@lfdr.de>; Tue,  3 Jan 2023 09:57:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 694B010E23F;
	Tue,  3 Jan 2023 08:57:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39BD610E23F
 for <spice-devel@lists.freedesktop.org>; Tue,  3 Jan 2023 08:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1672736261;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=5loYVFkTKB/RtxjC5Ugi+Hr/RsHaa4x+6VyJhV0CkNc=;
 b=D6NdrTUEzw8I6nigyksaV0t5g+N5u3G3vdncratgLVLW/sly2CN1x0SEaxn+PuJp8GyBnp
 KkzmC5zD6Cc9ui5UEI8t6NT9keLaOaD38aQpNDmib3k/kFXpzYFMGr4FZTx7AMOySIVKfM
 wpQiPH3i8m3Mp9QX8vS1qhCO16q9SSY=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-173-sWXqbm8kOrWE47VHfPxHMQ-1; Tue, 03 Jan 2023 03:57:39 -0500
X-MC-Unique: sWXqbm8kOrWE47VHfPxHMQ-1
Received: by mail-wr1-f71.google.com with SMTP id
 v12-20020adfc5cc000000b0029910b64099so610197wrg.23
 for <spice-devel@lists.freedesktop.org>; Tue, 03 Jan 2023 00:57:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=5loYVFkTKB/RtxjC5Ugi+Hr/RsHaa4x+6VyJhV0CkNc=;
 b=QSdUmU8tjOUbnKmb6WycTgDHui1qNE7ZSgrbqkgUHLXQiYxlJ+EMuj9dVR2oHShW7R
 U2mbUqnr+UKSfhzzvHJv1p047ewR/g2Wo5B0YBtOhQHsFCUY6p3YnXKEMq24VB3NBjsC
 jru9UWd0c4hjt2zMJKOrH1OL9oygeSETrYUEQ0iUyYJ644IOddBR+zsyeimHggtgNRfU
 13GYVQD7gYikZjs0kVj41VB69wZL/qqXzlbTEPRxZBVIcgAFf4DpEZGunzsBA+rY/9eJ
 hdVMxKtHm4A4HmhqVM51+Thcyd+QQbLxx3Sj003/57+tL2+qecTixS7ADJOo8T+wae0V
 wRug==
X-Gm-Message-State: AFqh2kpsgVfYlAh8m+/+PmD6RQpXTsGKuG1G4FsgBKQi/0XEZtmH3IUs
 iD4iOUJiVmEgXdSE5EVav1e82B8JvFvunIMFmh89YH2KEqMMqPjoYLIXgpjEky5/cmT1NACqthm
 qhJY2mJbFT/p32fcEusTQgz/CNVuf79we5JJyE6VN+dvn5W0=
X-Received: by 2002:a1c:2505:0:b0:3d0:bda:f2c with SMTP id
 l5-20020a1c2505000000b003d00bda0f2cmr2186800wml.117.1672736258207; 
 Tue, 03 Jan 2023 00:57:38 -0800 (PST)
X-Google-Smtp-Source: AMrXdXtP2oaFToZMm0yp27t6Nr4UzKA5+spAQwd2zJwUCM8uD02fllzADWWoUJtFLGQaORg88QuDjsRUOnqKPtDJLM8=
X-Received: by 2002:a1c:2505:0:b0:3d0:bda:f2c with SMTP id
 l5-20020a1c2505000000b003d00bda0f2cmr2186797wml.117.1672736257928; 
 Tue, 03 Jan 2023 00:57:37 -0800 (PST)
MIME-Version: 1.0
References: <a95fc8c4-6384-4b9a-7e09-878dab49c164@couderc.eu>
 <CAMVti-_3iqZqpu=qbq=z+pfSZAEQPmAStFFUMRRseqJn_=UFWg@mail.gmail.com>
 <d7532e7f-5845-34bf-7ceb-1e47d856be7e@couderc.eu>
In-Reply-To: <d7532e7f-5845-34bf-7ceb-1e47d856be7e@couderc.eu>
From: Xiaodai Wang <xiaodwan@redhat.com>
Date: Tue, 3 Jan 2023 16:58:24 +0800
Message-ID: <CAMVti-_eWR8=Y0VN8ug9+E7=taLY6qVdKPRRQDxzB4Es8Wdv3g@mail.gmail.com>
To: Pierre Couderc <pierre@couderc.eu>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="00000000000075078905f158423b"
Subject: Re: [Spice-devel] In spicy,
 how to change shft-F12 to ungrab the mouse ?
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

--00000000000075078905f158423b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Oh, Sorry. I thought it was virt-viewer.
Let's wait for others to answer your question.

On Tue, Jan 3, 2023 at 4:51 PM Pierre Couderc <pierre@couderc.eu> wrote:

> Thank you very much.
>
> But it does not work I get :
>
> option parsing failed: Unknown option --hotkeys=3Drelease-cursor=3Dctrl+a=
lt
>
> Moreover,I find nowhere a :
>
> man spicy
>
> !!!
>
> Thanks again
>
>
>
>
> Le 1/3/23 =C3=A0 09:06, Xiaodai Wang a =C3=A9crit :
>
> '--hotkeys' could do that. You may see the man page for the usage.
>
> e.g.
> --hotkeys=3Drelease-cursor=3Dctrl+alt
>
> On Wed, Dec 28, 2022 at 5:11 PM Pierre Couderc <pierre@couderc.eu> wrote:
>
>> Is is possible ? how ?
>>
>> Thanks for any help.
>>
>> PC
>>
>>

--00000000000075078905f158423b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Oh,=
 Sorry. I thought=C2=A0it was virt-viewer.</div><div class=3D"gmail_default=
" style=3D"font-size:small">Let&#39;s wait for others to answer your questi=
on.</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Tue, Jan 3, 2023 at 4:51 PM Pierre Couderc &lt;<a href=3D"mailt=
o:pierre@couderc.eu">pierre@couderc.eu</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <p>Thank you very much.</p>
    <p>But it does not work I get :</p>
    <p>option parsing failed: Unknown option
      --hotkeys=3Drelease-cursor=3Dctrl+alt</p>
    <p>Moreover,I find nowhere a :</p>
    <p>man spicy</p>
    <p>!!!</p>
    <p>Thanks again</p>
    <p><br>
    </p>
    <p><br>
    </p>
    <p><br>
    </p>
    <div>Le 1/3/23 =C3=A0 09:06, Xiaodai Wang a
      =C3=A9crit=C2=A0:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"font-size:small">&#39;--hotke=
ys&#39;
          could do that. You may see the man page for the usage.</div>
        <div class=3D"gmail_default" style=3D"font-size:small"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:small">e.g.</div>
        <div class=3D"gmail_default" style=3D"font-size:small">--hotkeys=3D=
release-cursor=3Dctrl+alt<br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec 28, 2022 at 5:11
          PM Pierre Couderc &lt;<a href=3D"mailto:pierre@couderc.eu" target=
=3D"_blank">pierre@couderc.eu</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">Is
          is possible ? how ?<br>
          <br>
          Thanks for any help.<br>
          <br>
          PC<br>
          <br>
        </blockquote>
      </div>
    </blockquote>
  </div>

</blockquote></div>

--00000000000075078905f158423b--

