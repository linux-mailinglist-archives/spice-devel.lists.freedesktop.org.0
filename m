Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 883911B9073
	for <lists+spice-devel@lfdr.de>; Sun, 26 Apr 2020 15:20:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2132089D43;
	Sun, 26 Apr 2020 13:20:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05EA789D43
 for <spice-devel@lists.freedesktop.org>; Sun, 26 Apr 2020 13:20:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587907245;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0NIZ5BtesDDSw4XZKoe3ieKJz/eVrrUP7WZDsRvYU90=;
 b=dJ3Aob1hk+2LDnayWcDX7SdYBTDtqrchYVK43kCe5/35eDu2Y++V0RIhQRm9jWasJv0LP1
 EXKR/mLwHYChSKR5tPx04oFAwfvlY/k94r4jZ1ZHLBnUB0KwAgZwY35iJnOhq6BDT3/dbv
 DU8f2JwRHLXmN6ulY9CvYNOAMo8HTX4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-184-PMfpe5KFPHOSz_BHb4tx8Q-1; Sun, 26 Apr 2020 09:20:43 -0400
X-MC-Unique: PMfpe5KFPHOSz_BHb4tx8Q-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 470651899520;
 Sun, 26 Apr 2020 13:20:42 +0000 (UTC)
Received: from lub.tlv (unknown [10.35.206.206])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 20B2360612;
 Sun, 26 Apr 2020 13:20:40 +0000 (UTC)
To: 1274678826 <aidaan52@foxmail.com>,
 spice-devel <spice-devel@lists.freedesktop.org>
References: <tencent_58CBCC3DD1F11AF8E16FBCB360E0505C940A@qq.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <0f8ce32f-bc39-5129-4666-3208a317d89d@redhat.com>
Date: Sun, 26 Apr 2020 16:20:38 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <tencent_58CBCC3DD1F11AF8E16FBCB360E0505C940A@qq.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] A question about USB-DK
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

T24gNC8xMy8yMCA3OjA5IEFNLCAxMjc0Njc4ODI2IHdyb3RlOgo+IGhlbGxvIYEwhDJJIG9wZW5l
ZCB0aGUgdmlydHVhbCBtYWNoaW5lgTCEMiB0aHJvdWdoIHRoZSBzcGljZSBjbGllbnQsIGFuZCBt
eSAKPiBwaG9uZSBpcyBjb25uZWN0ZWQgdG8gbXkgY29tcHV0ZXIgdmlhIGEgZGF0YSBjYWJsZSxJ
IHRyaWVkIHRvIHJlZGlyZWN0IAo+IG15IHBob25lIHRvIHRoZSB2bSB0aHJvdWdoIHVzYmRrLGJ1
dCBmYWlsZWQuSSB3b3VsZCBsaWtlIHRvIGtub3cgd2VhdGhlciAKPiB0aGUgdXNiZGsgc3VwcG9y
dCB0aGUgcGhvbmUgcmVkaXJjdCB0byB0aGUgdm0hCj4gTG9va2luZyBmb3J3YXJkIHRvIHlvdXIg
cmVwbHmjoVRoYW5rIHlvdSEKCkhpLAoKTGFzdCB0aW1lIEkgdHJpZWQgcGhvbmUgcmVkaXJlY3Qg
YXMgYSBVU0IgZGV2aWNlLCBsb25nIHRpbWUgYWdvLCAgaXQgZGlkIApub3Qgd29yay4KClVyaS4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRl
dmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbAo=
