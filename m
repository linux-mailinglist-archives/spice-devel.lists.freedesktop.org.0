Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 395277A46C7
	for <lists+spice-devel@lfdr.de>; Mon, 18 Sep 2023 12:18:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92FC210E056;
	Mon, 18 Sep 2023 10:18:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oo1-xc32.google.com (mail-oo1-xc32.google.com
 [IPv6:2607:f8b0:4864:20::c32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61D3E10E056
 for <spice-devel@lists.freedesktop.org>; Mon, 18 Sep 2023 10:18:28 +0000 (UTC)
Received: by mail-oo1-xc32.google.com with SMTP id
 006d021491bc7-57ad95c555eso966824eaf.3
 for <spice-devel@lists.freedesktop.org>; Mon, 18 Sep 2023 03:18:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1695032307; x=1695637107; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=83GWNRv+XcFksQGcFOk1YpEIGPmAz2lTrWoTahK5in4=;
 b=dqZddDp00m10GI9P9qPMI9XpEVTWQrp0uVgA7+PyXjQV1Kv91r9N08fj6vtHgRTDom
 SBO+6XqzZu/4Ea3HDbgZWe0FUczfF37bjRGqFckFOCHqNy5xV8TgQoNpt3TVn7Qdn8Qy
 NCxDgQrq5QLUUgnaYUVbVwntYElA1QAM5uFx5PiFAjF7tYPtWsmbYhsgbCxtp7CV4ngO
 iVyR0frN6VukkORy9r5iZAeG64BKs+7y3wyBJXU68YgY1Fw0IvliVUWMugzIonUqjRpQ
 VLXKzk3Qo+TeCnvJ9lDAHf3d/tfw8c+XWhr23loeQ1it92KmTi2S3hyY9CN6Qr5/PdeQ
 IRKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695032307; x=1695637107;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=83GWNRv+XcFksQGcFOk1YpEIGPmAz2lTrWoTahK5in4=;
 b=pqtzqxry2PEBoMfPCbNP/NioHUCIDQiZy71DMD3q+Aro2i63e9qM5+Ro7YnXMXe19I
 EAxxeqK1fCjqRduQSu9qSELq0rjuQNKkf1PiGI9vcDIIqwKm27DGTHDFMvpZ2MTvIoIZ
 OXaBSIN/Q4KrB8d8fMao4FYyh3uyAW2SS8fgnsEqoJVZz6IkolPdiMvuvqNvoifvolvW
 VRedfik6eqOOoeLex9U4FrLImJTLm12lXlM4IcKbpDLiHHQ+MeUBgTKz+acEwDLPUQ4J
 yj52NVTaIU/fwGN4ZZtbpcOlTLvbGt5IjxgppIZ2cAtUE95WYSf20LIPlG33dwYxKngN
 Q5Eg==
X-Gm-Message-State: AOJu0YzkonaYaeDCy4qwFLN+aSty2K3tdOKEK3q88stmiO9ByiwDeGpr
 0xw+syZLyr58QCquB4ziIcGhHZXpYOO1PBfMxbg=
X-Google-Smtp-Source: AGHT+IGmPrJSwiQQoiDgzanNtvkZjRgynsbdDZ943D5RpwD3R3rlAPjm1dU2rig0BljOsT6nP6o2aW7udZGHbRfVvE4=
X-Received: by 2002:a4a:671a:0:b0:567:4e58:6aaf with SMTP id
 f26-20020a4a671a000000b005674e586aafmr7816981ooc.6.1695032307575; Mon, 18 Sep
 2023 03:18:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAFL1B31Yf92P6_w8yj7w1W8TYf46Nit6-DfL-5rS2LdmqV+QaQ@mail.gmail.com>
In-Reply-To: <CAFL1B31Yf92P6_w8yj7w1W8TYf46Nit6-DfL-5rS2LdmqV+QaQ@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Mon, 18 Sep 2023 11:18:16 +0100
Message-ID: <CAHt6W4eL+DLi-VOaygSHfe-UWngmKg=cFjrC1dSoh6bL2WjWEw@mail.gmail.com>
To: Lin Richard <richard.lin@racer-tech.com>
Content-Type: multipart/alternative; boundary="0000000000009372ab06059f7697"
Subject: Re: [Spice-devel] =?utf-8?b?5a6J6KOdQW5kcm9pZA==?=
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

--0000000000009372ab06059f7697
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Il giorno lun 18 set 2023 alle ore 11:11 Lin Richard <
richard.lin@racer-tech.com> ha scritto:

> Dears ,
> =E8=AB=8B=E5=95=8F=E6=98=AF=E5=90=A6=E8=83=BD=E5=AE=89=E8=A3=9D=E5=AE=89=
=E5=8D=93=E7=B3=BB=E7=B5=B1
> =E7=B3=BB=E7=B5=B1=E9=81=B8=E9=A0=85=E7=82=BA=E4=BD=95
> =E6=88=91=E5=85=A8=E9=81=B8=E4=BA=86=E4=B8=80=E9=81=8D=E4=BD=86=E9=83=BD=
=E7=84=A1=E6=B3=95=E5=AE=89=E8=A3=9D
>
> ... images omitted ...

>
>
> =E8=AC=9D=E8=AC=9D
>
>
I don't know how many people in this ML speak Chinese (not me) but I
managed to understand from the pictures this is not a SPAM.
Translation (thanks to Google translate)

----------
Subjects: Install Android

Dears,
  Can I install Android? What are the system options I selected them all
but couldn't install them.

[2 images about ISO and system selection]

Thanks
----------

Personally I have no idea about installing and using Android.
Did you receive any error message?

Regards,
   Frediano

--0000000000009372ab06059f7697
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">Il giorno lun 18 set 2023 alle ore 11:11 Lin Richard &lt;<a href=3D"=
mailto:richard.lin@racer-tech.com">richard.lin@racer-tech.com</a>&gt; ha sc=
ritto:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Dears ,<div>=E8=AB=8B=E5=95=8F=E6=98=AF=E5=90=A6=E8=83=BD=E5=AE=89=
=E8=A3=9D=E5=AE=89=E5=8D=93=E7=B3=BB=E7=B5=B1<div>=E7=B3=BB=E7=B5=B1=E9=81=
=B8=E9=A0=85=E7=82=BA=E4=BD=95</div><div>=E6=88=91=E5=85=A8=E9=81=B8=E4=BA=
=86=E4=B8=80=E9=81=8D=E4=BD=86=E9=83=BD=E7=84=A1=E6=B3=95=E5=AE=89=E8=A3=9D=
</div><div><br></div></div></div></blockquote><div>... images omitted ... <=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
><div><div></div><div><br></div><div><br></div><div>=E8=AC=9D=E8=AC=9D</div=
><div><br></div></div></div></blockquote><div><br></div><div><div>I don&#39=
;t know how many people in this ML speak Chinese (not me) but I managed to =
understand from the pictures this is not a SPAM.</div><div>Translation (tha=
nks to Google translate)<br></div><div><br></div><div>----------<br></div><=
div>Subjects: Install Android</div><div><br></div><div>Dears,</div><div>=C2=
=A0 Can I install Android? What are the system options I selected them all =
but couldn&#39;t install them.</div><div><br></div><div>[2 images about ISO=
 and system selection]</div><div><br></div><div>Thanks<br></div><div><div>-=
---------<br></div><div><br></div><div>Personally I have no idea about inst=
alling and using Android.</div><div>Did you receive any error message?<br><=
/div><div><br></div><div>Regards,<br></div><div>=C2=A0=C2=A0 Frediano</div>=
</div>=C2=A0</div></div></div>

--0000000000009372ab06059f7697--
