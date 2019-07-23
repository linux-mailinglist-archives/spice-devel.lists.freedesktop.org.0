Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4B971A14
	for <lists+spice-devel@lfdr.de>; Tue, 23 Jul 2019 16:16:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECDD86E2CA;
	Tue, 23 Jul 2019 14:16:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DC896E2CA
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 14:16:45 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1hpvbG-0002gY-7P; Tue, 23 Jul 2019 09:17:06 -0500
To: Frediano Ziglio <fziglio@redhat.com>
References: <20190718211405.8753-1-jwhite@codeweavers.com>
 <20190718211405.8753-2-jwhite@codeweavers.com>
 <1888567387.2024318.1563790580035.JavaMail.zimbra@redhat.com>
From: Jeremy White <jwhite@codeweavers.com>
Message-ID: <84da7b7b-2fb1-a9f6-91c3-572d6417dca6@codeweavers.com>
Date: Tue, 23 Jul 2019 09:16:44 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1888567387.2024318.1563790580035.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JGWl3kJWm8yyfth4JSrdiZN0qPRYo9iEytSWKd9EdF8=; b=RBSrOU1IKoasSRk/JTQMr0tWyR
 AwCDE5dwh/wTBCQIEIp9gZ9awpbG09JUU0ZO2bddGyglfKKQjUUv46AtOkthpF8RUnBHXln4O5n1G
 JChPqX/0xomJDH83rqFGePCkevKinnaYVZZe1YrTbf/BI4/Cy0vIF34ML1ECsMB1Tz+8=;
Subject: Re: [Spice-devel] [PATCH v2 x11spice 1/4] Convert to the use of
 glib memory routines in options.c.
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gNy8yMi8xOSA1OjE2IEFNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4+Cj4+IFNpZ25lZC1v
ZmYtYnk6IEplcmVteSBXaGl0ZSA8andoaXRlQGNvZGV3ZWF2ZXJzLmNvbT4KPiAKPiBJIGRpZG4n
dCBleHBlY3RlZCB5b3Ugd291bGQgY2hhbmdlIGV2ZXJ5dGhpbmcgOi0pCgo6LSkuCgpXZWxsLCBJ
IGFwcHJlY2lhdGUgdGhlIHJldmlldywgc28gd2hlbiB0aGUgc3VnZ2VzdGlvbnMgYXJlIGVhc3ks
IEkgdHJ5IAp0byBiZSByZXNwb25zaXZlLgoKPj4gICAKPj4gLSAgICBwID0gb3B0aW9ucy0+c3Bp
Y2VfcGFzc3dvcmQgPSBtYWxsb2Mob3B0aW9ucy0+Z2VuZXJhdGVfcGFzc3dvcmQgKyAxKTsKPj4g
KyAgICBwID0gb3B0aW9ucy0+c3BpY2VfcGFzc3dvcmQgPSBnX21hbGxvYyhvcHRpb25zLT5nZW5l
cmF0ZV9wYXNzd29yZCArIDEpOwo+PiAgICAgICBpZiAoIXApCj4gCj4gZ19tYWxsb2MgbmV2ZXIg
cmV0dXJucyBOVUxMLiBEbyB5b3Ugd2FudCB0byByZW1vdmUgdGhlIGNoZWNrIGFuZCBhY2NlcHQK
PiB0aGUgYWJvcnQoKSBvciB1c2UgZ190cnlfbWFsbG9jID8gSSBzdXBwb3NlIHRoZSBmaXJzdCBn
aXZpbmcgdGhlIGFib3ZlIGNvZGUKPiBhbmQgdGhlIGZhY3QgdGhhdCBtYW55IG9sZCBzdHJkdXAg
YXNzdW1lZCBzdHJkdXAgbmV2ZXIgcmV0dXJuZWQgTlVMTC4KClllYWgsIGFib3J0IGlzIHBlcmZl
Y3RseSBmaW5lLiAgSSByZXNlbnQgdGhpcyBwYXRjaC4KCkNoZWVycywKCkplcmVteQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWls
aW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
