Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89AF8220597
	for <lists+spice-devel@lfdr.de>; Wed, 15 Jul 2020 08:58:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A29A6E420;
	Wed, 15 Jul 2020 06:58:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44E2F89EA3
 for <spice-devel@lists.freedesktop.org>; Wed, 15 Jul 2020 06:58:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594796293;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=fb22TQh54baaoDwRwbyNm0yTAsnaeKHxJqk4JBYaD2s=;
 b=RtYpeKOePXXe3hCv3gnhsABT0nA+zd877Y3sWyJ94iNx4YKQorn8cgfLS/rv3OWQW2RkH1
 giTBzGHFa3QDeqWABT42+TZe3Y8VftU/2LWjHNizzmBsODWNwYMDT6YZZnlfV3jUJEIAtU
 1vKWLD7nAdGIfEcbsixCh8R3YejL8AE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-494-hVqcMij6OgWYDcpjYJtuIw-1; Wed, 15 Jul 2020 02:58:08 -0400
X-MC-Unique: hVqcMij6OgWYDcpjYJtuIw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 42E4518C63C1;
 Wed, 15 Jul 2020 06:58:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 39B893C67;
 Wed, 15 Jul 2020 06:58:07 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2437372F5F;
 Wed, 15 Jul 2020 06:58:07 +0000 (UTC)
Date: Wed, 15 Jul 2020 02:58:04 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <1058379660.34570031.1594796284347.JavaMail.zimbra@redhat.com>
In-Reply-To: <CAOEp5OcRXP_ULCSJvwHLh7LqArVQV6OM1abVkC82YP3ksYmVFQ@mail.gmail.com>
References: <20200712080107.175-1-yuri.benditovich@daynix.com>
 <20200713073148.3w63nucg5z23kzlm@sirius.home.kraxel.org>
 <319372330.34271280.1594631536029.JavaMail.zimbra@redhat.com>
 <CAOEp5OcRXP_ULCSJvwHLh7LqArVQV6OM1abVkC82YP3ksYmVFQ@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.193.158, 10.4.195.7]
Thread-Topic: qxl-wddm-dod: fix behavior on v5 device
Thread-Index: Aq7jq4VP4cGvwqVOCu2fC8vxLrecaQ==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] [PATCH 1/2] qxl-wddm-dod: fix behavior on v5
 device
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
Cc: Yan Vugenfirer <yan@daynix.com>,
 Spice List <spice-devel@lists.freedesktop.org>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: multipart/mixed; boundary="===============0078908640=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0078908640==
Content-Type: multipart/alternative; 
	boundary="----=_Part_34570030_675088623.1594796284345"

------=_Part_34570030_675088623.1594796284345
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Acked the series 

Frediano 

> On Mon, Jul 13, 2020 at 12:12 PM Frediano Ziglio < fziglio@redhat.com >
> wrote:

> > >
> 
> > > Hi,
> 
> > >
> 
> > > > @@ -4795,7 +4796,8 @@ NTSTATUS QxlDevice::HWClose(void)
> 
> > > > {
> 
> > > > PAGED_CODE();
> 
> > > > QxlClose();
> 
> > > > - if (m_bUefiMode)
> 
> > > > + /* QXL device rev 5+ requires explicit reset to switch to VGA mode */
> 
> > > > + if (m_bUefiMode || m_pQxlDod->Revision() > 4)
> 
> > > > {
> 
> > > > DbgPrint(TRACE_LEVEL_INFORMATION, ("%s: Resetting the device\n",
> 
> > > > __FUNCTION__));
> 
> > > > WRITE_PORT_UCHAR((PUCHAR)(m_IoBase + QXL_IO_RESET), 0);
> 
> > >
> 
> > > I'm wondering why this is conditional in the first place?
> 
> > > Isn't it a good idea to reset the device on close no matter what?
> 

> The intention was to leave the entire procedure as is where possible.
> For example, when we do not use the reset, user screen resize does not happen
> until the BDD starts programming the VGA.

> > >
> 
> > > take care,
> 
> > > Gerd
> 
> > >
> 

> > Surely it's less willing to cause possible regressions.
> 

> > Frediano
> 

------=_Part_34570030_675088623.1594796284345
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"font-family: courier new,courier,monaco,monospace=
,sans-serif; font-size: 12pt; color: #000000"><div>Acked the series<br></di=
v><div><br></div><div>Frediano<br></div><blockquote style=3D"border-left:2p=
x solid #1010FF;margin-left:5px;padding-left:5px;color:#000;font-weight:nor=
mal;font-style:normal;text-decoration:none;font-family:Helvetica,Arial,sans=
-serif;font-size:12pt;" data-mce-style=3D"border-left: 2px solid #1010FF; m=
argin-left: 5px; padding-left: 5px; color: #000; font-weight: normal; font-=
style: normal; text-decoration: none; font-family: Helvetica,Arial,sans-ser=
if; font-size: 12pt;"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Jul 13, 2020 at 12:12 PM Frediano Zig=
lio &lt;<a href=3D"mailto:fziglio@redhat.com" target=3D"_blank" data-mce-hr=
ef=3D"mailto:fziglio@redhat.com">fziglio@redhat.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex" data-mce-style=3D"margin=
: 0px 0px 0px 0.8ex; border-left: 1px solid #cccccc; padding-left: 1ex;">&g=
t; <br> &gt; Hi,<br> &gt; <br> &gt; &gt; @@ -4795,7 +4796,8 @@ NTSTATUS Qxl=
Device::HWClose(void)<br> &gt; &gt;&nbsp; {<br> &gt; &gt;&nbsp; &nbsp; &nbs=
p; PAGED_CODE();<br> &gt; &gt;&nbsp; &nbsp; &nbsp; QxlClose();<br> &gt; &gt=
; -&nbsp; &nbsp; if (m_bUefiMode)<br> &gt; &gt; +&nbsp; &nbsp; /* QXL devic=
e rev 5+ requires explicit reset to switch to VGA mode */<br> &gt; &gt; +&n=
bsp; &nbsp; if (m_bUefiMode || m_pQxlDod-&gt;Revision() &gt; 4)<br> &gt; &g=
t;&nbsp; &nbsp; &nbsp; {<br> &gt; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Db=
gPrint(TRACE_LEVEL_INFORMATION, ("%s: Resetting the device\n",<br> &gt; &gt=
;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; __FUNCTION__));<br> &gt; &gt;&nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; WRITE_PORT_UCHAR((PUCHAR)(m_IoBase + QXL_IO_RESET)=
, 0);<br> &gt; <br> &gt; I'm wondering why this is conditional in the first=
 place?<br> &gt; Isn't it a good idea to reset the device on close no matte=
r what?<br></blockquote><div><br></div><div>The intention was to leave the =
entire procedure as is where possible.</div><div>For example, when we do no=
t use the reset, user screen resize does not happen until the BDD starts pr=
ogramming the VGA.</div><div><br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex" data-mce-style=3D"margin: 0px 0px 0px 0.8ex; border-left: 1px=
 solid #cccccc; padding-left: 1ex;">&gt; <br> &gt; take care,<br> &gt;&nbsp=
; &nbsp;Gerd<br> &gt; <br> <br> Surely it's less willing to cause possible =
regressions.<br> <br> Frediano<br> <br></blockquote></div></div></blockquot=
e><div><br></div></div></body></html>
------=_Part_34570030_675088623.1594796284345--


--===============0078908640==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0078908640==--

