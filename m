Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BBE306063
	for <lists+spice-devel@lfdr.de>; Wed, 27 Jan 2021 17:00:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E75AE6E84A;
	Wed, 27 Jan 2021 16:00:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE1F76E84A
 for <spice-devel@lists.freedesktop.org>; Wed, 27 Jan 2021 16:00:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1611763226;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Q9H9v9jwkTxA50DLuSy1D3xkbku2uQb1o91B7Y4qv8w=;
 b=CDyKjTTO7WXNLwyTeldP/EpyZSKvdYx934jgPnzNxvZhimjbDcS5ChWp+m1LvqgV6JLfG1
 JKOePbTLy20QUdye9YD3ymaNXss/Yuqk3E6cDNLuCBB0n/AHE1e5NIkiuVm1P8UbDtBsgh
 pxU0khD9cFxZ2RtF52OYa4ZPTY2P7KU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-540-sWMS3M6gPdeHRPdaLzUpNw-1; Wed, 27 Jan 2021 11:00:22 -0500
X-MC-Unique: sWMS3M6gPdeHRPdaLzUpNw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E45E0107ACF8;
 Wed, 27 Jan 2021 16:00:21 +0000 (UTC)
Received: from [10.35.206.241] (unknown [10.35.206.241])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D20C51002382;
 Wed, 27 Jan 2021 16:00:20 +0000 (UTC)
To: alireza kahdoyee <alireza.kahdooee@hotmail.com>,
 "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
References: <AS8P190MB1255BCB82E202EF3C01C97DF8FBB0@AS8P190MB1255.EURP190.PROD.OUTLOOK.COM>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <a9cf4038-a066-4648-d6b9-c9b63e53df26@redhat.com>
Date: Wed, 27 Jan 2021 18:00:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <AS8P190MB1255BCB82E202EF3C01C97DF8FBB0@AS8P190MB1255.EURP190.PROD.OUTLOOK.COM>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=uril@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Spice-devel] Compression parameters in images
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

T24gMS8yNy8yMSA4OjM5IEFNLCBhbGlyZXphIGthaGRveWVlIHdyb3RlOgo+IEhpIGRlYXIgZnJp
ZW5kCj4gCj4gSSBhbSB3b3JraW5nIG9uIHRoZSBjb25uZWN0aW9uIGJldHdlZW4gdGhlIHNwaWNl
IGNsaWVudCBhbmQgdGhlIHNwaWNlIHNlcnZlciBhbmQgSQo+IGRvIG5vdCBoYXZlIGluZm9ybWF0
aW9uIGFib3V0IHRoZSBwYXJhbWV0ZXJzIGJlbG93IHRoZSB0byBrbm93IHRoZSBleGFjdCBzZXR0
aW5ncy4gPgo+IAo+IGltYWdlLWNvbXByZXNzaW9uCj4gCj4ganBlZy13YW4tY29tcHJlc3Npb24K
PiAKPiB6bGliLWdsei13YW4tY29tcHJlc3Npb24KPiAKPiBJIHNlYXJjaGVkIHRoZSBpbnRlcm5l
dCBhIGxvdCwgYnV0IEkgZGlkIG5vdCBmaW5kIHRoZSBleGFjdCBpbmZvcm1hdGlvbi4gSWYgcG9z
c2libGUsIHNlbmQKPiBtZSBhIGdvb2QgZG9jdW1lbnQgYWJvdXQgdGhpcyBvciBoZWxwIG1lLgo+
IAo+IFRoYW5rIHlvdfCfmYIKCkhpLAoKWW91IGNhbiBmaW5kIG1vcmUgaW5mb3JtYXRpb24gYXQg
dGhlICJJbWFnZSBDb21wcmVzc2lvbiIgc2VjdGlvbiBvZiB0aGUKc3BpY2UtdXNlci1tYW51YWwu
Cmh0dHBzOi8vd3d3LnNwaWNlLXNwYWNlLm9yZy9zcGljZS11c2VyLW1hbnVhbC5odG1sCgpBbHNv
ICJtYW4gcWVtdS1rdm0iIHByb3ZpZGVzIHNvbWUgaW5mb3JtYXRpb246CgppbWFnZS1jb21wcmVz
c2lvbj1bYXV0b19nbHp8YXV0b19senxxdWljfGdsenxsenxvZmZdCiAgICAgQ29uZmlndXJlICBp
bWFnZSAgY29tcHJlc3Npb24gIChsb3NzbGVzcykuCiAgICAgRGVmYXVsdCBpcyBhdXRvX2dsei4K
CmpwZWctd2FuLWNvbXByZXNzaW9uPVthdXRvfG5ldmVyfGFsd2F5c107CnpsaWItZ2x6LXdhbi1j
b21wcmVzc2lvbj1bYXV0b3xuZXZlcnxhbHdheXNdCiAgICAgQ29uZmlndXJlIHdhbiBpbWFnZSBj
b21wcmVzc2lvbiAobG9zc3kgZm9yIHNsb3cgbGlua3MpLgogICAgIERlZmF1bHQgaXMgYXV0by4K
ClVyaS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNw
aWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZl
bAo=
