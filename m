Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC16610A30
	for <lists+spice-devel@lfdr.de>; Wed,  1 May 2019 17:37:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D615892DB;
	Wed,  1 May 2019 15:37:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1121892DB
 for <spice-devel@lists.freedesktop.org>; Wed,  1 May 2019 15:37:39 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1hLrJW-00009f-5h; Wed, 01 May 2019 10:38:30 -0500
To: Frediano Ziglio <fziglio@redhat.com>
References: <20190430220459.10348-1-jwhite@codeweavers.com>
 <1038772971.15784957.1556696266381.JavaMail.zimbra@redhat.com>
From: Jeremy White <jwhite@codeweavers.com>
Message-ID: <941142d4-ee1f-b338-8067-20ac1ef08089@codeweavers.com>
Date: Wed, 1 May 2019 10:37:38 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1038772971.15784957.1556696266381.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ovznizMy9kLe9irWHdcEphpHwI/zJHeDumWJ8AdqfQA=; b=ZSVnM9P/UBjtDTOJMJI8oKkYR9
 taXG7tRg2HOfvItkQ1x06LTqkAW/xudO0PPoqIaqsAtO+OS+m2jZhKElSWYQZoOtezpUtNM/OnY8l
 arHI/LwOnHK3iG70csd7EeIeuy9LWvdpVOjoxJT47ZTjYFdBaL3S308XocGL8yrsth5E=;
Subject: Re: [Spice-devel] [PATCH spice-gtk] Detect timeout conditions more
 aggressively on Linux
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

PiAKPiBDYW4gSSBzdWdnZXN0IHRoaXMgZm9sbG93IHVwPwo+IGh0dHBzOi8vZ2l0bGFiLmZyZWVk
ZXNrdG9wLm9yZy9memlnbGlvL3NwaWNlLWd0ay9jb21taXQvZTc2ZjA0NjI1YzA3NTc3NmYwY2Ew
ZTc4ZTVhNDJlNGFhMzk2ZmFhNwoKU3VyZSwgdGhhdCBhcHByb2FjaCB3b3JrcyBmaW5lLiAgSSdk
IHByb2JhYmx5IHJlY29tbWVuZCB0aGF0IHRoZSBXaW5kb3dzIAppbnRlcnZhbCBiZSBzZXQgdG8g
c29tZXRoaW5nIGxvd2VyIHRoYW4gMTUgc2Vjb25kcyAoZnJvbSBteSByZWFkaW5nLCBpdCAKbG9v
a3MgbGlrZSB0aGUgY291bnQgaXMgZml4ZWQgYXQgMTAsIHNvIHRoYXQgd291bGQgYmUgMTgwIHNl
Y29uZHMsIHdoaWNoIAppc24ndCBhIGh1Z2UgaW1wcm92ZW1lbnQpLgoKSSdtIG5vdCBzdXJlIHRo
ZSBiZXN0IHBhdGggZm9yd2FyZDsgaGFwcHkgdG8gYWNrIHlvdXIgcGF0Y2ggaWYgdGhhdCdzIAp0
aGUgZWFzaWVzdCB3YXkgZm9yd2FyZC4KCkNoZWVycywKCkplcmVteQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QK
U3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
