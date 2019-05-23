Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C4E27E54
	for <lists+spice-devel@lfdr.de>; Thu, 23 May 2019 15:41:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C0DD89DF9;
	Thu, 23 May 2019 13:41:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 254EE89DF9
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 13:41:03 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id d9so6364971wrx.0
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 06:41:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=o9QokexhwVczILyR3eNmkPJnqECnyiiDjogQkeRy6Fs=;
 b=NfG/x+OcOkyi6gsnlb9JER5CTaKnJzF7LIWA8RxUGlZu+T8KyujoHf8vQeJsY80Lyu
 V95W8jOU9G46l2eYYuDZmzytoRGW+vOogeiufXMRb7vqvr2mNyBCnqlImqwSSjjI8X/9
 z9tCQF1Cu0FIdmVq1uuqSJnxLwuzdgChUX1aYw31YYHMmPHQfZ+uirgh7lDS4LUScIKB
 JTPQJRwdkqDZQqmnlu8pvcF78T81hxv2WlbXufgfP6Wl4t9A+4x46yX6U00vn50Uhc8y
 Aq4b2YR5scjFFqQVzpWde+me/Z0sYjQMf6AzPGY7YkXsgZOfw/Gwx4EGOmPR1wrgqn5G
 TKiw==
X-Gm-Message-State: APjAAAXdTkfjqWaByLJXd668GBXpckQV3WXGoz1EtaRVCe062b5qyOaT
 fL9U/uxtJhUG+pCefBqxtAcnBlqpI1D1Nfilkd0=
X-Google-Smtp-Source: APXvYqwoTapBH9lXZzWJuIfW9FK+fz6w7qwcxQme2+FB5cNNSqs6YzV/p+H/YtLFgdHHrRIW06586pEdwP2UI968TWI=
X-Received: by 2002:adf:83c5:: with SMTP id 63mr29227046wre.33.1558618861791; 
 Thu, 23 May 2019 06:41:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190523083725.1554-1-jjanku@redhat.com>
 <20190523083725.1554-11-jjanku@redhat.com>
In-Reply-To: <20190523083725.1554-11-jjanku@redhat.com>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Date: Thu, 23 May 2019 15:40:50 +0200
Message-ID: <CAJ+F1C+zmd6LD2=Sa6iPYXjYun1zK=CQT0MA+AZDbJN0L7TYFg@mail.gmail.com>
To: =?UTF-8?B?SmFrdWIgSmFua8Wv?= <jjanku@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=o9QokexhwVczILyR3eNmkPJnqECnyiiDjogQkeRy6Fs=;
 b=VMmnBzviczAi6TqrGvQ4wWwlVrupJ9osE+DydZQ160wU0oN2M1SnLNnBavlRepQ906
 ++RhnZSxMC2Xm3oOpDsAkJUOHOPXpE0g0SssDcpJbwzbbKdZWuuocbuUPGAd5MGsubDq
 LFSVnZP38aH/SdQoRbqnVi+SFP4jnvFShTSY/RPTKe2nVA+J+7NUmVVWchUWGCP9ImOZ
 WESINdyc0Te8XW1qAmf9A4npgOejAHGlVm1aCnhmTE+U51RqJEZn6ODq5UFbJKCnkrY9
 8CebbORUfP5jp54y/KQtC8bLqEz5V54yPeGgnM2DoVRiiz0vXCQe3Z6hvI3vvOHgEZ2k
 KVXQ==
Subject: Re: [Spice-devel] [PATCH phodav 10/13] spice-win: don't assign
 drive_letter on error
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

T24gVGh1LCBNYXkgMjMsIDIwMTkgYXQgMTA6MzcgQU0gSmFrdWIgSmFua8WvIDxqamFua3VAcmVk
aGF0LmNvbT4gd3JvdGU6Cj4KPiBkcml2ZV9sZXR0ZXIgc2hvdWxkIGJlIGFzc2lnbmVkIG9ubHkg
d2hlbiB0aGUgbWFwcGluZyB3YXMgc3VjY2Vzc2Z1bC4KPgo+IFNpZ25lZC1vZmYtYnk6IEpha3Vi
IEphbmvFryA8amphbmt1QHJlZGhhdC5jb20+CgphY2sKCj4gIHNwaWNlL3NwaWNlLXdlYmRhdmQu
YyB8IDEyICsrKysrKysrKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAz
IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL3NwaWNlL3NwaWNlLXdlYmRhdmQuYyBiL3Nw
aWNlL3NwaWNlLXdlYmRhdmQuYwo+IGluZGV4IDI5MDU4ZTcuLmYyYzdmMDcgMTAwNjQ0Cj4gLS0t
IGEvc3BpY2Uvc3BpY2Utd2ViZGF2ZC5jCj4gKysrIGIvc3BpY2Uvc3BpY2Utd2ViZGF2ZC5jCj4g
QEAgLTkxMCwxNCArOTEwLDIwIEBAIG1hcF9kcml2ZV9jYihHVGFzayAqdGFzaywKPiAgICAgICAg
ICAgIGJyZWFrOwo+ICAgICAgICAgIH0KPgo+IC0gICAgICBpZiAobWFwX2RyaXZlIChkcml2ZV9s
ZXR0ZXIpICE9IEVSUk9SX0FMUkVBRFlfQVNTSUdORUQpCj4gKyAgICAgIHJldCA9IG1hcF9kcml2
ZSAoZHJpdmVfbGV0dGVyKTsKPiArICAgICAgaWYgKHJldCA9PSBFUlJPUl9BTFJFQURZX0FTU0lH
TkVEKQo+ICAgICAgICAgIHsKPiAtICAgICAgICAgIGJyZWFrOwo+ICsgICAgICAgICAgLyogdHJ5
IGFnYWluIHdpdGggYW5vdGhlciBsZXR0ZXIgKi8KPiArICAgICAgICAgIGNvbnRpbnVlOwo+ICsg
ICAgICAgIH0KPiArICAgICAgaWYgKHJldCAhPSBOT19FUlJPUikKPiArICAgICAgICB7Cj4gKyAg
ICAgICAgICBkcml2ZV9sZXR0ZXIgPSAwOwo+ICAgICAgICAgIH0KPiArICAgICAgYnJlYWs7Cj4g
ICAgICAgIC8vVE9ETzogQWZ0ZXIgbWFwcGluZywgcmVuYW1lIG5ldHdvcmsgZHJpdmUgZnJvbSBc
XGxvY2FsaG9zdEBQT1JUXERhdldXV1Jvb3QKPiAgICAgICAgLy8gICAgICB0byBzb21ldGhpbmcg
bGlrZSBTUElDRSBTaGFyZWQgRm9sZGVyCj4gICAgICB9Cj4gLQo+ICAgIGdfbXV0ZXhfbG9jaygm
bWFwX2RyaXZlX2RhdGEtPnNlcnZpY2VfZGF0YS0+bXV0ZXgpOwo+ICAgIG1hcF9kcml2ZV9kYXRh
LT5zZXJ2aWNlX2RhdGEtPmRyaXZlX2xldHRlciA9IGRyaXZlX2xldHRlcjsKPiAgICBnX211dGV4
X3VubG9jaygmbWFwX2RyaXZlX2RhdGEtPnNlcnZpY2VfZGF0YS0+bXV0ZXgpOwo+IC0tCj4gMi4y
MS4wCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IFNwaWNlLWRldmVsIG1haWxpbmcgbGlzdAo+IFNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3Bp
Y2UtZGV2ZWwKCgoKLS0gCk1hcmMtQW5kcsOpIEx1cmVhdQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2Ut
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
