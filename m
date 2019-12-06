Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2273114F11
	for <lists+spice-devel@lfdr.de>; Fri,  6 Dec 2019 11:30:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ACE96F9BC;
	Fri,  6 Dec 2019 10:30:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 263DA6F9BC
 for <spice-devel@lists.freedesktop.org>; Fri,  6 Dec 2019 10:30:57 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-319-QyMn2N6bP0OaQPdZxR64hA-1; Fri, 06 Dec 2019 05:30:54 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7E37C190D340;
 Fri,  6 Dec 2019 10:30:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7487160BF4;
 Fri,  6 Dec 2019 10:30:53 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 683FA18089C8;
 Fri,  6 Dec 2019 10:30:53 +0000 (UTC)
Date: Fri, 6 Dec 2019 05:30:52 -0500 (EST)
From: Frediano Ziglio <fziglio@redhat.com>
To: alexander@daynix.com
Message-ID: <235344538.14474760.1575628252178.JavaMail.zimbra@redhat.com>
In-Reply-To: <20191205174915.24546-9-anezhins@redhat.com>
References: <20191205174915.24546-1-anezhins@redhat.com>
 <20191205174915.24546-9-anezhins@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.24, 10.4.195.6]
Thread-Topic: auto-connect shared CD devices added using command line
Thread-Index: dqbMXNsQjybUUtFo9Nnd3W3Iot1mWw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: QyMn2N6bP0OaQPdZxR64hA-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1575628255;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JYrVYD6/U7xTP8FR7XI/ATiLIklL3H2fLqMDLbt0VFU=;
 b=Dm8c2rr9PqbWGOYnAmnQ3FVqNE6n0/yeaAulfAHKkpExbMVGLlBsjqmN3oim7j+Ct+/Rpq
 S+K513Uzk1AXlfjYdeqCSCkghitm86mODWwb3OKjxUwpRyfzlGTtCccMX+O/+YA35rGIE/
 UjuDDjHSDqCEoPDBe8cFSgIZdUXq/o4=
Subject: Re: [Spice-devel] [PATCH 8/9] auto-connect shared CD devices added
 using command line
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
Cc: Yan Vugenfirer <yan@daynix.com>, spice-devel@lists.freedesktop.org,
 Alexander Nezhinsky <anezhins@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBGcm9tOiBBbGV4YW5kZXIgTmV6aGluc2t5IDxhbmV6aGluc0ByZWRoYXQuY29tPgo+IAo+
IFR1cm4gc2hhcmVkIENEIGRldmljZXMgYWRkZWQgdXNpbmcgY29tbWFuZCBsaW5lIGludG8gaG90
LXBsdWdnZWQgZGV2aWNlcwo+IHdoaWNoIGFyZSByZWRpcmVjdGVkIGFjY29yZGluZyB0byAnYXV0
by1jb25uZWN0JyBmaWx0ZXIgcnVsZXMuCj4gQnkgZGVmYXVsdCBjb21tYW5kIGxpbmUgZGV2aWNl
cyBhcmUgYWRkZWQgdXNpbmcgJ3JlZGlyZWN0LW9uLWNvbm5lY3QnIGZpbHRlciwKPiB3aGljaCBk
byBub3QgZml0IHRoZSBzaGFyZCBDRCBjb25uZWN0aW5nIHJlcXVpcmVtZW50cy4KPiAKCkNhbiB5
b3UgZGVzY3JpYmUgdGhlIHJlcXVpcmVtZW50cyBoZXJlPwoKVGhpcyBwYXRjaCBsb29rcyBsaWtl
IGFuIHdvcmthcm91bmQgdG8gbWUuCgo+IFNpZ25lZC1vZmYtYnk6IEFsZXhhbmRlciBOZXpoaW5z
a3kgPGFuZXpoaW5zQHJlZGhhdC5jb20+Cj4gLS0tCj4gIHNyYy91c2ItZGV2aWNlLW1hbmFnZXIu
YyB8IDI1ICsrKysrKysrKysrKysrKysrKy0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE4IGlu
c2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NyYy91c2ItZGV2
aWNlLW1hbmFnZXIuYyBiL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYwo+IGluZGV4IDA5NjFlZjku
LmE2OWEzNDYgMTAwNjQ0Cj4gLS0tIGEvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCj4gKysrIGIv
c3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCj4gQEAgLTg4OSwxMSArODg5LDkgQEAgc3RhdGljIHZv
aWQKPiBzcGljZV91c2JfZGV2aWNlX21hbmFnZXJfY2hlY2tfcmVkaXJfb25fY29ubmVjdCgKPiAg
ICAgIEdUYXNrICp0YXNrOwo+ICAgICAgU3BpY2VVc2JEZXZpY2UgKmRldmljZTsKPiAgICAgIFNw
aWNlVXNiQmFja2VuZERldmljZSAqYmRldjsKPiArICAgIGdib29sZWFuIGlzX2NkLCBzaGFsbF9y
ZWRpcmVjdDsKPiAgICAgIGd1aW50IGk7Cj4gIAo+IC0gICAgaWYgKHByaXYtPnJlZGlyZWN0X29u
X2Nvbm5lY3QgPT0gTlVMTCkKPiAtICAgICAgICByZXR1cm47Cj4gLQo+ICAgICAgZm9yIChpID0g
MDsgaSA8IHByaXYtPmRldmljZXMtPmxlbjsgaSsrKSB7Cj4gICAgICAgICAgZGV2aWNlID0gZ19w
dHJfYXJyYXlfaW5kZXgocHJpdi0+ZGV2aWNlcywgaSk7Cj4gIAo+IEBAIC05MDEsMTAgKzg5OSwy
MyBAQCBzdGF0aWMgdm9pZAo+IHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9jaGVja19yZWRpcl9v
bl9jb25uZWN0KAo+ICAgICAgICAgICAgICBjb250aW51ZTsKPiAgCj4gICAgICAgICAgYmRldiA9
IHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9kZXZpY2VfdG9fYmRldihzZWxmLCBkZXZpY2UpOwo+
IC0gICAgICAgIGlmIChzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfY2hlY2tfZmlsdGVyKAo+IC0g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgYmRldiwKPiAtICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHByaXYtPnJlZGlyZWN0X29uX2Nvbm5lY3RfcnVsZXMsCj4gLSAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBwcml2LT5yZWRpcmVjdF9vbl9jb25uZWN0X3J1bGVzX2NvdW50KSA9PSAw
KSB7Cj4gKyAgICAgICAgaXNfY2QgPSBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfZ2V0X2xpYmRl
dihiZGV2KSA9PSBOVUxMOwoKVGhpcyBpcyBjaGVja2luZyBpZiBlbXVsYXRlZCwgbm90IGlmIGlz
IGEgQ0QuCgo+ICsKPiArICAgICAgICBpZiAocHJpdi0+cmVkaXJlY3Rfb25fY29ubmVjdCkgewo+
ICsgICAgICAgICAgICBzaGFsbF9yZWRpcmVjdCA9ICFzcGljZV91c2JfYmFja2VuZF9kZXZpY2Vf
Y2hlY2tfZmlsdGVyKAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJkZXYsCj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcHJpdi0+cmVkaXJlY3Rfb25fY29ubmVj
dF9ydWxlcywKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwcml2LT5yZWRpcmVj
dF9vbl9jb25uZWN0X3J1bGVzX2NvdW50KTsKCldoeSBub3Qgc2V0dGluZyBzb21lICJydWxlcyIg
YW5kICJydWxlc19jb3VudCIgdmFyaWFibGUgaW5zdGVhZAphbmQgY2FsbCBzcGljZV91c2JfYmFj
a2VuZF9kZXZpY2VfY2hlY2tfZmlsdGVyIG9uY2U/Cgo+ICsgICAgICAgIH0gZWxzZSBpZiAoaXNf
Y2QpIHsKPiArICAgICAgICAgICAgc2hhbGxfcmVkaXJlY3QgPSAhc3BpY2VfdXNiX2JhY2tlbmRf
ZGV2aWNlX2NoZWNrX2ZpbHRlcigKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBi
ZGV2LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHByaXYtPmF1dG9fY29ubl9m
aWx0ZXJfcnVsZXMsCj4gKysgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcHJpdi0+YXV0
b19jb25uX2ZpbHRlcl9ydWxlc19jb3VudCk7Cj4gKyAgICAgICAgfSBlbHNlIHsKPiArICAgICAg
ICAgICAgc2hhbGxfcmVkaXJlY3QgPSBGQUxTRTsKPiArICAgICAgICB9Cj4gKwo+ICsgICAgICAg
IGlmIChzaGFsbF9yZWRpcmVjdCkgewo+ICAgICAgICAgICAgICAvKiBOb3RlOiByZS11c2VzIHNw
aWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9jb25uZWN0X2RldmljZV9hc3luYydzCj4gICAgICAgICAg
ICAgICAgIGNvbXBsZXRpb24gaGFuZGxpbmcgY29kZSEgKi8KPiAgICAgICAgICAgICAgdGFzayA9
IGdfdGFza19uZXcoc2VsZiwKCkZyZWRpYW5vCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
