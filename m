Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35062E1969
	for <lists+spice-devel@lfdr.de>; Wed, 23 Oct 2019 13:54:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C05FC6EA4E;
	Wed, 23 Oct 2019 11:54:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8000D6EA4E
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Oct 2019 11:53:58 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-342-QThWVMipMVOCUaG5eVZ1yA-1; Wed, 23 Oct 2019 07:53:53 -0400
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 950EB1800D6B
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Oct 2019 11:53:52 +0000 (UTC)
Received: from [10.34.247.151] (unknown [10.34.247.151])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B9FD9194BB;
 Wed, 23 Oct 2019 11:53:51 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20191023100632.26265-1-fziglio@redhat.com>
 <20191023100632.26265-2-fziglio@redhat.com>
From: "Eduardo Lima (Etrunko)" <etrunko@redhat.com>
Organization: Red Hat
Message-ID: <035da648-c047-ed52-e42c-63727ba1f79e@redhat.com>
Date: Wed, 23 Oct 2019 13:53:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191023100632.26265-2-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: QThWVMipMVOCUaG5eVZ1yA-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571831637;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1lPuwddI710v1pjG0g+3piB2Lpd/G4x7hxzT8HyqdtM=;
 b=LydHQT+jyaPL1c9ZgUPwjTkHqENwJVAREGPZ56lW4CxW2gooJrA/8XsGhnJJGFJBMTafM0
 Q8iCcHMLQfSLM837pwYwax23Or/h2RznOGEM8xuFBc5OnZ5ajTWn+Ag3yJxiQMwbAjf8pZ
 cfMqQm/h9TrXY/wG8+5w0po5vm2zuyI=
Subject: Re: [Spice-devel] [PATCH spice-protocol v4 2/5] build-sys: Update
 URL in SPEC file
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gMTAvMjMvMTkgMTI6MDYgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPiBVc2UgaHR0cHMg
aW5zdGVhZCBvZiBodHRwLCB3ZWIgc2VydmVyIGF1dG9tYXRpY2FsbHkgcmVkaXJlY3RzCj4gdG8g
c2VjdXJlIHZlcnNpb24uCj4gUmVtb3ZlIHNsYXNoIGF0IHRoZSBlbmQsIG5vdCBuZWVkZWQuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4g
LS0tCj4gICBzcGljZS1wcm90b2NvbC5zcGVjLmluIHwgNCArKy0tCj4gICAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9zcGlj
ZS1wcm90b2NvbC5zcGVjLmluIGIvc3BpY2UtcHJvdG9jb2wuc3BlYy5pbgo+IGluZGV4IGExM2Fl
OTkuLmUyNDA2MzcgMTAwNjQ0Cj4gLS0tIGEvc3BpY2UtcHJvdG9jb2wuc3BlYy5pbgo+ICsrKyBi
L3NwaWNlLXByb3RvY29sLnNwZWMuaW4KPiBAQCAtNCw4ICs0LDggQEAgUmVsZWFzZTogICAgICAg
IDElez9kaXN0fQo+ICAgU3VtbWFyeTogICAgICAgIFNwaWNlIHByb3RvY29sIGhlYWRlciBmaWxl
cwo+ICAgIyBNYWluIGhlYWRlcnMgYXJlIEJTRCwgY29udHJvbGxlciAvIGZvcmVpZ24gbWVudSBh
cmUgTEdQTAo+ICAgTGljZW5zZTogICAgICAgIEJTRCBhbmQgTEdQTHYyKwo+IC1VUkw6ICAgICAg
ICAgICAgaHR0cDovL3d3dy5zcGljZS1zcGFjZS5vcmcvCj4gLVNvdXJjZTA6ICAgICAgICBodHRw
Oi8vd3d3LnNwaWNlLXNwYWNlLm9yZy9kb3dubG9hZC9yZWxlYXNlcy8le25hbWV9LSV7dmVyc2lv
bn0udGFyLmJ6Mgo+ICtVUkw6ICAgICAgICAgICAgaHR0cHM6Ly93d3cuc3BpY2Utc3BhY2Uub3Jn
Cj4gK1NvdXJjZTA6ICAgICAgICBodHRwczovL3d3dy5zcGljZS1zcGFjZS5vcmcvZG93bmxvYWQv
cmVsZWFzZXMvJXtuYW1lfS0le3ZlcnNpb259LnRhci5iejIKPiAgIEJ1aWxkQXJjaDogICAgICBu
b2FyY2gKPiAgIAo+ICAgJWRlc2NyaXB0aW9uCj4gCkFja2VkLWJ5OiBFZHVhcmRvIExpbWEgKEV0
cnVua28pIDxldHJ1bmtvQHJlZGhhdC5jb20+CgotLSAKRWR1YXJkbyBkZSBCYXJyb3MgTGltYSAo
RXRydW5rbykKU29mdHdhcmUgRW5naW5lZXIgLSBSZWQgSGF0CmV0cnVua29AcmVkaGF0LmNvbQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
