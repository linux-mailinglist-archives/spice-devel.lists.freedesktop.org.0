Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 913401FCB07
	for <lists+spice-devel@lfdr.de>; Wed, 17 Jun 2020 12:41:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F98E6E0A6;
	Wed, 17 Jun 2020 10:41:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 398 seconds by postgrey-1.36 at gabe;
 Wed, 17 Jun 2020 10:41:16 UTC
Received: from mail.nanotek.info (mail.nanotek.info [188.166.13.56])
 by gabe.freedesktop.org (Postfix) with ESMTP id 17AE36E0A6
 for <spice-devel@lists.freedesktop.org>; Wed, 17 Jun 2020 10:41:16 +0000 (UTC)
Received: from ousire.calculus.lan (unknown [185.107.80.152])
 by mail.nanotek.info (Postfix) with ESMTPSA id 2C6E65FF23;
 Wed, 17 Jun 2020 12:24:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nanotek.info;
 s=default; t=1592389472;
 bh=CSm6+oN6MUAmYdn1s66R9sSQhOHlfNXJgtW+nHgCkj0=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=Uxq9/g1GXaR0Z9dsww6xgniKTONBnocwulw93V4qD+XEyuZJPJHTbkcgxL3bB0+XN
 KhFoBmzf4FWUecuq+ByfuRiRuX5DOmgTDY092XCtZMhEUpg5MhO1wCD8yceyuwR1mz
 +jkSlTcn2RCJxvuY5CzTu7UVj5rnYEcR8rGM52B0=
To: Frediano Ziglio <fziglio@redhat.com>, David Arledge <wdarledge@yahoo.com>
References: <1107345351.1422205.1592328530239.ref@mail.yahoo.com>
 <1107345351.1422205.1592328530239@mail.yahoo.com>
 <410177428.1340580.1592328689772@mail.yahoo.com>
 <1740361965.30895039.1592385414642.JavaMail.zimbra@redhat.com>
From: shiftag <shiftag@nanotek.info>
Message-ID: <a349b5a0-87cf-5e77-9958-60011f5cbec6@nanotek.info>
Date: Wed, 17 Jun 2020 14:34:35 +0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <1740361965.30895039.1592385414642.JavaMail.zimbra@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] HELP for install of spice-gtk on Slackware
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Ck9uIDYvMTcvMjAgMToxNiBQTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+PiAuLyMgaW5zdGFs
bHBrZyBzcGljZS1ndGsuU2xhY2tCdWlsZAo+CldoYXQgaXMgdGhhdCA/CgpBIC5TbGFja0J1aWxk
IGlzIGEgc2NyaXB0IGZpbGUgYW5kIGluc3RhbGxwa2cgY29tbWFuZCBpcyB1c2UgdG8gaW5zdGFs
bAphIHBhY2thZ2UgKC50eHovLnRneiBmaWxlIHRvZGF5KS4gU28geWVzLCB5b3UgYXJlIGRvaW5n
IHNvbWV0aGluZyB3cm9uZwpoZXJlLiBZb3Ugc2hvdWxkIGRvOgoKwqDCoMKgICMgc2ggc3BpY2Ut
Z3RrLlNsYWNrQnVpbGQKCmFuZCBpZiBldmVyeXRoaW5nIGlzIG9rCgrCoMKgwqAgIyBpbnN0YWxs
cGtnCi9zb21lL3BhdGgvdXN1YWxseS9pbi90bXAvc3BpY2UtZ3RrLXZlcnNpb24tYXJjaC1zb21l
c3R1ZmYudGd6CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNl
LWRldmVsCg==
