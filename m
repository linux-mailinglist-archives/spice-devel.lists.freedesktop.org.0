Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0FF27E73
	for <lists+spice-devel@lfdr.de>; Thu, 23 May 2019 15:44:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2012F89811;
	Thu, 23 May 2019 13:44:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 814BC89811
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 13:44:00 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id r7so6325134wrr.13
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 06:44:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=h9OLAeWWocHFLr0q8ejYQ5Yaiqh9Qv3y6wnkJ3MaNS4=;
 b=MgsldkSEMgdwO2TOdl20Iv0C0PG775UUY/nHs1HkRI4sjy6BE/cJw9/C9+OzDUetkO
 WXYG8q+2f3FQvOIWpvI69ebtk3tXGbvH1ucijtzryNSDbqqtq1nnw0xSzn+BTGfrWSSp
 DEC0PM52WT+Ksz8k0uxNmUBcyUOShase8LPLkjYa84yrEL9//pMq1vANO+B8PTIaNdTT
 TKkIiY7YBnupygB8qnWaTg1K8A1oM90L4YHtutV3Fxn1Es2M8qhOTohJ0DvZ5CCGean8
 E0OwWFfCh93MJkajqJVzQc3Bw5wFleKxhavwS96mdBmsmd6d7hXknlqTUSmBnnMycVF3
 ZKqA==
X-Gm-Message-State: APjAAAWZVQzjEmJbaT0lMnvJmyCVd8vouVpPVGfNm9aawnYHMxhvDOG9
 SNLS5WI8J15e/PsIWLppMU9GEx6Iok7W/JAUjHU=
X-Google-Smtp-Source: APXvYqxPbAFpn23GIqsshAgvE4QZGNE1xC3IoSwhEHfTv+NAbcS7zYWzyR+lZwK1PcFq4BLaNjb5arVVQLbb1fTZTUw=
X-Received: by 2002:adf:83c5:: with SMTP id 63mr29237195wre.33.1558619039222; 
 Thu, 23 May 2019 06:43:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190523083725.1554-1-jjanku@redhat.com>
 <20190523083725.1554-14-jjanku@redhat.com>
In-Reply-To: <20190523083725.1554-14-jjanku@redhat.com>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Date: Thu, 23 May 2019 15:43:47 +0200
Message-ID: <CAJ+F1C+enyFUwBCkTgJ6OuYdbd2A=nQxTPBz2q=orXOYqU+rwA@mail.gmail.com>
To: =?UTF-8?B?SmFrdWIgSmFua8Wv?= <jjanku@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=h9OLAeWWocHFLr0q8ejYQ5Yaiqh9Qv3y6wnkJ3MaNS4=;
 b=DhJeC0wtv0ZyHRFPpKCuFPf/C1G22kDVNaoehoFum9XC7yAZVrlahzRMecSuzco8JC
 FSRz+YwGtquisj/uhWHGkVnP5mO7rHLcbjGBbjxePKk25K2G34VHzkyrv1YfFfrB+ptK
 RfEfGml99j0CzanN6LLfUGgoNqL3SVlpbw68kJHSoaGaavE66AwFWJa9P2BSnL6Bdmxa
 qEqMDMQKlDVI1DM0C+J0xjwiepK2qIjvLUlOUZBl5FY9ZwkdTpEphYLd8lDtT1b9pr1W
 fkH0ICdL8hP0dKGNgCpqd0n8ZQdPNpM3s5SKvtZoTfHRPiQ45RucOPK9uE+5iaxWLJVO
 Lnww==
Subject: Re: [Spice-devel] [PATCH phodav 13/13] rename NEWS to NEWS.md
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gVGh1LCBNYXkgMjMsIDIwMTkgYXQgMTA6MzggQU0gSmFrdWIgSmFua8WvIDxqamFua3VAcmVk
aGF0LmNvbT4gd3JvdGU6Cj4KPiBUaGUgZmlsZW5hbWUgbmVlZHMgdGhlIHByb3BlciBleHRlbnNp
b24gZm9yIEdpdExhYiB0byBoYW5kbGUKPiB0aGUgZmlsZSBhcyBhIE1hcmtkb3duIGZpbGUuCj4K
PiBTaWduZWQtb2ZmLWJ5OiBKYWt1YiBKYW5rxa8gPGpqYW5rdUByZWRoYXQuY29tPgoKc21hbGwg
bmFjaywKCkkgYW0gbm90IHN1cmUgaG93IEdOT01FIGZ0cHJlbGVhc2Ugd2lsbCBoYW5kbGUgdGhh
dCBjaGFuZ2UsIGF0IHRoZQptb21lbnQgdGhleSBkb2N1bWVudCBORVdTIGZpbGUgb25seToKCmh0
dHBzOi8vd2lraS5nbm9tZS5vcmcvTWFpbnRhaW5lcnNDb3JuZXIvUmVsZWFzaW5nCgo+IC0tLQo+
ICBORVdTID0+IE5FV1MubWQgfCAwCj4gIDEgZmlsZSBjaGFuZ2VkLCAwIGluc2VydGlvbnMoKyks
IDAgZGVsZXRpb25zKC0pCj4gIHJlbmFtZSBORVdTID0+IE5FV1MubWQgKDEwMCUpCj4KPiBkaWZm
IC0tZ2l0IGEvTkVXUyBiL05FV1MubWQKPiBzaW1pbGFyaXR5IGluZGV4IDEwMCUKPiByZW5hbWUg
ZnJvbSBORVdTCj4gcmVuYW1lIHRvIE5FV1MubWQKPiAtLQo+IDIuMjEuMAo+Cj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBTcGljZS1kZXZlbCBtYWls
aW5nIGxpc3QKPiBTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCgoKCi0tIApN
YXJjLUFuZHLDqSBMdXJlYXUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L3NwaWNlLWRldmVs
