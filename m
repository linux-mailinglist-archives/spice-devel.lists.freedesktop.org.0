Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3BAB312756
	for <lists+spice-devel@lfdr.de>; Sun,  7 Feb 2021 20:58:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48C266E811;
	Sun,  7 Feb 2021 19:58:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55F666E811
 for <spice-devel@lists.freedesktop.org>; Sun,  7 Feb 2021 19:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1612727921;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BKppUbQ+VKYYdfalxeYFQfcQfGlnw+wcyOVcMuMX11I=;
 b=OzDzcbEsGQhk/DHB/eMVRsKkPFaMus7wBgBEPIZu9D3oY4+W3/gut0o+ax1pF4LNzixXoz
 Vm2+2mCrNCWgzSG3FRHiX5e+sMGJ0e459Dm1e6cmBnw+aAEG3vw/qgdwrM/nSGRqoSxzYC
 gyRISdM6PTcLw672Uof6Tq9c7jpc3Tw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-161-d6-78mOLMmaCU94PfzMsaQ-1; Sun, 07 Feb 2021 14:58:38 -0500
X-MC-Unique: d6-78mOLMmaCU94PfzMsaQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9DA27107ACC7;
 Sun,  7 Feb 2021 19:58:37 +0000 (UTC)
Received: from [10.35.206.211] (unknown [10.35.206.211])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C969460C05;
 Sun,  7 Feb 2021 19:58:36 +0000 (UTC)
To: =?UTF-8?B?5oiR5piv5Z2P55ee5a2Q?= <759302636@qq.com>,
 spice-devel <spice-devel@lists.freedesktop.org>
References: <tencent_2B8A9D04EE7251B09E6B51B589B329D30507@qq.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <44a4fff7-7805-bea6-d46d-2a63d91865a1@redhat.com>
Date: Sun, 7 Feb 2021 21:58:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <tencent_2B8A9D04EE7251B09E6B51B589B329D30507@qq.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=uril@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Spice-devel] Problems encountered during development
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
Content-Type: text/plain; charset="gb18030"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gMi80LzIxIDQ6NDUgQU0sIM7Syse7tcam19Mgd3JvdGU6Cj4gRGVhciBmcmllbmQ6Cj4gSSdt
IGhhdmluZyBzb21lIHByb2JsZW1zIGNvbXBpbGluZyBTcGljZSAtIFNlcnZlciwgdGhpcyB2ZXJz
aW9uIGlzIAo+IDAuMTQuOTEsIHNwaWNlLXByb3RvY29sIHZlcnNpb24gaXMgMC4xNC4zLCBjb21w
aWxpbmcgYWx3YXlzIGZhaWxzLiBJIAo+IGNhbid0IHRoaW5rIG9mIGEgc29sdXRpb24uIEkgaG9w
ZSB5b3UgY2FuIGhlbHAgbWUsIHRoYW5rIHlvdSEKCldoYXQgT1MgYXJlIHlvdSBydW5uaW5nIG9u
ID8KSXQgc2VlbXMgeW91ciBDKysgY29tcGlsZXIgdmVyc2lvbiBpcyAgNS40LjAsIGNhbiB5b3Ug
dXNlIGEgbmV3ZXIgb25lID8KCkFsc28gdGhlIGNvbXBpbGVyIHVzZWQgaXMgbG9jYXRlZCB1bmRl
ciAvdXNyL2xvY2FsLiBJdCBtYXkgaGVscCBpZgp5b3UgdXNlIHRoZSBzeXN0ZW0gQysrIGNvbXBp
bGVyID8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNw
aWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZl
bAo=
