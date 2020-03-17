Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 322501886FA
	for <lists+spice-devel@lfdr.de>; Tue, 17 Mar 2020 15:11:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 332EE6E145;
	Tue, 17 Mar 2020 14:11:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com
 [IPv6:2a00:1450:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17BB389DA2
 for <spice-devel@lists.freedesktop.org>; Tue, 17 Mar 2020 09:18:39 +0000 (UTC)
Received: by mail-lj1-x244.google.com with SMTP id o10so21907464ljc.8
 for <spice-devel@lists.freedesktop.org>; Tue, 17 Mar 2020 02:18:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=EXTECaoRIAH/N+0cnidFBTckkNu/Y2stcECyKBiKMSM=;
 b=UhKugyo3yoN72voK54QuLJMl4GpEybWwDmr5RUKgYhDnUEY3C/BamPXbZHjSZt+xJP
 wiNB5uxvOMT1Pq8TwnUh4jjpYuLrzTvW52Ib2j7VyaU9JrVJpE60gM6Zj0N4jYSxIdvD
 XnQsynrO/r0qlUYNFBMy8y4x5KSbUOc5WhStk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=EXTECaoRIAH/N+0cnidFBTckkNu/Y2stcECyKBiKMSM=;
 b=Yq2r3jWZ+HutBXlgOOqk33XEsN/kjA5aMGdKKFaluNeqjL8yyigB/KIqzuaywKHNbf
 KRRfMEAOouMgAc5OA0ATTSWHHf0tVVydOU/iuqVQkGvY01Dreizh++kZerSb/QPoQ27s
 zVRo2dsPZoEnl8rKnDAYvnfrPoJ3XM4f3whuJbJH7+lAzOwPQiCOLaUNYkAYU1GKKoXN
 qpr/jegzb4Dj7oHcckNagvMmeyHnMbhGtqazRKe1AAC+DTHIAsPzw/AOAzM5ktm5CZG1
 4eniPdBDaY+B5WFQ2hUm0vib/1YmqFOPpDKUjlV1CMF5O8yvg4Q9FL1FyImpdVUUlIr1
 TW9A==
X-Gm-Message-State: ANhLgQ3TFuCzXggE4CaSvFrPcNv4sW9ZhrZdkqG5OTnqfDQXXgYZFfqC
 FEqh1yMg6rsgzZaT1xqXoJklHKKZabHenHwmjCK2WQ==
X-Google-Smtp-Source: ADFU+vvCGkBqd8UYmCkxH7QhX19fR7M4LzHZzhe0fWYk25rvmbHcfqtGsff4qjoOyG08qyL1bPshtFsiowz+j5+pErc=
X-Received: by 2002:a2e:8798:: with SMTP id n24mr2250808lji.114.1584436717382; 
 Tue, 17 Mar 2020 02:18:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200218202753.652093-1-dmitry.sepp@opensynergy.com>
 <CAD90VcZ5rYHw9qqS7pvaX0TP240qcmoA5MKxKuVVn-eVVrORSA@mail.gmail.com>
 <CAD90VcbON1XTuBpuqxV6E+reY8dYq08N8G-jrAO=z-6ytcvtHQ@mail.gmail.com>
 <1780647.tdWV9SEqCh@os-lin-dmo>
In-Reply-To: <1780647.tdWV9SEqCh@os-lin-dmo>
From: Keiichi Watanabe <keiichiw@chromium.org>
Date: Tue, 17 Mar 2020 18:18:26 +0900
Message-ID: <CAD90VcbG2QJvj7L-Ek64AHb4sg3tkYJKsrDn2fVO4FLiwMYOxQ@mail.gmail.com>
To: Dmitry Sepp <dmitry.sepp@opensynergy.com>
X-Mailman-Approved-At: Tue, 17 Mar 2020 14:11:42 +0000
Subject: Re: [Spice-devel] [PATCH v2 1/1] video_video: Add the Virtio Video
 V4L2 driver
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
Cc: Samiullah Khawaja <samiullah.khawaja@opensynergy.com>,
 virtio-dev@lists.oasis-open.org, Alex Lau <alexlau@chromium.org>,
 Kiran Pawar <kiran.pawar@opensynergy.com>,
 Alexandre Courbot <acourbot@chromium.org>,
 Nikolay Martyanov <Nikolay.Martyanov@opensynergy.com>,
 David Staessens <dstaessens@chromium.org>, Tomasz Figa <tfiga@chromium.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, David Stevens <stevensd@chromium.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Daniel Vetter <daniel@ffwll.ch>,
 spice-devel@lists.freedesktop.org,
 =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>,
 Dylan Reid <dgreid@chromium.org>, Enrico Granata <egranata@google.com>,
 Pawel Osciak <posciak@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gVHVlLCBNYXIgMTcsIDIwMjAgYXQgNjoxMCBQTSBEbWl0cnkgU2VwcCA8ZG1pdHJ5LnNlcHBA
b3BlbnN5bmVyZ3kuY29tPiB3cm90ZToKPgo+IEhpIEtlaWljaGksCj4KPiBPbiBEaWVuc3RhZywg
MTcuIE3DpHJ6IDIwMjAgMDc6NTM6MjYgQ0VUIEtlaWljaGkgV2F0YW5hYmUgd3JvdGU6Cj4gPiA+
ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9saW51eC92aXJ0aW9fdmlkZW8uaAo+ID4gPiA+
IGIvaW5jbHVkZS91YXBpL2xpbnV4L3ZpcnRpb192aWRlby5oIG5ldyBmaWxlIG1vZGUgMTAwNjQ0
Cj4gPiA+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi4wZGQ5OGEyMjM3YzYKPiA+ID4gPiAtLS0gL2Rl
di9udWxsCj4gPiA+ID4gKysrIGIvaW5jbHVkZS91YXBpL2xpbnV4L3ZpcnRpb192aWRlby5oCj4g
PiA+ID4gQEAgLTAsMCArMSw0NjkgQEAKPiA+ID4gPiArLyogU1BEWC1MaWNlbnNlLUlkZW50aWZp
ZXI6IEdQTC0yLjArICovCj4gPiA+Cj4gPiA+IEkgc3VzcGVjdCBpdCdzIG5vdCBleHBlY3RlZCB0
byB1c2UgR1BMIGxpY2VuY2Ugd2l0aG91dCBleGNlcHRpb25zIGluIGEKPiA+ID4gVUFQSSBoZWFk
ZXIgZmlsZToKPiA+ID4gaHR0cHM6Ly93d3cua2VybmVsLm9yZy9kb2MvaHRtbC92NS40L3Byb2Nl
c3MvbGljZW5zZS1ydWxlcy5odG1sCj4gPiA+Cj4gPiA+IElmIEdQTCBpcyB1c2VkIGhlcmUsIG9u
bHkgR1BMIHVzZXIgcHJvZ3JhbXMgY2FuIGluY2x1ZGUgdGhpcyBoZWFkZXIKPiA+ID4gZmlsZSwg
Y2FuJ3QgdGhleT8KPiA+ID4gU28sIGNhbiB3ZSB1c2UgQlNEIGxpY2VuY2UgbGlrZSBvdGhlciB2
aXJ0aW8gaGVhZGVycyAoZS5nLiB2aXJ0aW9fZ3B1LmgpPwo+ID4gPgo+ID4gPiBOb3RlIHRoYXQg
SSBmb3VuZCB0aGlzIHByb2dyYW0gd2hlbiBydW5uaW5nCj4gPiA+IC9zY3JpcHRzL2hlYWRlcnNf
aW5zdGFsbC5zaC4gVGhvdWdoIGl0IHN1Z2dlc3RlZCB0byBhZGQgIldJVEgKPiA+ID4gTGludXgt
c3lzY2FsbC1ub3RlIiwgaXQgc2hvdWxkbid0IGJlIHRoZSBjYXNlIGJlY2F1c2UgdGhpcyBoZWFk
ZXIKPiA+ID4gZG9lc24ndCBwcm92aWRlIHN5c2NhbGwgaW50ZXJmYWNlLgo+ID4gPgo+ID4gPiBC
ZXN0IHJlZ2FyZHMsCj4gPiA+IEtlaWljaGkKPiA+ID4KPiA+ID4gPiArLyoKPiA+ID4gPiArICog
VmlydGlvIFZpZGVvIERldmljZQo+ID4gPiA+ICsgKgo+ID4gPiA+ICsgKiBUaGlzIGhlYWRlciBp
cyBCU0QgbGljZW5zZWQgc28gYW55b25lIGNhbiB1c2UgdGhlIGRlZmluaXRpb25zCj4gPiA+ID4g
KyAqIHRvIGltcGxlbWVudCBjb21wYXRpYmxlIGRyaXZlcnMvc2VydmVyczoKPiA+ID4gPiArICoK
PiA+Cj4gPiBBaCwgdGhpcyBsaW5lIHNheXMgdGhpcyBoZWFkZXIgaXMgQlNEIGxpY2Vuc2VkLgo+
ID4gU28sIHRoZSBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciBhYm92ZSBzaG91bGQgYmUgc2ltcGx5
IHdyb25nLgo+ID4KPgo+IEFjY29yZGluZyB0byBzb21lIHJlY2VudCB1cHN0cmVhbSBkaXNjdXNz
aW9uIGFib3V0IHZpcnRpby1zbmQsIHdoaWNoIHdhcyBhbHNvCj4gcHJvcG9zZWQgYnkgb3VyIGVu
Z2luZWVycywgaXQgc2hvdWxkIGJlCj4gLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEJTRC0z
LUNsYXVzZSAqLwo+CgpTb3VuZHMgZ29vZC4gVGhhbmtzIGZvciBsZXR0aW5nIG1lIGtub3cuCgpC
ZXN0IHJlZ2FyZHMsCktlaWljaGkKCj4gQmVzdCByZWdhcmRzLAo+IERtaXRyeS4KPgo+ID4gQmVz
dCByZWdhcmRzLAo+ID4gS2VpaWNoaQo+Cj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL3NwaWNlLWRldmVsCg==
