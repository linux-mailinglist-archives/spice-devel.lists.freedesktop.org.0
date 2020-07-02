Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4A92128B1
	for <lists+spice-devel@lfdr.de>; Thu,  2 Jul 2020 17:53:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A8776EB17;
	Thu,  2 Jul 2020 15:53:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C80586EB17
 for <spice-devel@lists.freedesktop.org>; Thu,  2 Jul 2020 15:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593705188;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+64DFfbZHFDf5gExiC5RQITAkWZDzYr5ysKDlMyqX7Q=;
 b=NW+xh1j5oNcs+cG7VjoDdJ/H7e3HJ2KibpbgD/aPtAoPYjHnP0WSzcu7Up4sXDdS7vYu/a
 4flH2Hlyi53LtYoep2zPbSpT+jTFl0aFEdUtQV/1IYpd5wwVOxVzMJk1nyO2bW5SwCp+CH
 71pVwIKbc3olHcP3CCTCf1qO6anT2zw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-273-xhKlAGzRMmi7qlOW1xXmMw-1; Thu, 02 Jul 2020 11:53:02 -0400
X-MC-Unique: xhKlAGzRMmi7qlOW1xXmMw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A7D641054F8B;
 Thu,  2 Jul 2020 15:53:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A0FD473FD3;
 Thu,  2 Jul 2020 15:53:01 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9969F6C9C4;
 Thu,  2 Jul 2020 15:53:01 +0000 (UTC)
Date: Thu, 2 Jul 2020 11:53:01 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Oliver =?utf-8?Q?Guti=C3=A9rrez?= <ogutsua@gmail.com>
Message-ID: <1020988664.32942646.1593705181545.JavaMail.zimbra@redhat.com>
In-Reply-To: <CA+J7JHtzSwg7tj2OR5uaDtzFJivnc=v+NH=2nN+D6=w_3im6gg@mail.gmail.com>
References: <20200528123106.846919-1-ogutsua@gmail.com>
 <CAJjKVYMQTBmMAWLv9JMRV2pdq96mi7GHd+AJjwv=T0T=hEJn9g@mail.gmail.com>
 <CA+J7JHtzSwg7tj2OR5uaDtzFJivnc=v+NH=2nN+D6=w_3im6gg@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.195.42, 10.4.195.20]
Thread-Topic: Added needed import of function arraybuffer_to_str
Thread-Index: PRxwyaJoWaW9f+d1kQpkU4rbzTkIzQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fziglio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] [PATCH] Added needed import of function
 arraybuffer_to_str
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
Content-Type: multipart/mixed; boundary="===============1358749727=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1358749727==
Content-Type: multipart/alternative; 
	boundary="----=_Part_32942645_1829644751.1593705181544"

------=_Part_32942645_1829644751.1593705181544
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Yes, tested and merged, sorry it got lost=20

Thanks=20
Frediano=20

> Hi there.

> Is there any option to get this fix into spice-html5 code?

> Thanks in advance.

> El jue., 28 may. 2020 a las 13:33, Oliver Gutierrez (< ogutierrez@redhat.=
com
> >) escribi=C3=B3:

> > This is a patch to fix the SPICE port feature not being working since t=
he
> > change made to use module imports instead of inline loading of scripts.
>=20

> > Right now works with only this change.
>=20

> > On Thu, May 28, 2020 at 1:31 PM Oliver Gutierrez < ogutsua@gmail.com >
> > wrote:
>=20

> > > ---
> >=20
>=20
> > > src/port.js | 2 +-
> >=20
>=20
> > > 1 file changed, 1 insertion(+), 1 deletion(-)
> >=20
>=20

> > > diff --git a/src/port.js b/src/port.js
> >=20
>=20
> > > index 74523ae..b254131 100644
> >=20
>=20
> > > --- a/src/port.js
> >=20
>=20
> > > +++ b/src/port.js
> >=20
>=20
> > > @@ -20,7 +20,7 @@
> >=20
>=20
> > > */
> >=20
>=20

> > > import { Constants } from './enums.js';
> >=20
>=20
> > > -import { DEBUG } from './utils.js';
> >=20
>=20
> > > +import { DEBUG, arraybuffer_to_str } from './utils.js';
> >=20
>=20
> > > import { SpiceConn } from './spiceconn.js';
> >=20
>=20
> > > import { SpiceMsgPortInit } from './spicemsg.js';
> >=20
>=20

> > > --
> >=20
>=20
> > > 2.25.1
> >=20
>=20

> > > _______________________________________________
> >=20
>=20
> > > Spice-devel mailing list
> >=20
>=20
> > > Spice-devel@lists.freedesktop.org
> >=20
>=20
> > > https://lists.freedesktop.org/mailman/listinfo/spice-devel
> >=20
>=20

> > --
>=20
> > Oliver Gutierrez
>=20
> > Software Engineer - Desktop Management tools
>=20
> > Red Hat
>=20

> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

------=_Part_32942645_1829644751.1593705181544
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"font-family: courier new,courier,monaco,monospace=
,sans-serif; font-size: 12pt; color: #000000"><div>Yes, tested and merged, =
sorry it got lost<br></div><div><br></div><div>Thanks<br></div><div>&nbsp; =
Frediano<br></div><div><br></div><blockquote style=3D"border-left:2px solid=
 #1010FF;margin-left:5px;padding-left:5px;color:#000;font-weight:normal;fon=
t-style:normal;text-decoration:none;font-family:Helvetica,Arial,sans-serif;=
font-size:12pt;"><div><br></div><div dir=3D"ltr"><div>Hi there.</div><div><=
br></div><div>Is there any option to get this fix into spice-html5 code?</d=
iv><div><br></div><div>Thanks in advance.<br></div><div><br></div><div><br>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">El jue., 28 may. 2020 a las 13:33, Oliver Gutierrez (&lt;<a href=3D"m=
ailto:ogutierrez@redhat.com" target=3D"_blank">ogutierrez@redhat.com</a>&gt=
;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr"><div>This is a patch to fix the SPICE port feature not b=
eing working since the change made to use module imports instead of inline =
loading of scripts.</div><div><br></div><div>Right now works with only this=
 change.<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Thu, May 28, 2020 at 1:31 PM Oliver Gutierrez &lt;<a h=
ref=3D"mailto:ogutsua@gmail.com" target=3D"_blank">ogutsua@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">---<br>
&nbsp;src/port.js | 2 +-<br>
&nbsp;1 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/src/port.js b/src/port.js<br>
index 74523ae..b254131 100644<br>
--- a/src/port.js<br>
+++ b/src/port.js<br>
@@ -20,7 +20,7 @@<br>
&nbsp;*/<br>
<br>
&nbsp;import { Constants } from './enums.js';<br>
-import { DEBUG } from './utils.js';<br>
+import { DEBUG, arraybuffer_to_str } from './utils.js';<br>
&nbsp;import { SpiceConn } from './spiceconn.js';<br>
&nbsp;import { SpiceMsgPortInit } from './spicemsg.js';<br>
<br>
-- <br>
2.25.1<br>
<br>
_______________________________________________<br>
Spice-devel mailing list<br>
<a href=3D"mailto:Spice-devel@lists.freedesktop.org" target=3D"_blank">Spic=
e-devel@lists.freedesktop.org</a><br>
<a href=3D"https://lists.freedesktop.org/mailman/listinfo/spice-devel" rel=
=3D"noreferrer" target=3D"_blank">https://lists.freedesktop.org/mailman/lis=
tinfo/spice-devel</a><br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr"><div dir=
=3D"ltr"><div><div dir=3D"ltr"><span>Oliver Gutierrez<br>Software Engineer =
- Desktop Management tools<br>Red Hat</span></div></div></div></div>
</blockquote></div>
<br>_______________________________________________<br>Spice-devel mailing =
list<br>Spice-devel@lists.freedesktop.org<br>https://lists.freedesktop.org/=
mailman/listinfo/spice-devel<br></blockquote><div><br></div></div></body></=
html>
------=_Part_32942645_1829644751.1593705181544--


--===============1358749727==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1358749727==--

