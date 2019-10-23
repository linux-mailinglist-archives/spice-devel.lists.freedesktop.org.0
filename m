Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB16E1973
	for <lists+spice-devel@lfdr.de>; Wed, 23 Oct 2019 13:56:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 060366EA4F;
	Wed, 23 Oct 2019 11:56:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AFF36EA4F
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Oct 2019 11:56:35 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-305-fS9gbG3nMm6cEFTwqHBQRQ-1; Wed, 23 Oct 2019 07:56:27 -0400
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 44E191800DCA
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Oct 2019 11:56:26 +0000 (UTC)
Received: from [10.34.247.151] (unknown [10.34.247.151])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B217C5DC1E;
 Wed, 23 Oct 2019 11:56:25 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20191023100632.26265-1-fziglio@redhat.com>
 <20191023100632.26265-3-fziglio@redhat.com>
From: "Eduardo Lima (Etrunko)" <etrunko@redhat.com>
Organization: Red Hat
Message-ID: <abe9c5cd-8f1b-b03b-ee9e-451333170d84@redhat.com>
Date: Wed, 23 Oct 2019 13:56:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191023100632.26265-3-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: fS9gbG3nMm6cEFTwqHBQRQ-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571831794;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BFZ3z5u4YtLXPkcR3U1wkun/auPu1oxtlA0nzuWurLU=;
 b=cCBGrIOZQ/5K6Z3Cjxkx5mUzDIEIulAiQk2DEoCRIy3Yv6eBBZYnq64NbsJmDi5pPPErVD
 k1H9zcOK8To13iIl/ZWEd595hMrAmMd0Nu+rOJW/Zrdyl2hkEOYHE7SxEE+FV2LJLfTEtL
 mDLSb/SCRZr/MBkrnw4nnqWauVsdJRk=
Subject: Re: [Spice-devel] [PATCH spice-protocol v4 3/5] build-sys: Provide
 spec file during build
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

T24gMTAvMjMvMTkgMTI6MDYgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPiBIYXZpbmcgdGhl
IFJQTSBzcGVjIGZpbGUgcHJvZHVjZWQgYnkgdGhlIGJ1aWxkIGlzIGhlbHBmdWwgaW4KPiBkaWZm
ZXJlbnQgc2l0dWF0aW9uLiBEaWZmZXJlbnQgdG9vbHMgbGlrZSBtb2NrIG9yIGNvZGUKPiBzY2Fu
bmVycyBhY2NlcHQgc291cmNlIFJQTXMgYXMgaW5wdXQuCj4gUHJvdmlkaW5nIHRoaXMgZmlsZSBh
bGxvd3MgZWFzaWx5IGJ1aWxkIG9mIHRoZSBzb3VyY2UgUlBNIChhbmQKPiBiaW5hcmllcykgdXNp
bmcgYSBzaW1wbGUgY29tbWFuZCBsaWtlCj4gCj4gICAgJCBycG1idWlsZCAtdGEgc3BpY2UtcHJv
dG9jb2wtWFhYWC50YXIuYnoyCj4gCj4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxm
emlnbGlvQHJlZGhhdC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogVmljdG9yIFRvc28gPHZpY3RvcnRv
c29AcmVkaGF0LmNvbT4KPiAtLQo+IENoYW5nZXMgc2luY2UgdjM6Cj4gLSBhZGQgZ2l0bGFiIGNp
IGZyb20gVmljdG9yCj4gLS0tCj4gICAuZ2l0bGFiLWNpLnltbCAgICAgICAgIHwgNCArKystCj4g
ICBNYWtlZmlsZS5hbSAgICAgICAgICAgIHwgMSArCj4gICBjb25maWd1cmUuYWMgICAgICAgICAg
IHwgMSArCj4gICBzcGljZS1wcm90b2NvbC5zcGVjLmluIHwgMyArKy0KPiAgIDQgZmlsZXMgY2hh
bmdlZCwgNyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS8u
Z2l0bGFiLWNpLnltbCBiLy5naXRsYWItY2kueW1sCj4gaW5kZXggYjNmYWQ2NC4uYTIwNzc2ZSAx
MDA2NDQKPiAtLS0gYS8uZ2l0bGFiLWNpLnltbAo+ICsrKyBiLy5naXRsYWItY2kueW1sCj4gQEAg
LTMsNyArMyw3IEBAIGltYWdlOiBmZWRvcmE6bGF0ZXN0Cj4gICB2YXJpYWJsZXM6Cj4gICAgIERF
UFNfQ09NTU9OOiBnaXQgbGlidG9vbCBtYWtlIHB5dGhvbjMgcHl0aG9uMy1zaXggcmVkaGF0LXJw
bS1jb25maWcKPiAgICAgICAgICAgICAgICAgIHB5dGhvbjMtcHlwYXJzaW5nIG1lc29uIG5pbmph
LWJ1aWxkIGd0ay1kb2MgZ2xpYjItZGV2ZWwKPiAtICAgICAgICAgICAgICAgZ2V0dGV4dCBnZXR0
ZXh0LWRldmVsIGJ6aXAyCj4gKyAgICAgICAgICAgICAgIGdldHRleHQgZ2V0dGV4dC1kZXZlbCBi
emlwMiBycG1saW50IHJwbS1idWlsZCBweXRob24tdW52ZXJzaW9uZWQtY29tbWFuZAo+ICAgCj4g
ICBiZWZvcmVfc2NyaXB0Ogo+ICAgLSBkbmYgaW5zdGFsbCAteSAkREVQU19DT01NT04KPiBAQCAt
MTQsNiArMTQsOCBAQCBmZWRvcmEtYXV0b3Rvb2xzOgo+ICAgICAgIC0gLi9hdXRvZ2VuLnNoCj4g
ICAgICAgLSBtYWtlCj4gICAgICAgLSBtYWtlIGRpc3RjaGVjawo+ICsgICAgLSBycG1saW50IC1v
ICJOZXR3b3JrRW5hYmxlZCBGYWxzZSIgc3BpY2UtcHJvdG9jb2wuc3BlYwo+ICsgICAgLSBycG1i
dWlsZCAtdGEgc3BpY2UtcHJvdG9jb2wtKi50YXIuYnoyCj4gICAKPiAgIGZlZG9yYS1tZXNvbjoK
PiAgICAgc2NyaXB0Ogo+IGRpZmYgLS1naXQgYS9NYWtlZmlsZS5hbSBiL01ha2VmaWxlLmFtCj4g
aW5kZXggZGIyZDViYS4uYzViOTc4NyAxMDA2NDQKPiAtLS0gYS9NYWtlZmlsZS5hbQo+ICsrKyBi
L01ha2VmaWxlLmFtCj4gQEAgLTI1LDYgKzI1LDcgQEAgTUFJTlRBSU5FUkNMRUFORklMRVMgPQkJ
CQkJCVwKPiAgIEVYVFJBX0RJU1QgPQkJCQkJCQlcCj4gICAJUkVBRE1FLm1kCQkJCQkJXAo+ICAg
CUNIQU5HRUxPRy5tZAkJCQkJCVwKPiArCXNwaWNlLXByb3RvY29sLnNwZWMJCQkJCVwKPiAgIAlt
ZXNvbi5idWlsZAo+ICAgCj4gICAtaW5jbHVkZSAkKHRvcF9zcmNkaXIpL2dpdC5tawo+IGRpZmYg
LS1naXQgYS9jb25maWd1cmUuYWMgYi9jb25maWd1cmUuYWMKPiBpbmRleCBiYzNlMzNmLi4yYWRj
YjdjIDEwMDY0NAo+IC0tLSBhL2NvbmZpZ3VyZS5hYwo+ICsrKyBiL2NvbmZpZ3VyZS5hYwo+IEBA
IC0xOCw0ICsxOCw1IEBAIEFDX09VVFBVVChbCj4gICBNYWtlZmlsZQo+ICAgc3BpY2UtcHJvdG9j
b2wucGMKPiAgIHNwaWNlL01ha2VmaWxlCj4gK3NwaWNlLXByb3RvY29sLnNwZWMKPiAgIF0pCj4g
ZGlmZiAtLWdpdCBhL3NwaWNlLXByb3RvY29sLnNwZWMuaW4gYi9zcGljZS1wcm90b2NvbC5zcGVj
LmluCj4gaW5kZXggZTI0MDYzNy4uNDk3MjRjNiAxMDA2NDQKPiAtLS0gYS9zcGljZS1wcm90b2Nv
bC5zcGVjLmluCj4gKysrIGIvc3BpY2UtcHJvdG9jb2wuc3BlYy5pbgo+IEBAIC0xLDcgKzEsOCBA
QAo+ICAgTmFtZTogICAgICAgICAgIHNwaWNlLXByb3RvY29sCj4gLVZlcnNpb246ICAgICAgICAw
LjE0LjAKPiArVmVyc2lvbjogICAgICAgIEBWRVJTSU9OQAo+ICAgUmVsZWFzZTogICAgICAgIDEl
ez9kaXN0fQo+ICAgU3VtbWFyeTogICAgICAgIFNwaWNlIHByb3RvY29sIGhlYWRlciBmaWxlcwo+
ICtHcm91cDogICAgICAgICAgRGV2ZWxvcG1lbnQvTGlicmFyaWVzCj4gICAjIE1haW4gaGVhZGVy
cyBhcmUgQlNELCBjb250cm9sbGVyIC8gZm9yZWlnbiBtZW51IGFyZSBMR1BMCj4gICBMaWNlbnNl
OiAgICAgICAgQlNEIGFuZCBMR1BMdjIrCj4gICBVUkw6ICAgICAgICAgICAgaHR0cHM6Ly93d3cu
c3BpY2Utc3BhY2Uub3JnCj4gCkFja2VkLWJ5OiBFZHVhcmRvIExpbWEgKEV0cnVua28pIDxldHJ1
bmtvQHJlZGhhdC5jb20+CgotLSAKRWR1YXJkbyBkZSBCYXJyb3MgTGltYSAoRXRydW5rbykKU29m
dHdhcmUgRW5naW5lZXIgLSBSZWQgSGF0CmV0cnVua29AcmVkaGF0LmNvbQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBs
aXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
