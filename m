Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E12E119B6
	for <lists+spice-devel@lfdr.de>; Thu,  2 May 2019 15:06:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9911989483;
	Thu,  2 May 2019 13:06:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DB3289483
 for <spice-devel@lists.freedesktop.org>; Thu,  2 May 2019 13:06:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BFD4830832E1
 for <spice-devel@lists.freedesktop.org>; Thu,  2 May 2019 13:05:59 +0000 (UTC)
Received: from lub.tlv (dhcp-4-231.tlv.redhat.com [10.35.4.231])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 00016176BD;
 Thu,  2 May 2019 13:05:58 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190502111339.27405-1-fziglio@redhat.com>
 <20190502111339.27405-2-fziglio@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <666650ee-5e96-4333-472c-bfef1ce23f2f@redhat.com>
Date: Thu, 2 May 2019 16:05:57 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190502111339.27405-2-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Thu, 02 May 2019 13:05:59 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-streaming-agent v3 1/2] Make "agent"
 object not static
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
Reply-To: uril@redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gNS8yLzE5IDI6MTMgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPiBBbGxvd3MgdG8gY2F0
Y2ggcG9zc2libGUgZXhjZXB0aW9uIGJ1aWxkaW5nIHRoZSBvYmplY3QuCj4gQWxzbyB3aWxsIGFs
bG93IHRvIG1vcmUgc2FmZWx5IGhhbmRsZSBsb2dnZXIgZGVwZW5kZW5jeS4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KCkFja2VkLWJ5OiBV
cmkgTHVibGluIDx1cmlsQHJlZGhhdC5jb20+CgpVcmkuCgo+IC0tLQo+ICAgc3JjL2NvbmNyZXRl
LWFnZW50LmNwcCAgICAgICAgfCAxMSArKystLS0tLS0tLQo+ICAgc3JjL2NvbmNyZXRlLWFnZW50
LmhwcCAgICAgICAgfCAgNCArLS0tCj4gICBzcmMvc3BpY2Utc3RyZWFtaW5nLWFnZW50LmNwcCB8
IDEyICsrKysrKystLS0tLQo+ICAgMyBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAx
NiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvc3JjL2NvbmNyZXRlLWFnZW50LmNwcCBi
L3NyYy9jb25jcmV0ZS1hZ2VudC5jcHAKPiBpbmRleCBmOTRhZWFkLi5mYjE0MTJiIDEwMDY0NAo+
IC0tLSBhL3NyYy9jb25jcmV0ZS1hZ2VudC5jcHAKPiArKysgYi9zcmMvY29uY3JldGUtYWdlbnQu
Y3BwCj4gQEAgLTI1LDkgKzI1LDEwIEBAIHN0YXRpYyBpbmxpbmUgdW5zaWduZWQgTWlub3JWZXJz
aW9uKHVuc2lnbmVkIHZlcnNpb24pCj4gICAgICAgcmV0dXJuIHZlcnNpb24gJiAweGZmdTsKPiAg
IH0KPiAgIAo+IC1Db25jcmV0ZUFnZW50OjpDb25jcmV0ZUFnZW50KCkKPiArQ29uY3JldGVBZ2Vu
dDo6Q29uY3JldGVBZ2VudChjb25zdCBzdGQ6OnZlY3RvcjxDb25jcmV0ZUNvbmZpZ3VyZU9wdGlv
bj4gJm9wdGlvbnMpOgo+ICsgICAgb3B0aW9ucyhvcHRpb25zKQo+ICAgewo+IC0gICAgb3B0aW9u
cy5wdXNoX2JhY2soQ29uY3JldGVDb25maWd1cmVPcHRpb24obnVsbHB0ciwgbnVsbHB0cikpOwo+
ICsgICAgdGhpcy0+b3B0aW9ucy5wdXNoX2JhY2soQ29uY3JldGVDb25maWd1cmVPcHRpb24obnVs
bHB0ciwgbnVsbHB0cikpOwo+ICAgfQo+ICAgCj4gICBib29sIENvbmNyZXRlQWdlbnQ6OlBsdWdp
blZlcnNpb25Jc0NvbXBhdGlibGUodW5zaWduZWQgcGx1Z2luVmVyc2lvbikgY29uc3QKPiBAQCAt
NDksMTIgKzUwLDYgQEAgY29uc3QgQ29uZmlndXJlT3B0aW9uKiBDb25jcmV0ZUFnZW50OjpPcHRp
b25zKCkgY29uc3QKPiAgICAgICByZXR1cm4gc3RhdGljX2Nhc3Q8Y29uc3QgQ29uZmlndXJlT3B0
aW9uKj4oJm9wdGlvbnNbMF0pOwo+ICAgfQo+ICAgCj4gLXZvaWQgQ29uY3JldGVBZ2VudDo6QWRk
T3B0aW9uKGNvbnN0IGNoYXIgKm5hbWUsIGNvbnN0IGNoYXIgKnZhbHVlKQo+IC17Cj4gLSAgICAv
LyBpbnNlcnQgYmVmb3JlIHRoZSBsYXN0IHtudWxscHRyLCBudWxscHRyfSB2YWx1ZQo+IC0gICAg
b3B0aW9ucy5pbnNlcnQoLS1vcHRpb25zLmVuZCgpLCBDb25jcmV0ZUNvbmZpZ3VyZU9wdGlvbihu
YW1lLCB2YWx1ZSkpOwo+IC19Cj4gLQo+ICAgdm9pZCBDb25jcmV0ZUFnZW50OjpMb2FkUGx1Z2lu
cyhjb25zdCBzdGQ6OnN0cmluZyAmZGlyZWN0b3J5KQo+ICAgewo+ICAgICAgIHN0ZDo6c3RyaW5n
IHBhdHRlcm4gPSBkaXJlY3RvcnkgKyAiLyouc28iOwo+IGRpZmYgLS1naXQgYS9zcmMvY29uY3Jl
dGUtYWdlbnQuaHBwIGIvc3JjL2NvbmNyZXRlLWFnZW50LmhwcAo+IGluZGV4IDk5ZGNmNTQuLjJj
MmViYzggMTAwNjQ0Cj4gLS0tIGEvc3JjL2NvbmNyZXRlLWFnZW50LmhwcAo+ICsrKyBiL3NyYy9j
b25jcmV0ZS1hZ2VudC5ocHAKPiBAQCAtMjYsMTIgKzI2LDEwIEBAIHN0cnVjdCBDb25jcmV0ZUNv
bmZpZ3VyZU9wdGlvbjogQ29uZmlndXJlT3B0aW9uCj4gICBjbGFzcyBDb25jcmV0ZUFnZW50IGZp
bmFsIDogcHVibGljIEFnZW50Cj4gICB7Cj4gICBwdWJsaWM6Cj4gLSAgICBDb25jcmV0ZUFnZW50
KCk7Cj4gKyAgICBDb25jcmV0ZUFnZW50KGNvbnN0IHN0ZDo6dmVjdG9yPENvbmNyZXRlQ29uZmln
dXJlT3B0aW9uPiAmb3B0aW9ucyk7Cj4gICAgICAgdm9pZCBSZWdpc3Rlcihjb25zdCBzdGQ6OnNo
YXJlZF9wdHI8UGx1Z2luPiYgcGx1Z2luKSBvdmVycmlkZTsKPiAgICAgICBjb25zdCBDb25maWd1
cmVPcHRpb24qIE9wdGlvbnMoKSBjb25zdCBvdmVycmlkZTsKPiAgICAgICB2b2lkIExvYWRQbHVn
aW5zKGNvbnN0IHN0ZDo6c3RyaW5nICZkaXJlY3RvcnkpOwo+IC0gICAgLy8gcG9pbnRlciBtdXN0
IHJlbWFpbiB2YWxpZAo+IC0gICAgdm9pZCBBZGRPcHRpb24oY29uc3QgY2hhciAqbmFtZSwgY29u
c3QgY2hhciAqdmFsdWUpOwo+ICAgICAgIEZyYW1lQ2FwdHVyZSAqR2V0QmVzdEZyYW1lQ2FwdHVy
ZShjb25zdCBzdGQ6OnNldDxTcGljZVZpZGVvQ29kZWNUeXBlPiYgY29kZWNzKTsKPiAgIHByaXZh
dGU6Cj4gICAgICAgYm9vbCBQbHVnaW5WZXJzaW9uSXNDb21wYXRpYmxlKHVuc2lnbmVkIHBsdWdp
blZlcnNpb24pIGNvbnN0Owo+IGRpZmYgLS1naXQgYS9zcmMvc3BpY2Utc3RyZWFtaW5nLWFnZW50
LmNwcCBiL3NyYy9zcGljZS1zdHJlYW1pbmctYWdlbnQuY3BwCj4gaW5kZXggOTUwN2E1NC4uMDM5
ZDYyOCAxMDA2NDQKPiAtLS0gYS9zcmMvc3BpY2Utc3RyZWFtaW5nLWFnZW50LmNwcAo+ICsrKyBi
L3NyYy9zcGljZS1zdHJlYW1pbmctYWdlbnQuY3BwCj4gQEAgLTQxLDggKzQxLDYgQEAKPiAgIAo+
ICAgdXNpbmcgbmFtZXNwYWNlIHNwaWNlOjpzdHJlYW1pbmdfYWdlbnQ7Cj4gICAKPiAtc3RhdGlj
IENvbmNyZXRlQWdlbnQgYWdlbnQ7Cj4gLQo+ICAgY2xhc3MgRm9ybWF0TWVzc2FnZSA6IHB1Ymxp
YyBPdXRib3VuZE1lc3NhZ2U8U3RyZWFtTXNnRm9ybWF0LCBGb3JtYXRNZXNzYWdlLCBTVFJFQU1f
VFlQRV9GT1JNQVQ+Cj4gICB7Cj4gICBwdWJsaWM6Cj4gQEAgLTIzMSw3ICsyMjksNyBAQCBzdGF0
aWMgdm9pZCB1c2FnZShjb25zdCBjaGFyICpwcm9nbmFtZSkKPiAgIH0KPiAgIAo+ICAgc3RhdGlj
IHZvaWQKPiAtZG9fY2FwdHVyZShTdHJlYW1Qb3J0ICZzdHJlYW1fcG9ydCwgRnJhbWVMb2cgJmZy
YW1lX2xvZykKPiArZG9fY2FwdHVyZShTdHJlYW1Qb3J0ICZzdHJlYW1fcG9ydCwgRnJhbWVMb2cg
JmZyYW1lX2xvZywgQ29uY3JldGVBZ2VudCAmYWdlbnQpCj4gICB7Cj4gICAgICAgdW5zaWduZWQg
aW50IGZyYW1lX2NvdW50ID0gMDsKPiAgICAgICB3aGlsZSAoIXF1aXRfcmVxdWVzdGVkKSB7Cj4g
QEAgLTM1Myw2ICszNTEsOCBAQCBpbnQgbWFpbihpbnQgYXJnYywgY2hhciogYXJndltdKQo+ICAg
Cj4gICAgICAgc2V0bG9nbWFzayhMT0dfVVBUTyhMT0dfTk9USUNFKSk7Cj4gICAKPiArICAgIHN0
ZDo6dmVjdG9yPENvbmNyZXRlQ29uZmlndXJlT3B0aW9uPiBvcHRpb25zOwo+ICsKPiAgICAgICB3
aGlsZSAoKG9wdCA9IGdldG9wdF9sb25nKGFyZ2MsIGFyZ3YsICJocDpjOmw6ZCIsIGxvbmdfb3B0
aW9ucywgTlVMTCkpICE9IC0xKSB7Cj4gICAgICAgICAgIHN3aXRjaCAob3B0KSB7Cj4gICAgICAg
ICAgIGNhc2UgMDoKPiBAQCAtMzcxLDcgKzM3MSw3IEBAIGludCBtYWluKGludCBhcmdjLCBjaGFy
KiBhcmd2W10pCj4gICAgICAgICAgICAgICAgICAgdXNhZ2UoYXJndlswXSk7Cj4gICAgICAgICAg
ICAgICB9Cj4gICAgICAgICAgICAgICAqcCsrID0gJ1wwJzsKPiAtICAgICAgICAgICAgYWdlbnQu
QWRkT3B0aW9uKG9wdGFyZywgcCk7Cj4gKyAgICAgICAgICAgIG9wdGlvbnMucHVzaF9iYWNrKENv
bmNyZXRlQ29uZmlndXJlT3B0aW9uKG9wdGFyZywgcCkpOwo+ICAgICAgICAgICAgICAgYnJlYWs7
Cj4gICAgICAgICAgIH0KPiAgICAgICAgICAgY2FzZSBPUFRfTE9HX0JJTkFSWToKPiBAQCAtNDAx
LDYgKzQwMSw4IEBAIGludCBtYWluKGludCBhcmdjLCBjaGFyKiBhcmd2W10pCj4gICAgICAgcmVn
aXN0ZXJfaW50ZXJydXB0cygpOwo+ICAgCj4gICAgICAgdHJ5IHsKPiArICAgICAgICBDb25jcmV0
ZUFnZW50IGFnZW50KG9wdGlvbnMpOwo+ICsKPiAgICAgICAgICAgLy8gcmVnaXN0ZXIgYnVpbHQt
aW4gcGx1Z2lucwo+ICAgICAgICAgICBNanBlZ1BsdWdpbjo6UmVnaXN0ZXIoJmFnZW50KTsKPiAg
IAo+IEBAIC00MTgsNyArNDIwLDcgQEAgaW50IG1haW4oaW50IGFyZ2MsIGNoYXIqIGFyZ3ZbXSkK
PiAgICAgICAgICAgc3RkOjp0aHJlYWQgY3Vyc29yX3VwZGF0ZXJ7Q3Vyc29yVXBkYXRlcigmc3Ry
ZWFtX3BvcnQpfTsKPiAgICAgICAgICAgY3Vyc29yX3VwZGF0ZXIuZGV0YWNoKCk7Cj4gICAKPiAt
ICAgICAgICBkb19jYXB0dXJlKHN0cmVhbV9wb3J0LCBmcmFtZV9sb2cpOwo+ICsgICAgICAgIGRv
X2NhcHR1cmUoc3RyZWFtX3BvcnQsIGZyYW1lX2xvZywgYWdlbnQpOwo+ICAgICAgIH0KPiAgICAg
ICBjYXRjaCAoc3RkOjpleGNlcHRpb24gJmVycikgewo+ICAgICAgICAgICBzeXNsb2coTE9HX0VS
UiwgIiVzIiwgZXJyLndoYXQoKSk7Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vc3BpY2UtZGV2ZWw=
