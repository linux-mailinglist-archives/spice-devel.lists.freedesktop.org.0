Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C9CD2B2C
	for <lists+spice-devel@lfdr.de>; Thu, 10 Oct 2019 15:22:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC0D16EB35;
	Thu, 10 Oct 2019 13:22:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5E7F6EB35
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 13:22:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 489CA89AC4;
 Thu, 10 Oct 2019 13:22:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3F40210018FF;
 Thu, 10 Oct 2019 13:22:53 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 27C8A4EE50;
 Thu, 10 Oct 2019 13:22:53 +0000 (UTC)
Date: Thu, 10 Oct 2019 09:22:52 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: business@ehoefel.com
Message-ID: <1890026837.6264931.1570713772940.JavaMail.zimbra@redhat.com>
In-Reply-To: <efb5b7d3-99a5-a054-6a8d-250e90eae542@ehoefel.com>
References: <efb5b7d3-99a5-a054-6a8d-250e90eae542@ehoefel.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.18, 10.4.195.15]
Thread-Topic: Question about bidirectional audio
Thread-Index: wBvcPLWYl4RIMz98Gg8VQjV7MAZSUg==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Thu, 10 Oct 2019 13:22:53 +0000 (UTC)
Subject: Re: [Spice-devel] Question about bidirectional audio
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBIZWxsbywKPiAKPiBJJ20gYSBkZXZlbG9wZXIgZG9pbmcgYSBmcmVlbGFuY2Ugam9iIGZv
ciBhIGNvbXBhbnkuIFRoZXkgd2FudCB0bwo+IGNvbm5lY3QgQXN0ZXJpc2sgY2FsbCBjZW50ZXIg
dG8gYSB2bSBydW5uaW5nIFNwaWNlLiBJIHNlZSB0aGF0IGl0J3MKPiBwb3NzaWJsZSB0byBkbyBC
aWRpcmVjdGlvbmFsIEF1ZGlvLCBhY2NvcmRpbmcgdG8geW91ciB1c2VyIG1hbnVhbC4KPiBJIHdh
bnQgdG8gc3RyZWFtIGF1ZGlvIGZyb20gYSBjbGllbnQgdG8gdGhlIHNlcnZlciwgYW5kIGhhdmUg
dGhhdCBhdWRpbwo+IHBsYXllZCB0aHJvdWdoIHRoZSBvdXRwdXQgZGV2aWNlIG9mIHRoZSBzZXJ2
ZXIuIEkgbmVlZCB0byBtYWtlIHRoaXMgY29kZQo+IGluIEMuCj4gCgpOb3QgY2xlYXIgaGVyZSB3
aGF0IHRoZSBjbGllbnQgYW5kIHNlcnZlciBhcmUuIFNwZWFraW5nIGFib3V0IFNQSUNFCnRoZSBz
ZXJ2ZXIgaXMgdGhlIHBhcnQgYXR0YWNoZWQgdG8gdGhlIFZNIHdoaWxlIHRoZSBjbGllbnQgaXMg
dXN1YWxseQphIEdVSSBjbGllbnQgKGxpa2UgcmVtb3RlLXZpZXdlcikuCgo+IExvb2tpbmcgYXQg
eW91ciBwcm90b2NvbCBJIHNhdyB0aGF0IGZvciBhdWRpbyBtZXNzYWdlcyB0aGUgc2VydmVyIGFs
d2F5cwo+IG5lZWRzIHRvIHN0YXJ0IHRoZSBjb21tdW5pY2F0aW9uLCBlaXRoZXIgd2l0aCBSRURf
UExBWUJBQ0tfU1RBUlQgb3IKPiBSRURfUkVDT1JEX1NUQVJULgo+IAoKVGhleSBhcmUgMiBzZXBh
cmF0ZSBjaGFubmVscyB3aGljaCBoYXZlIG9uZSByZXNwZWN0aXZlIFRDUCBjb25uZWN0aW9uCihj
YW4gYmUgYSBVbml4IHNvY2tldCBjb25uZWN0aW9uIGJ1dCBpbiB0aGlzIGNhc2Ugd29uJ3QgYmUg
cmVtb3RlKS4KVGhlIHBsYXliYWNrIGNoYW5uZWwgaXMgbGlrZSwgZm9yIHRoZSBTUElDRSBjbGll
bnQsIGEgc3BlYWtlciBzbyB0aGUKVk0gd2lsbCBzZW5kIHRoZSBhdWRpbyB0byBiZSBwbGF5ZWQu
ClRoZSByZWNvcmQgY2hhbm5lbCBpcyBsaWtlLCBzdGlsbCBmb3IgdGhlIGNsaWVudCwgYSBtaWNy
b3Bob25lIHNvCnRoZSBjbGllbnQgd2lsbCBzZW5kIHRoZSBhdWRpbyB0byBiZSByZWNvcmRlciBi
eSB0aGUgVk0uClRoZSBTVEFSVCBtZXNzYWdlcyBhcmUgc2VuZCBmcm9tIHRoZSBWTSBlaXRoZXIg
c28gc2F5IHRoYXQgdGhlIGF1ZGlvCmNhcmQgaXMgcGxheWluZyBzb21ldGhpbmcgKHBsYXliYWNr
KSBvciB0cnlpbmcgdG8gcmVjb3JkIHNvbWV0aGluZwoocmVjb3JkKQoKPiBNeSBjbGllbnQgd2Fu
dHMgdG8gcmVjZWl2ZSB0aGUgY2FsbCBpbiB0aGUgY2FsbCBjZW50ZXIgYW5kIGhhdmUgaXQKPiBh
dXRvbWF0aWNhbGx5IHN0cmVhbWVkIHRvIHRoZSBzZXJ2ZXIuIEJ1dCBJIGNhbm5vdCBzdGFydCBt
ZXNzYWdpbmcKPiB1bmxlc3MgdGhlIHNlcnZlciByZXF1ZXN0cyB0aGUgY29ubmVjdGlvbi4KPiAK
CldoYXQgaXMgdGhlIHNlcnZlciBoZXJlPyBJdCBzZWVtcyBpdCdzIG5vdCBTUElDRSBzZXJ2ZXIu
IEl0J3Mgbm90CmNsZWFyIHdoYXQgeW91IGFyZSB0cnlpbmcgdG8gZG8uIFdoZXJlIGlzIGV4ZWN1
dGVkIEFzdGVyaXNrPwpBbmQgaG93IGlzIEFzdGVyaXNrIGludm9sdmVkIGhlcmU/IElzIGl0IG5v
dCBwb3NzaWJsZSB0byByZWNvcmQgb24KQXN0ZXJpc2sgKEkgc3VwcG9zZSB0aGUgY2FsbHMgYXJl
IGhhbmRsZWQgYnkgQXN0ZXJpc2spPwoKPiBIb3cgY2FuIEkgc29sdmUgdGhhdD8KPiAKPiBSZWdh
cmRzLAo+IEVkdWFyZG8gSG9lZmVsCj4gCgpGcmVkaWFubwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2Ut
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
