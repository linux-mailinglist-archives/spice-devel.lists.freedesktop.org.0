Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7896A0016
	for <lists+spice-devel@lfdr.de>; Wed, 28 Aug 2019 12:42:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D20589715;
	Wed, 28 Aug 2019 10:42:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 471FA89715
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 10:42:54 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id f72so2232423wmf.5
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 03:42:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:message-id:mime-version:subject:date
 :in-reply-to:cc:to:references;
 bh=piilk/5Y2xeSHoacJwkbyBvMI1wq2Y15kR72KNlEElA=;
 b=XH+ePPaauplxccQ2l5dwX/9aXrOWFtRLfUyX26IAjINsvHoTlAyuFmA4j/oqT2K/El
 9QMV3uJlVlMruK8P81CfSMsmNH4RqXgLTKUa5jkfohQF25LrVrA9Coe6sXKIquhIfKpS
 h45o8AMlskUxb9izcXm7ClTHvo0sBhVGdOV/qAnJcZwmiro2soojXEi50175Qe08DW+A
 t2RGEjeV3ykwfAO/znNsETXHPG+pkB6MAObd19V7jS9BfE+V0b18rJGaZRleb8azXgiw
 nVCY1QkDGKUzb7JWCO4FzJOlObY9tZI9FdnlIbgPcTPR6AZhf6Jit+ZX8iUs+BzSj3hf
 STvw==
X-Gm-Message-State: APjAAAU2kr6RodlF3l8WSnYOPKMx7Ms+5aKqfjOn+SsNYDFYEjL9ncsk
 YCwA9bJOZ3cSeDhNRlCOay0=
X-Google-Smtp-Source: APXvYqyIr9DZhUE1MdJDy68YWe0nUJHgFBYToV9qIQVNzFb93VMxG34IsPmkqjdiy054UJUXUJLJvw==
X-Received: by 2002:a1c:45:: with SMTP id 66mr3927291wma.40.1566988444744;
 Wed, 28 Aug 2019 03:34:04 -0700 (PDT)
Received: from ?IPv6:2a01:e35:8b6a:1220:9181:c87d:190a:e25f?
 ([2a01:e35:8b6a:1220:9181:c87d:190a:e25f])
 by smtp.gmail.com with ESMTPSA id e15sm1507868wrj.74.2019.08.28.03.34.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 28 Aug 2019 03:34:03 -0700 (PDT)
From: Christophe de Dinechin <christophe.de.dinechin@gmail.com>
X-Google-Original-From: Christophe de Dinechin <christophe@dinechin.org>
Message-Id: <93472670-4B4A-41ED-80F2-F155AC635E8C@dinechin.org>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Date: Wed, 28 Aug 2019 12:34:01 +0200
In-Reply-To: <711781474.9841323.1566987366292.JavaMail.zimbra@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-25-fziglio@redhat.com> <m1tva2evs4.fsf@dinechin.org>
 <711781474.9841323.1566987366292.JavaMail.zimbra@redhat.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
 :references;
 bh=piilk/5Y2xeSHoacJwkbyBvMI1wq2Y15kR72KNlEElA=;
 b=i2PQlJ1RTH3mAHW2DAvs7Q6/57JDOHvzNW908NfnWBPBSMbbeKIw4rr83VCmr690mo
 iCAI8Rbt0tT6mhMg0ssPp1NpWX5zZQrjKxfT+6oVSaJhuHIaC0FVevlDwvymAW/YVSSN
 rcIxxIpRJbGztG98CbZ5/SNjo8lspXL7VpNrYFa9aJnlWdneqEEzw/l2bFVYLzDARjzU
 GsbVu/BLc/wO0BPrGCc8ILMrtAmmQaF5DebPulH+eFI5OIP+YqJZSBSJO1J49lVGIpaQ
 2wg4Chzb58aUWA8MQOHVOLpz2EPxeqD78VXuI+3Ix0VD/XDImipC4zAB4eLUjlLnX+7o
 e37Q==
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 24/29] usb-backend: Rewrite
 USB emulation support
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Cc: spice-devel@lists.freedesktop.org,
 Christophe de Dinechin <christophe.de.dinechin@gmail.com>
Content-Type: multipart/mixed; boundary="===============1031506627=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1031506627==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_0B31C7E5-E66E-4368-8CB1-90026909829C"


--Apple-Mail=_0B31C7E5-E66E-4368-8CB1-90026909829C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 28 Aug 2019, at 12:16, Frediano Ziglio <fziglio@redhat.com> wrote:
>=20
>> Side comment: usbredir_write_callback used to be a mere wrapper =
around
>> spice_usbredir_write_callback. Now, it has a whole lot of logic in =
it.
>> Is it intentional, or should some of that logic be moved to shared =
code?
>>=20
>=20
> Yes, intentional (otherwise why changing the code?).
> This code is not shared with anything. The only reason to put in a =
separate
> function is separation, not sharing.
> I have the feeling I didn't get what you wanted to say.

I meant: what is the separation of concerns between
usbredir_write_callback and spice_usbredir_write_callback?

In what context would spice_usbredir_write_callback be used
where the new logic in usbredir_write_callback is not necessary?

If the way you organized the code is somehow better, given that
usbredir_write_callback is no longer a simple wrapper, it may
indicate that additional comments are required to explain what
each does. Or maybe it=E2=80=99s perfectly clear to everyone but me ;-)

This may also be intended for some follow-up patches?

[=E2=80=A6]
>=20
> There are still some minor weirdness in the initial patch.
> Like why usbredir_hello is called with a NULL parameter instead of =
having
> a separate "initialize_edev" or similar.
> Or why parser code calls a lot usbredir_write_flush_callback which was=20=

> previously called only by usbredirhost and is supposed to dispatch =
between
> usbredirhost or parser why from the parser is called only to flush =
from
> parser if channel is ready.

Hmmm. That tends to confirm the impression above that some
boundary is subtly moving between the components. But I=E2=80=99m not
really familiar enough with usbredir to understand the intent just from
the patches ;-)


Thanks
Christophe=

--Apple-Mail=_0B31C7E5-E66E-4368-8CB1-90026909829C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><br =
class=3D""><div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">On 28 Aug 2019, at 12:16, Frediano Ziglio &lt;<a =
href=3D"mailto:fziglio@redhat.com" class=3D"">fziglio@redhat.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div =
class=3D""><blockquote type=3D"cite" style=3D"font-family: Helvetica; =
font-size: 18px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D"">Side =
comment: usbredir_write_callback used to be a mere wrapper =
around</blockquote><blockquote type=3D"cite" style=3D"font-family: =
Helvetica; font-size: 18px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; text-decoration: none;" =
class=3D"">spice_usbredir_write_callback. Now, it has a whole lot of =
logic in it.<br class=3D"">Is it intentional, or should some of that =
logic be moved to shared code?<br class=3D""><br =
class=3D""></blockquote><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 18px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 18px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">Yes, intentional (otherwise why changing the =
code?).</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 18px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 18px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">This code is =
not shared with anything. The only reason to put in a separate</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
18px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
18px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">function is separation, not =
sharing.</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 18px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 18px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">I have the =
feeling I didn't get what you wanted to say.</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
18px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" =
class=3D""></div></blockquote><div><br class=3D""></div><div>I meant: =
what is the separation of concerns =
between</div><div>usbredir_write_callback and =
spice_usbredir_write_callback?</div><div><br class=3D""></div><div>In =
what context would spice_usbredir_write_callback be used</div><div>where =
the new logic in usbredir_write_callback is not necessary?</div><div><br =
class=3D""></div><div>If the way you organized the code is somehow =
better, given that</div><div>usbredir_write_callback is no longer a =
simple wrapper, it may</div><div>indicate that additional comments are =
required to explain what</div><div>each does. Or maybe it=E2=80=99s =
perfectly clear to everyone but me ;-)</div><div><br =
class=3D""></div><div>This may also be intended for some follow-up =
patches?</div><div><br class=3D""></div><div>[=E2=80=A6]</div><blockquote =
type=3D"cite" class=3D""><div class=3D""><br style=3D"caret-color: =
rgb(0, 0, 0); font-family: Helvetica; font-size: 18px; font-style: =
normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 18px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">There are still some minor weirdness in the initial =
patch.</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 18px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 18px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">Like why =
usbredir_hello is called with a NULL parameter instead of =
having</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 18px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 18px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">a separate =
"initialize_edev" or similar.</span><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 18px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 18px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">Or why parser code calls a lot usbredir_write_flush_callback =
which was<span class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
18px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
18px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">previously called only by =
usbredirhost and is supposed to dispatch between</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
18px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
18px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">usbredirhost or parser why from =
the parser is called only to flush from</span><br style=3D"caret-color: =
rgb(0, 0, 0); font-family: Helvetica; font-size: 18px; font-style: =
normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 18px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">parser if channel is ready.</span><br style=3D"caret-color: =
rgb(0, 0, 0); font-family: Helvetica; font-size: 18px; font-style: =
normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""></div></blockquote></div><br =
class=3D""><div class=3D"">Hmmm. That tends to confirm the impression =
above that some</div><div class=3D"">boundary is subtly moving between =
the components. But I=E2=80=99m not</div><div class=3D"">really familiar =
enough with usbredir to understand the intent just from</div><div =
class=3D"">the patches ;-)</div><div class=3D""><br class=3D""></div><div =
class=3D""><br class=3D""></div><div class=3D"">Thanks</div><div =
class=3D"">Christophe</div></body></html>=

--Apple-Mail=_0B31C7E5-E66E-4368-8CB1-90026909829C--

--===============1031506627==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1031506627==--
