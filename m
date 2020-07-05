Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8125214D24
	for <lists+spice-devel@lfdr.de>; Sun,  5 Jul 2020 16:33:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B98226E0C9;
	Sun,  5 Jul 2020 14:33:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D5196E05C
 for <spice-devel@lists.freedesktop.org>; Sun,  5 Jul 2020 14:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593959600;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zYuiDpDQEM4eCZLDOGwZYahWyhQoeER4WvOVeixX0wo=;
 b=McNVC6fMw/vAtyb2t5gFfL1+y3Z1cxUbNECE75Yaa2ru/zKKMeKEMloE1qBH9YL9wSpIh6
 GVVQ/KRAyyKxawsnHCTfawcCw4QiTxXR0c3wK8+ab/pb8sLnP9b7eOenRFzKYgkUyo3N/x
 GcSOzZ9sNSQAJ/PD9gJFF5grPIFfBBQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-96-tQiGfmbMPyK50colbrdBVg-1; Sun, 05 Jul 2020 10:33:16 -0400
X-MC-Unique: tQiGfmbMPyK50colbrdBVg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 265FD107ACCA;
 Sun,  5 Jul 2020 14:33:15 +0000 (UTC)
Received: from lub.tlv (unknown [10.35.206.202])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0A8CF5D9CC;
 Sun,  5 Jul 2020 14:33:13 +0000 (UTC)
To: mnavahan <mnavahan@gmail.com>, spice-devel@lists.freedesktop.org
References: <9de19746-307e-92e0-b016-88381b7b8b34@gmail.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <3b8598af-c4d5-d774-1b04-53610643a229@redhat.com>
Date: Sun, 5 Jul 2020 17:33:07 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <9de19746-307e-92e0-b016-88381b7b8b34@gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=uril@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] spice & virt-viewver & dedicated mouse & keyboard
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
Reply-To: uril@redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gNy80LzIwIDEyOjEzIFBNLCBtbmF2YWhhbiB3cm90ZToKPiBIaQo+IAo+IEkgaGF2ZSBwcm9i
bGVtIHdpdGggdmlydC12aWV3dmVyICYgZGVkaWNhdGVkIG1vdXNlICYga2V5Ym9hcmQKPiAKPiBJ
IHVzZSBzcGljZSB3aXRoIFZpckdMIGluIFVidW50dSAyMC4wNCBzZXJ2ZXIgd2l0aCBhbHNvIFVi
dW50dSBndWVzdCAyMC4wNAo+IAo+IFdlIEhhdmUgVFdPIG1vbml0b3IgJiBhbHNvIFRXTyBtb3Vz
ZSAmIGtleWJvYXJkCj4gCj4gdGhlbiBpIHBhc3MgMm5kIG1vdXNlICYga2V5Ym9hcmQgdG8gZ3Vl
c3QgLCBhbmQgYWxzbyB1c2UgdmlydC12aWV3ZXIKPiAKPiBmb3IgdXNlIG9mIHR3byBkaWZmZXJl
bnQgdXNlciBpIG1vdmUgdmlydC12aWV3ZXIgdG8gMm5kIG1vbml0b3IgYnV0IAo+IHNlZW1zIHdo
ZW4gaG9zdCBtb3VzZSBvdXQgb2bCoCB2aXJ0LXZpZXdlciBzY3JlZW4gLCBndWVzdCBtb3VzZSB3
b3JrIEJVVCAKPiBjdXJzb3IgaGlkZSA6LSgKPiAKPiBob3cgZGlzYWJsZSBndWVzdCBtb3VzZSBh
bHdheXMgc2hvdyBpbiB0aGlzIG1vZGUgPwoKSGksCgpUaGUgVk0gaGFzIG9ubHkgYSBzaW5nbGUg
dmlydHVhbCBtb25pdG9yIHBsdXMgaXRzIG93bgptb3VzZStrZXlib2FyZCB1c2IgZGV2aWNlcywg
cmlnaHQgPwoKVHJ5IGFkZGluZyAiLGFnZW50LW1vdXNlPW9mZiIgdG8gIi1zcGljZSIgb3B0aW9u
IG9mIHlvdXIgcWVtdS1rdm0gCmNvbW1hbmQgbGluZS4KClVyaS4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApT
cGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbAo=
