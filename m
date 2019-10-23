Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49358E16A6
	for <lists+spice-devel@lfdr.de>; Wed, 23 Oct 2019 11:52:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6762F6E093;
	Wed, 23 Oct 2019 09:52:15 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E402B6E093
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Oct 2019 09:52:13 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-316-TZa0kG7gM3iqml26v05J5w-1; Wed, 23 Oct 2019 05:52:10 -0400
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DD1C180183D
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Oct 2019 09:52:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D64415DC1E
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Oct 2019 09:52:09 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id C4F8418089C8;
 Wed, 23 Oct 2019 09:52:09 +0000 (UTC)
Date: Wed, 23 Oct 2019 05:52:09 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <1983133253.8140447.1571824329748.JavaMail.zimbra@redhat.com>
In-Reply-To: <20191023083410.12489-3-victortoso@redhat.com>
References: <20191022083358.14214-1-fziglio@redhat.com>
 <20191023083410.12489-1-victortoso@redhat.com>
 <20191023083410.12489-3-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.34.247.51, 10.4.195.7]
Thread-Topic: fixup: gitlab-ci: to fix after mingw
Thread-Index: RYbPlQoSX/pg5D6PUt3ugbNrO0k/rA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: TZa0kG7gM3iqml26v05J5w-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571824332;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=tlULeT3s+0u14sBIOtJHH0vdDprnOTXKkPm4N3//hnI=;
 b=eyBWI8//6Kn562PcgKfOvdyn+qYLsOGRkhDyEmlficDlT2hzc6IqCuOoD6fk5UzNAibN1a
 LWMgisOHqJNsOb1Cpqha0mTzYGSnrHyGnJMu56UmB4jsB9zAsvo71NcOazGXMNBw//TdDv
 VJp9J3FHLigHj1XpRaGX+bU6fcLlwdQ=
Subject: Re: [Spice-devel] [spice-protocol 2/2] fixup: gitlab-ci: to fix
 after mingw
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBGcm9tOiBWaWN0b3IgVG9zbyA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gLS0tCj4gIC5n
aXRsYWItY2kueW1sIHwgMyArKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS8uZ2l0bGFiLWNpLnltbCBiLy5naXRsYWIt
Y2kueW1sCj4gaW5kZXggZGE0ZjUxMi4uYzcwMjhkZCAxMDA2NDQKPiAtLS0gYS8uZ2l0bGFiLWNp
LnltbAo+ICsrKyBiLy5naXRsYWItY2kueW1sCj4gQEAgLTQsOSArNCwxMCBAQCB2YXJpYWJsZXM6
Cj4gICAgREVQU19DT01NT046IGdpdCBsaWJ0b29sIG1ha2UgcHl0aG9uMyBweXRob24zLXNpeCBy
ZWRoYXQtcnBtLWNvbmZpZwo+ICAgICAgICAgICAgICAgICBweXRob24zLXB5cGFyc2luZyBtZXNv
biBuaW5qYS1idWlsZCBndGstZG9jIGdsaWIyLWRldmVsCj4gICAgICAgICAgICAgICAgIGdldHRl
eHQgZ2V0dGV4dC1kZXZlbCBiemlwMiBycG1saW50IHJwbS1idWlsZAo+ICsgIERFUFNfTUlOR1c6
IG1pbmd3MzItZmlsZXN5c3RlbSBtaW5ndzY0LWZpbGVzeXN0ZW0KPiAgCj4gIGJlZm9yZV9zY3Jp
cHQ6Cj4gLS0gZG5mIGluc3RhbGwgLXkgJERFUFNfQ09NTU9OCj4gKy0gZG5mIGluc3RhbGwgLXkg
JERFUFNfQ09NTU9OICRERVBTX01JTkdXCj4gIAo+ICBmZWRvcmEtYXV0b3Rvb2xzOgo+ICAgIHNj
cmlwdDoKCklzIGl0IHVzZWZ1bCB0byBoYXZlIGEgc2VwYXJhdGUgIkRFUFNfTUlOR1ciID8KCkZy
ZWRpYW5vCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpT
cGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2
ZWw=
