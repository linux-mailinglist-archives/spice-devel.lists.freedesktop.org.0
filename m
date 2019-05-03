Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A6713165
	for <lists+spice-devel@lfdr.de>; Fri,  3 May 2019 17:44:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F1056E7F8;
	Fri,  3 May 2019 15:44:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4ABFD6E7F8
 for <spice-devel@lists.freedesktop.org>; Fri,  3 May 2019 15:44:31 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1hMaNF-0003oi-DL; Fri, 03 May 2019 10:45:21 -0500
To: Frediano Ziglio <fziglio@redhat.com>
References: <20190502221211.25575-1-jwhite@codeweavers.com>
 <20190502221211.25575-2-jwhite@codeweavers.com>
 <1683339192.16188660.1556872048544.JavaMail.zimbra@redhat.com>
From: Jeremy White <jwhite@codeweavers.com>
Message-ID: <a2b2f719-53ba-dc1b-74a4-202d37bb434c@codeweavers.com>
Date: Fri, 3 May 2019 10:44:30 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1683339192.16188660.1556872048544.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=laxMVtPd7JQjxZ5L2FkHu/xUIey2PA0q2YzMqnpYYA4=; b=QyCTqqn308JCJ5kF2LADEMhoAv
 YCYT/FjDF6Du6EEFLnFL/DoVOh1MDP/lONUUfGgyJQaKJ09oRS7OXZrNHsRjqcJaEwtnlsFzP7KFT
 pl7R1GQXJ4FsnWxQZBuXDzVrXYmDjzWQFaCS2l4pbQvd41gtI89M0iM3at5flMbj5MBo=;
Subject: Re: [Spice-devel] [PATCH v3 x11spice 2/5] Apply Spice style to the
 spice-video-dummy
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

T24gNS8zLzE5IDM6MjcgQU0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPj4KPj4gRG8gdGhpcyB1
c2luZyB0aGUgc3BpY2VfaW5kZW50IHNjcmlwdCB3aGljaCB1c2VzIGluZGVudCB0byBhcHBseQo+
PiBjdXJyZW50IFNwaWNlIHN0eWxlcyAoYXMgcGVyIEZyZWRpYW5vIFppZ2xpbyBvbiAyMDE5LTA1
LTAxLgo+IAo+IERvIHlvdSBtaXNzIGEgY2xvc2UgcGFyZW50aGVzaXM/IE5vdCBhIGJpZyBpc3N1
ZQoKWWVwLCBjYXVnaHQgaXQgaW4gdGhlIHB1c2gsIHRoYW5rcy4KCj4gCj4+Cj4+IFNpZ25lZC1v
ZmYtYnk6IEplcmVteSBXaGl0ZSA8andoaXRlQGNvZGV3ZWF2ZXJzLmNvbT4KPj4gLS0tCj4+IHYy
OiBPcmlnaW5hbCB2ZXJzaW9uCj4+IHYzOiBSZXZpc2VkIHRvIGhhdmUgY2FzZSBpbmRlbnQgYXQg
MCwgY3VkZGxlIGVsc2UsIGZpeCBmdW5jdGlvbnMKPj4gICAgICByZXR1cm5pbmcgQm9vbCwgYW5k
IHByZXNlcnZlIFhvcmcgZnVuY3Rpb24gZGVjbGFyYXRpb24gc3R5bGUKPiAKPiBHb3QgYSBmb2xs
b3cgdXAgYXQgaHR0cHM6Ly9jZ2l0LmZyZWVkZXNrdG9wLm9yZy9+ZnppZ2xpby94MTFzcGljZS9s
b2cvP2g9ancsCj4gc3BlY2lmaWNhbGx5IGh0dHBzOi8vY2dpdC5mcmVlZGVza3RvcC5vcmcvfmZ6
aWdsaW8veDExc3BpY2UvY29tbWl0Lz9oPWp3JmlkPWZlOGEzN2ZjYTU2ZGU3OTIwOTlhNmJmMWFk
MzE2ZDNhNGFhMjJhNWYuCgpBbHJpZ2h0LCB5b3UndmUgZGVtb25zdHJhdGVkIHlvdSBjYXJlIGEg
Z3JlYXQgZGVhbCBhYm91dCB0aGUgcGFydGljdWxhcnMgCm9mIHRoZSBzdHlsZSA8Z3Jpbj47IGZp
eHVwcyBhcHBsaWVkLCBhbmQgcHVzaGVkLiAgVGhhbmtzIQoKQ2hlZXJzLAoKSmVyZW15Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1h
aWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
