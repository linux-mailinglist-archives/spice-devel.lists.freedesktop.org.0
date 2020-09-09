Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2242631BD
	for <lists+spice-devel@lfdr.de>; Wed,  9 Sep 2020 18:25:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A20C6EE84;
	Wed,  9 Sep 2020 16:25:25 +0000 (UTC)
X-Original-To: spice-devel@freedesktop.org
Delivered-To: spice-devel@freedesktop.org
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C20B96EE84
 for <spice-devel@freedesktop.org>; Wed,  9 Sep 2020 16:25:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EDE6E8F52A9
 for <spice-devel@freedesktop.org>; Wed,  9 Sep 2020 16:25:22 +0000 (UTC)
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com
 [209.85.221.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-440-vAtVXdFWPA28Bs3c6yV2MA-1; Wed, 09 Sep 2020 12:25:21 -0400
X-MC-Unique: vAtVXdFWPA28Bs3c6yV2MA-1
Received: by mail-vk1-f198.google.com with SMTP id l19so910044vka.20
 for <spice-devel@freedesktop.org>; Wed, 09 Sep 2020 09:25:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=J4Ae+WwEKp7Mz+lA/AfDUUVZ5TjjFceZMGY4KGCWXc8=;
 b=lDZAtCIRmv3RPpjaTaHs23b6SKAK9XUloXRypUHiWhjk/S0HDeMVdBn4OW1aQO3oSC
 Hv5aUOvCjnxUyvQylUSidnYeCkgxpZKGUqUOH2lJHjFkzivETs3divVshFaRgyprVBcW
 TY/hMMA85Z87msGLtCehZ98t/mpz0ioChcj7Q63rcxKfSINHzKyloZRdMHg89INdHsCh
 HHU5f+1AjL8NdKqPuSvkzollP26gcxIO8BjUZU12psFHjfO84hEOp1YuIzxWS7yc/W8S
 0ysHwdirpszXGX50GukeSFcvv6CA2SHCM1uY4QIRWV7xhu6/Jnr2ao5iuaI5qoDOQ9n5
 wZcA==
X-Gm-Message-State: AOAM5324gPR0W/vj6SqsJ3DLsd84s7d1aAOlByxcWtEKeD5MrJ5JFbny
 kXR3OwP8sx/DfWzOGO2xE/XsXkZRDJQ/aAJpM8bqzXD2lTpVBqnzYGbdDcOufiXhkMpZlHOz6FO
 jwQbnfbCmcyIgaZ+ftnf30UK4KwD4CojFPg7ASaM=
X-Received: by 2002:a67:d00a:: with SMTP id r10mr1370933vsi.12.1599668720619; 
 Wed, 09 Sep 2020 09:25:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyihhUiT9G1e9CloMttTVHffltW92ZnUk9hhZFbusIVneUoheDvNYzFu9lkJ/92Vt1aP/CRBoz41/noZOrq19o=
X-Received: by 2002:a67:d00a:: with SMTP id r10mr1370914vsi.12.1599668720285; 
 Wed, 09 Sep 2020 09:25:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200909135044.0B7FA76130@kemper.freedesktop.org>
 <CAJ+F1CJr=UC8H4CdpsTkv1yHPJh-yF85MDYkA-A4y6jtO5sf0Q@mail.gmail.com>
 <1746534140.655311.1599661009588.JavaMail.zimbra@redhat.com>
 <CAH=CeiBb4eUew8i0MjNnLdvi3Z8HG6bgXGQVedGcFtJtChpZUQ@mail.gmail.com>
 <28522181.657126.1599662196864.JavaMail.zimbra@redhat.com>
 <CAH=CeiB+89q6C6fSu-814jaN98_eCGe72qkwZTFp7V7OXnehLw@mail.gmail.com>
 <CAJ+F1CLVPu1UDBubZinJCMNuY8BX_vbdFOjE8pvWquA-id-27w@mail.gmail.com>
 <1145253150.663633.1599665268770.JavaMail.zimbra@redhat.com>
In-Reply-To: <1145253150.663633.1599665268770.JavaMail.zimbra@redhat.com>
From: Jakub Janku <jjanku@redhat.com>
Date: Wed, 9 Sep 2020 18:25:09 +0200
Message-ID: <CAH=CeiA3Ngy1p6Xk5cP_M==FSb_T2EVfj2zX8OwFnNE4vq9oBQ@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
X-Mimecast-Spam-Score: 0.0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] [Spice-commits] 6 commits - meson.build
 src/map-file src/spice-glib-sym-file src/spice-gtk-session.c
 src/spice-session.c src/spice-session.h src/spice-session-priv.h
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
Cc: spice-devel@freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gV2VkLCBTZXAgOSwgMjAyMCBhdCA1OjI3IFBNIEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0By
ZWRoYXQuY29tPiB3cm90ZToKPgo+ID4gSGkKPgo+ID4gT24gV2VkLCBTZXAgOSwgMjAyMCBhdCA2
OjQ1IFBNIEpha3ViIEphbmt1IDwgamphbmt1QHJlZGhhdC5jb20gPiB3cm90ZToKPgo+ID4gPiBP
biBXZWQsIFNlcCA5LCAyMDIwIGF0IDQ6MzYgUE0gRnJlZGlhbm8gWmlnbGlvIDwgZnppZ2xpb0By
ZWRoYXQuY29tID4KPiA+ID4gd3JvdGU6Cj4gPgo+ID4gPiA+Cj4gPgo+ID4gPiA+ID4gT24gV2Vk
LCBTZXAgOSwgMjAyMCBhdCA0OjE2IFBNIEZyZWRpYW5vIFppZ2xpbyA8IGZ6aWdsaW9AcmVkaGF0
LmNvbSA+Cj4gPiA+ID4gPiB3cm90ZToKPiA+Cj4gPiA+ID4gPiA+Cj4gPgo+ID4gPiA+ID4gPiA+
ID4gY29tbWl0IDRiOTA5MmI5NmI4ZGE5NDZmZjNkMTc5MjJiMGZjZjIyNWM1ZGM4MWYKPiA+Cj4g
PiA+ID4gPiA+ID4KPiA+Cj4gPiA+ID4gPiA+ID4gPiBBdXRob3I6IEpha3ViIEphbmvFryA8IGpq
YW5rdUByZWRoYXQuY29tID4KPiA+Cj4gPiA+ID4gPiA+ID4KPiA+Cj4gPiA+ID4gPiA+ID4gPiBE
YXRlOiBTYXQgTWF5IDIzIDE2OjI4OjUyIDIwMjAgKzAyMDAKPiA+Cj4gPiA+ID4gPiA+ID4KPiA+
Cj4gPiA+ID4gPiA+Cj4gPgo+ID4gPiA+ID4gPiA+ID4gc2Vzc2lvbjogbWFrZSBzcGljZV9zZXNz
aW9uX2dldF93ZWJkYXZfc2VydmVyKCkgcHVibGljCj4gPgo+ID4gPiA+ID4gPiA+Cj4gPgo+ID4g
PiA+ID4gPgo+ID4KPiA+ID4gPiA+ID4gPiA+IEl0IHdpbGwgYmUgbmVjZXNzYXJ5IHRvIGFjY2Vz
cyB0aGUgd2ViZGF2IHNlcnZlciBmcm9tCj4gPgo+ID4gPiA+ID4gPiA+ID4gc3BpY2UtZ3RrLXNl
c3Npb24uYwo+ID4KPiA+ID4gPiA+ID4gPgo+ID4KPiA+ID4gPiA+ID4gPiA+IHdoaWNoIGlzbid0
IGNvbXBpbGVkIHdpdGggc3BpY2Utc2Vzc2lvbi1wcml2LmgsIHNvIG1ha2UKPiA+Cj4gPiA+ID4g
PiA+ID4KPiA+Cj4gPiA+ID4gPiA+ID4gPiBzcGljZV9zZXNzaW9uX2dldF93ZWJkYXZfc2VydmVy
KCkgcHVibGljLgo+ID4KPiA+ID4gPiA+ID4gPgo+ID4KPiA+ID4gPiA+ID4KPiA+Cj4gPiA+ID4g
PiA+ID4gSSBoYXZlbid0IGxvb2tlZCBhdCB0aGUgd2hvbGUgc2VyaWVzLiBXb3VsZG4ndCBpdCBt
YWtlIHNlbnNlIHRvCj4gPiA+ID4gPiA+ID4gbWFrZQo+ID4gPiA+ID4gPiA+IGl0IGEKPiA+Cj4g
PiA+ID4gPiA+ID4gcmVhZC1vbmx5IHByb3BlcnR5IGluc3RlYWQ/Cj4gPgo+ID4gPiA+ID4gPgo+
ID4KPiA+ID4gPiA+ID4gSXQgc291bmRzIHJlYXNvbmFibGUgZm9yIG1lLgo+ID4KPiA+ID4gPiA+
ID4gSmFrdWIgPwo+ID4KPiA+ID4gPiA+ID4KPiA+Cj4gPiA+ID4gPgo+ID4KPiA+ID4gPiA+IEkg
YWdyZWUuCj4gPgo+ID4gPiA+ID4KPiA+Cj4gPiA+ID4gPiBSZXZlcnQgdGhlIGNvbW1pdHMgcGxl
YXNlLiBJJ2xsIHJlb3BlbiB0aGUgbWVyZ2UgcmVxdWVzdCBvbmNlIEkgaGF2ZSBpdAo+ID4KPiA+
ID4gPiA+IHJlYWR5Lgo+ID4KPiA+ID4gPiA+Cj4gPgo+ID4gPiA+ID4gQ2hlZXJzLAo+ID4KPiA+
ID4gPiA+IEpha3ViCj4gPgo+ID4gPiA+ID4KPiA+Cj4gPiA+ID4KPiA+Cj4gPiA+ID4gVG8gYmUg
aG9uZXN0IEkgZG9uJ3Qgc2VlIHRoZSBuZWVkIHRvIHJldmVydCBjb21taXRzLCBpdCdzIGp1c3Qg
YSBjaGFuZ2UKPiA+Cj4gPiA+ID4gZnJvbSBwdWJsaWMgdG8gcHJpdmF0ZS4KPiA+Cj4KPiA+ID4g
T2ssIHNvIHNob3VsZCBJIG9wZW4gYSBzZXBhcmF0ZSBNUj8KPiA+Cj4KPiA+ID4gVG8gbWFrZSBz
dXJlIHRoYXQgSSBkaWRuJ3QgbWlzdW5kZXJzdGFuZCBpdDogdGhlIHN1Z2dlc3Rpb24gaXMgdG8g
a2VlcAo+ID4KPiA+ID4gc3BpY2Vfc2Vzc2lvbl9nZXRfd2ViZGF2X3NlcnZlcigpIHByaXZhdGUg
YW5kIGluc3RhbGwgYSBuZXcKPiA+Cj4gPiA+IFNwaWNlU2Vzc2lvbiByZWFkLW9ubHkgcHJvcGVy
dHkgIndlYmRhdiIsIGNvcnJlY3Q/Cj4gPgo+Cj4gPiB5ZXMgKHRoZSBtYWluIG1vdGl2YXRpb24g
aXMgdG8gYXZvaWQgYWRkaW5nIG5ldyBsaWJyYXJ5IHN5bWJvbHMsIGFuZAo+ID4gcHJvcGVydGll
cyBjYW4gYmUgbG9va2VkIHVwIGF0IHJ1bnRpbWUsIHdoaWNoIG1heSBhdm9pZCBidW1waW5nIGRl
cGVuZGVuY2llcwo+ID4gaW4gc29tZSBjYXNlcykKPgo+IE9oLCBJIHRob3VnaCB0aGUgaWRlYSB3
YXMgbWFraW5nIHRoZSBuZXcgcHJvcGVydHkgcHJpdmF0ZSB0byBpbiB0aGUgZnV0dXJlIGl0IGNv
dWxkIGJlIHJlbW92ZWQgaWYgbm90IG5lZWRlZCBhbnltb3JlLgo+IFlvdSBjYW4gYWNoaWV2ZSB0
aGUgZHluYW1pYyByZXNvbHV0aW9uIHVzaW5nIGRsc3ltIGlmIG5lZWRlZCB1c2luZyBsaWJyYXJ5
IHN5bWJvbHMuCj4gSXQncyBub3QgdGhhdCBlYXN5IHRvIGxvb2sgdGhlIHByb3BlcnR5IGR5bmFt
aWNhbGx5LCB0byBhdm9pZCB3YXJuaW5ncyB5b3UgaGF2ZSB0byB1c2UgZ19vYmplY3RfY2xhc3Nf
ZmluZF9wcm9wZXJ0eSBmaXJzdC4KPiBGb3IgYSAiZ2V0IiBiZXR3ZWVuIHNwaWNlLWd0ayBhbmQg
c3BpY2UtZ2xpYiB0aGUgY3VycmVudCBzb2x1dGlvbiBpcyBlYXNpZXIgYW5kIGNvbnNpc3RlbnQs
IHRoZXJlIGFyZSBhbHJlYWR5IG11bHRpcGxlIHNwaWNlX3Nlc3Npb25fZ2V0XyogZnVuY3Rpb25z
LgoKTW9zdCBvZiB0aGUgZ2V0dGVycyBhcmUgaW4gc3BpY2Utc2Vzc2lvbi1wcml2LmggdGhvdWdo
LiBJbgpzcGljZS1zZXNzaW9uLmgsIHRoZXJlJ3Mgb25seSB0aHJlZSBvZiB0aGVtLgpTbyBwZXJo
YXBzIGl0IHdvdWxkIGJlIG1vcmUgY29uc2lzdGVudCB0byBhY2Nlc3MgdGhlIHBob2RhdiBzZXJ2
ZXIKdXNpbmcgcHJvcGVydGllcywgYXMgTWFyYy1BbmRyw6kgc3VnZ2VzdGVkLgoKQW55d2F5LCBo
ZXJlJ3MgdGhlIHBvc3NpYmxlIHBhdGNoCmh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9q
amFua3Uvc3BpY2UtZ3RrLy0vY29tbWl0LzA0OGExNTBmODA4OGQ5ZmQ2NDNiYTk5ODdjOGZiYTll
ODM0OTRkOTQKCkpha3ViCj4KPiBGcmVkaWFubwo+CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwK
