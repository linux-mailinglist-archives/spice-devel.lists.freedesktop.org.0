Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E10185E26
	for <lists+spice-devel@lfdr.de>; Thu,  8 Aug 2019 11:23:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A95446E69C;
	Thu,  8 Aug 2019 09:23:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 842E46E69C
 for <spice-devel@lists.freedesktop.org>; Thu,  8 Aug 2019 09:23:12 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id r1so94121667wrl.7
 for <spice-devel@lists.freedesktop.org>; Thu, 08 Aug 2019 02:23:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=zYqIwdqV0cBQMdprS/tfPwBEqSrxI+gFKQy6UCVZn/I=;
 b=UczTHLwwAZOEnQ3F8leryfNawf0HSPmLuCrIRwVF/ArtXmJOFqQXEOj1KCjBHe9IPJ
 bgqjTY59h1SqMyiT4SXWLXPgK6ikvrM3VJVSYyBNIbFUH7gIlvMKYBMQwJqcO3W8spv+
 Mtbz1U+44w2JxV1PYr6yvH1xQolIX0RPfNPsTO7uWg39OoU3AhrbIBoN6E5aiPE8+VpD
 MLOtf4sd6raBd05FuAQwxroIlJhdP3OydevBFZUDAL7HdUG0vtZcgLh5G2f0jx9zljwI
 t2lpUm7EvEMwUp+WM/mzx8PfjcHj/k6KNk088vzUzOpJQHNRDUU0GCrklvawUGGC6bHF
 eb6Q==
X-Gm-Message-State: APjAAAVza86woFsLxh/YfrDee3XHEn0DizUxnSzZzStsd/CQkS7qUCR9
 FZWB5Zo6d35zNTAWCF3ZceXaBa8TkJU=
X-Google-Smtp-Source: APXvYqxxwx1C7DiqGafMEvC18o0YIg7QJgy0sAjpE7xpJ9x86ydJKwvZWYPOfwvLkqwBpdY0XbkiFA==
X-Received: by 2002:adf:f3c1:: with SMTP id g1mr15940278wrp.203.1565256190704; 
 Thu, 08 Aug 2019 02:23:10 -0700 (PDT)
Received: from dhcp-4-93.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id j189sm2173530wmb.48.2019.08.08.02.23.09
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 08 Aug 2019 02:23:09 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <20190806153453.20616-9-kpouget@redhat.com>
 <20190807154949.28693-1-kpouget@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <01beefc4-40d8-4e3d-3ebd-2b43dce90d3e@redhat.com>
Date: Thu, 8 Aug 2019 12:23:08 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190807154949.28693-1-kpouget@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [RFC spice-gtk 1/2] streaming: make draw-area
 visible on MJPEG encoder creation
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

SGksCgpPbiA4LzcvMTkgNjo0OSBQTSwgS2V2aW4gUG91Z2V0IHdyb3RlOgo+IFRoaXMgcGF0Y2gg
YWxsb3dzIHRoZSBNSlBFRyBlbmNvZGVyIHRvIGluZm9ybSB0aGUgc3BpY2Utd2lkZ2V0IHRoYXQK
PiBpdHMgdmlkZW8gZHJhd2luZyBhcmVhIChkcmF3LWFyZWEpIHNob3VsZCBiZSBtYWRlIHZpc2li
bGUgb24gc2NyZWVuLgoKClNvIHRoZSBmaXJzdCBvbmUgZG9lcyBub3Qgd29yaz8KCkJUVyBpIHRo
aW5rIHRoZSBjb25zZW5zdXMgaXMgdG8gbWVudGlvbiB0aGUgcGF0Y2ggdmVyc2lvbiBpbiBhbGwK
b2YgdGhlIHN1YmplY3RzIChub3Qgb25seSBpbiB0aGUgY292ZXIgbGV0dGVyKQoKCj4gVGhpcyBp
cyByZXF1aXJlZCB0byBzd2l0Y2ggZnJvbSBHU1QgdmlkZW8gZGVjb2RpbmcgdG8gbmF0aXZlIE1K
UEVHCj4gZGVjb2RpbmcsIG90aGVyd2lzZSB0aGUgZ3N0LWFyZWEgcmVtYWluZWQgb24gdG9wIGFu
ZCB0aGUgTUpQRUcgdmlkZW8KPiBzdHJlYW0gd2FzIG5ldmVyIHNob3duLgoKCkFjdHVhbGx5IElJ
UkMgdGhlIGZpcnN0IHZlcnNpb24gb2YgdGhlIGdzdC1vdmVybGF5IHNpZ25hbCBpbmNsdWRlZAph
IGJvb2xlYW4gdmFsdWUgd2hpY2ggY291bGQgaGF2ZSBiZWVuIHVzZWZ1bCBoZXJlIDpQCgoKPgo+
IFNpZ25lZC1vZmYtYnk6IEtldmluIFBvdWdldCA8a3BvdWdldEByZWRoYXQuY29tPgo+Cj4gLS0t
Cj4gICBzcmMvY2hhbm5lbC1kaXNwbGF5LW1qcGVnLmMgfCAgMiArKwo+ICAgc3JjL2NoYW5uZWwt
ZGlzcGxheS1wcml2LmggIHwgIDIgKy0KPiAgIHNyYy9jaGFubmVsLWRpc3BsYXkuYyAgICAgICB8
IDM4ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0KPiAgIHNyYy9zcGljZS1t
YXJzaGFsLnR4dCAgICAgICB8ICAxICsKPiAgIHNyYy9zcGljZS13aWRnZXQuYyAgICAgICAgICB8
IDE2ICsrKysrKysrKysrKysrLS0KPiAgIDUgZmlsZXMgY2hhbmdlZCwgNTMgaW5zZXJ0aW9ucygr
KSwgNiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9zcmMvY2hhbm5lbC1kaXNwbGF5LW1q
cGVnLmMgYi9zcmMvY2hhbm5lbC1kaXNwbGF5LW1qcGVnLmMKPiBpbmRleCA2NDdkMzFiLi42ZjFh
NGQ3IDEwMDY0NAo+IC0tLSBhL3NyYy9jaGFubmVsLWRpc3BsYXktbWpwZWcuYwo+ICsrKyBiL3Ny
Yy9jaGFubmVsLWRpc3BsYXktbWpwZWcuYwo+IEBAIC0zMDAsNSArMzAwLDcgQEAgVmlkZW9EZWNv
ZGVyKiBjcmVhdGVfbWpwZWdfZGVjb2RlcihpbnQgY29kZWNfdHlwZSwgZGlzcGxheV9zdHJlYW0g
KnN0cmVhbSkKPgo+ICAgICAgIC8qIEFsbCB0aGUgb3RoZXIgZmllbGRzIGFyZSBpbml0aWFsaXpl
ZCB0byB6ZXJvIGJ5IGdfbmV3MCgpLiAqLwo+Cj4gKyAgICBzaG93X21qcGVnX3dpZGdldChzdHJl
YW0pOwo+ICsKPiAgICAgICByZXR1cm4gKFZpZGVvRGVjb2RlciopZGVjb2RlcjsKPiAgIH0KPiBk
aWZmIC0tZ2l0IGEvc3JjL2NoYW5uZWwtZGlzcGxheS1wcml2LmggYi9zcmMvY2hhbm5lbC1kaXNw
bGF5LXByaXYuaAo+IGluZGV4IDE2YzEyYzYuLjM0MjRhOGUgMTAwNjQ0Cj4gLS0tIGEvc3JjL2No
YW5uZWwtZGlzcGxheS1wcml2LmgKPiArKysgYi9zcmMvY2hhbm5lbC1kaXNwbGF5LXByaXYuaAo+
IEBAIC0xOTksNyArMTk5LDcgQEAgdm9pZCBzdHJlYW1fZHJvcHBlZF9mcmFtZV9vbl9wbGF5YmFj
ayhkaXNwbGF5X3N0cmVhbSAqc3QpOwo+ICAgdm9pZCBzdHJlYW1fZGlzcGxheV9mcmFtZShkaXNw
bGF5X3N0cmVhbSAqc3QsIFNwaWNlRnJhbWUgKmZyYW1lLCB1aW50MzJfdCB3aWR0aCwgdWludDMy
X3QgaGVpZ2h0LCBpbnQgc3RyaWRlLCB1aW50OF90KiBkYXRhKTsKPiAgIGd1aW50cHRyIGdldF93
aW5kb3dfaGFuZGxlKGRpc3BsYXlfc3RyZWFtICpzdCk7Cj4gICBnYm9vbGVhbiBoYW5kX3BpcGVs
aW5lX3RvX3dpZGdldChkaXNwbGF5X3N0cmVhbSAqc3QsICBHc3RQaXBlbGluZSAqcGlwZWxpbmUp
Owo+IC0KPiArZ2Jvb2xlYW4gc2hvd19tanBlZ193aWRnZXQoZGlzcGxheV9zdHJlYW0gKnN0KTsK
PiAgIHZvaWQgc3BpY2VfZnJhbWVfZnJlZShTcGljZUZyYW1lICpmcmFtZSk7Cj4KPiAgIEdfRU5E
X0RFQ0xTCj4gZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVsLWRpc3BsYXkuYyBiL3NyYy9jaGFubmVs
LWRpc3BsYXkuYwo+IGluZGV4IDQ0NTU1ZTMuLjE4ZTk1YjkgMTAwNjQ0Cj4gLS0tIGEvc3JjL2No
YW5uZWwtZGlzcGxheS5jCj4gKysrIGIvc3JjL2NoYW5uZWwtZGlzcGxheS5jCj4gQEAgLTkwLDcg
KzkwLDggQEAgZW51bSB7Cj4gICAgICAgU1BJQ0VfRElTUExBWV9NQVJLLAo+ICAgICAgIFNQSUNF
X0RJU1BMQVlfR0xfRFJBVywKPiAgICAgICBTUElDRV9ESVNQTEFZX1NUUkVBTUlOR19NT0RFLAo+
IC0gICAgU1BJQ0VfRElTUExBWV9PVkVSTEFZLAo+ICsgICAgU1BJQ0VfRElTUExBWV9HU1RfT1ZF
UkxBWSwKPiArICAgIFNQSUNFX0RJU1BMQVlfTUpQRUdfT1ZFUkxBWSwKClRoZSB0ZXJtIG92ZXJs
YXkgaXMgZGVyaXZlZCBmcm9tIEdzdFZpZGVvT3ZlcmxheSB3aGljaCBpcyBhbiBnc3RyZWFtZXIK
aW50ZXJmYWNlIHRoYXQgb3ZlcmxheXMgZ3N0cmVhbWVyIG91dHB1dCBvbiB0aGUgZ3RrIHdpZGdl
dCwgaW4gdGhlIGNhc2UKb2YgYnVpbHRpbiBtanBlZyAoYWxzbyB3aXRoIGdzdCBpcyBub3QgYWx3
YXlzIHRydWUpIHdlIHBhc3MgcGl4ZWxzIGFuZApyZW5kZXIgaW50byB0aGUgc3VyZmFjZSBJIGRv
bid0IHRoaW5rIHRoZSBuYW1lIHNob3VsZCBpbnZsdWRlICJvdmVybGF5Ii4KCgo+Cj4gICAgICAg
U1BJQ0VfRElTUExBWV9MQVNUX1NJR05BTCwKPiAgIH07Cj4gQEAgLTQ5MSw3ICs0OTIsNyBAQCBz
dGF0aWMgdm9pZCBzcGljZV9kaXNwbGF5X2NoYW5uZWxfY2xhc3NfaW5pdChTcGljZURpc3BsYXlD
aGFubmVsQ2xhc3MgKmtsYXNzKQo+ICAgICAgICAqCj4gICAgICAgICogU2luY2U6IDAuMzYKPiAg
ICAgICAgKiovCj4gLSAgICBzaWduYWxzW1NQSUNFX0RJU1BMQVlfT1ZFUkxBWV0gPQo+ICsgICAg
c2lnbmFsc1tTUElDRV9ESVNQTEFZX0dTVF9PVkVSTEFZXSA9Cj4gICAgICAgICAgIGdfc2lnbmFs
X25ldygiZ3N0LXZpZGVvLW92ZXJsYXkiLAo+ICAgICAgICAgICAgICAgICAgICAgICAgR19PQkpF
Q1RfQ0xBU1NfVFlQRShnb2JqZWN0X2NsYXNzKSwKPiAgICAgICAgICAgICAgICAgICAgICAgIDAs
IDAsCj4gQEAgLTUwMSw2ICs1MDIsMjUgQEAgc3RhdGljIHZvaWQgc3BpY2VfZGlzcGxheV9jaGFu
bmVsX2NsYXNzX2luaXQoU3BpY2VEaXNwbGF5Q2hhbm5lbENsYXNzICprbGFzcykKPiAgICAgICAg
ICAgICAgICAgICAgICAgIDEsCj4gICAgICAgICAgICAgICAgICAgICAgICBHU1RfVFlQRV9QSVBF
TElORSk7Cj4KPiArICAgIC8qKgo+ICsgICAgICogU3BpY2VEaXNwbGF5Q2hhbm5lbDo6bWpwZWct
dmlkZW8tb3ZlcmxheToKPiArICAgICAqIEBkaXNwbGF5OiB0aGUgI1NwaWNlRGlzcGxheUNoYW5u
ZWwgdGhhdCBlbWl0dGVkIHRoZSBzaWduYWwKPiArICAgICAqCj4gKyAgICAgKiBUaGUgI1NwaWNl
RGlzcGxheUNoYW5uZWw6Om1qcGVnLXZpZGVvLW92ZXJsYXkgc2lnbmFsIGlzIGVtaXR0ZWQKPiAr
ICAgICAqIHdoZW4gdGhlIE1KUEVHIGVuY29kZXIgaXMgcmVhZHkgYW5kIGl0cyBkcmF3aW5nIGFy
ZWEgc2hvdWxkIGJlCj4gKyAgICAgKiBtYWRlIHZpc2libGUgb24gc2NyZWVuCj4gKyAgICAgKgo+
ICsgICAgICogU2luY2U6IDAuMzcKPiArICAgICAqKi8KPiArICAgIHNpZ25hbHNbU1BJQ0VfRElT
UExBWV9NSlBFR19PVkVSTEFZXSA9Cj4gKyAgICAgICAgZ19zaWduYWxfbmV3KCJtanBlZy12aWRl
by1vdmVybGF5IiwKPiArICAgICAgICAgICAgICAgICAgICAgR19PQkpFQ1RfQ0xBU1NfVFlQRShn
b2JqZWN0X2NsYXNzKSwKPiArICAgICAgICAgICAgICAgICAgICAgMCwgMCwKPiArICAgICAgICAg
ICAgICAgICAgICAgTlVMTCwgTlVMTCwKPiArICAgICAgICAgICAgICAgICAgICAgZ19jY2xvc3Vy
ZV91c2VyX21hcnNoYWxfQk9PTEVBTl9fVk9JRCwKPiArICAgICAgICAgICAgICAgICAgICAgR19U
WVBFX0JPT0xFQU4sCj4gKyAgICAgICAgICAgICAgICAgICAgIDApOwo+ICsKPiAgICAgICBjaGFu
bmVsX3NldF9oYW5kbGVycyhTUElDRV9DSEFOTkVMX0NMQVNTKGtsYXNzKSk7Cj4gICB9Cj4KPiBA
QCAtMTQ3MiwxMiArMTQ5MiwyNCBAQCBnYm9vbGVhbiBoYW5kX3BpcGVsaW5lX3RvX3dpZGdldChk
aXNwbGF5X3N0cmVhbSAqc3QsIEdzdFBpcGVsaW5lICpwaXBlbGluZSkKPiAgICAgICBnYm9vbGVh
biByZXMgPSBmYWxzZTsKPgo+ICAgICAgIGlmIChzdC0+c3VyZmFjZS0+c3RyZWFtaW5nX21vZGUp
IHsKPiAtICAgICAgICBnX3NpZ25hbF9lbWl0KHN0LT5jaGFubmVsLCBzaWduYWxzW1NQSUNFX0RJ
U1BMQVlfT1ZFUkxBWV0sIDAsCj4gKyAgICAgICAgZ19zaWduYWxfZW1pdChzdC0+Y2hhbm5lbCwg
c2lnbmFsc1tTUElDRV9ESVNQTEFZX0dTVF9PVkVSTEFZXSwgMCwKPiAgICAgICAgICAgICAgICAg
ICAgICAgICBwaXBlbGluZSwgJnJlcyk7Cj4gICAgICAgfQo+ICAgICAgIHJldHVybiByZXM7Cj4g
ICB9Cj4KPiArR19HTlVDX0lOVEVSTkFMCj4gK2dib29sZWFuIHNob3dfbWpwZWdfd2lkZ2V0KGRp
c3BsYXlfc3RyZWFtICpzdCkKPiArewo+ICsgICAgZ2Jvb2xlYW4gcmVzID0gZmFsc2U7Cj4gKyAg
ICBnX3dhcm5pbmcoIlNIT1chIik7CgpJIGd1ZXNzIHRoaXMgd2FzIGZvciB0ZXN0aW5nIHB1cnBv
c2VzLgoKCj4gKyAgICBpZiAoc3QtPnN1cmZhY2UtPnN0cmVhbWluZ19tb2RlKSB7Cj4gKyAgICAg
ICAgZ19zaWduYWxfZW1pdChzdC0+Y2hhbm5lbCwgc2lnbmFsc1tTUElDRV9ESVNQTEFZX01KUEVH
X09WRVJMQVldLCAwLCAmcmVzKTsKPiArICAgIH0KPiArCj4gKyAgICByZXR1cm4gcmVzOwo+ICt9
Cj4gKwo+ICAgLyogYWZ0ZXIgYSBzZXF1ZW5jZSBvZiAzIGRyb3BzLCBwdXNoIGEgcmVwb3J0IHRv
IHRoZSBzZXJ2ZXIsIGV2ZW4KPiAgICAqIGlmIHRoZSByZXBvcnQgd2luZG93IGlzIGJpZ2dlciAq
Lwo+ICAgI2RlZmluZSBTVFJFQU1fUkVQT1JUX0RST1BfU0VRX0xFTl9MSU1JVCAzCj4gZGlmZiAt
LWdpdCBhL3NyYy9zcGljZS1tYXJzaGFsLnR4dCBiL3NyYy9zcGljZS1tYXJzaGFsLnR4dAo+IGlu
ZGV4IDQ2YmU0MDUuLmU2MGQ3MjUgMTAwNjQ0Cj4gLS0tIGEvc3JjL3NwaWNlLW1hcnNoYWwudHh0
Cj4gKysrIGIvc3JjL3NwaWNlLW1hcnNoYWwudHh0Cj4gQEAgLTgsNiArOCw3IEBAIFZPSUQ6UE9J
TlRFUixJTlQKPiAgIFZPSUQ6UE9JTlRFUixCT09MRUFOCj4gICBCT09MRUFOOlBPSU5URVIsVUlO
VAo+ICAgQk9PTEVBTjpVSU5UCj4gK0JPT0xFQU46Vk9JRAo+ICAgVk9JRDpVSU5ULFBPSU5URVIs
VUlOVAo+ICAgVk9JRDpVSU5ULFVJTlQsUE9JTlRFUixVSU5UCj4gICBCT09MRUFOOlVJTlQsUE9J
TlRFUixVSU5UCj4gZGlmZiAtLWdpdCBhL3NyYy9zcGljZS13aWRnZXQuYyBiL3NyYy9zcGljZS13
aWRnZXQuYwo+IGluZGV4IGE5YmExZjEuLjM0ZTNjNWUgMTAwNjQ0Cj4gLS0tIGEvc3JjL3NwaWNl
LXdpZGdldC5jCj4gKysrIGIvc3JjL3NwaWNlLXdpZGdldC5jCj4gQEAgLTIyMTAsNiArMjIxMCw4
IEBAIHN0YXRpYyB2b2lkIHVwZGF0ZV9pbWFnZShTcGljZURpc3BsYXkgKmRpc3BsYXkpCj4gICAg
ICAgU3BpY2VEaXNwbGF5UHJpdmF0ZSAqZCA9IGRpc3BsYXktPnByaXY7Cj4KPiAgICAgICBzcGlj
ZV9jYWlyb19pbWFnZV9jcmVhdGUoZGlzcGxheSk7Cj4gKyAgICBndGtfc3RhY2tfc2V0X3Zpc2li
bGVfY2hpbGRfbmFtZShkLT5zdGFjaywgImRyYXctYXJlYSIpOwo+ICsKPiAgICAgICBpZiAoZC0+
Y2FudmFzLmNvbnZlcnQpCj4gICAgICAgICAgIGRvX2NvbG9yX2NvbnZlcnQoZGlzcGxheSwgJmQt
PmFyZWEpOwo+ICAgfQo+IEBAIC0yNzgyLDcgKzI3ODQsNyBAQCBzdGF0aWMgdm9pZCBnc3Rfc2l6
ZV9hbGxvY2F0ZShHdGtXaWRnZXQgKndpZGdldCwgR2RrUmVjdGFuZ2xlICphLCBncG9pbnRlciBk
YXRhKQo+ICAgLyogVGhpcyBjYWxsYmFjayBzaG91bGQgcGFzcyB0byB0aGUgd2lkZ2V0IGEgcG9p
bnRlciBvZiB0aGUgcGlwZWxpbmUKPiAgICAqIHNvIHRoYXQgd2UgY2FuIHNldCBwaXBlbGluZSBh
bmQgb3ZlcmxheSByZWxhdGVkIGNhbGxzIGZyb20gaGVyZS4KPiAgICAqLwo+IC1zdGF0aWMgZ2Jv
b2xlYW4gc2V0X292ZXJsYXkoU3BpY2VDaGFubmVsICpjaGFubmVsLCB2b2lkKiBwaXBlbGluZV9w
dHIsIFNwaWNlRGlzcGxheSAqZGlzcGxheSkKPiArc3RhdGljIGdib29sZWFuIGdzdF9zZXRfb3Zl
cmxheShTcGljZUNoYW5uZWwgKmNoYW5uZWwsIHZvaWQqIHBpcGVsaW5lX3B0ciwgU3BpY2VEaXNw
bGF5ICpkaXNwbGF5KQo+ICAgewo+ICAgI2lmIGRlZmluZWQoR0RLX1dJTkRPV0lOR19YMTEpCj4g
ICAgICAgU3BpY2VEaXNwbGF5UHJpdmF0ZSAqZCA9IGRpc3BsYXktPnByaXY7Cj4gQEAgLTI4MDgs
NiArMjgxMCwxNCBAQCBzdGF0aWMgZ2Jvb2xlYW4gc2V0X292ZXJsYXkoU3BpY2VDaGFubmVsICpj
aGFubmVsLCB2b2lkKiBwaXBlbGluZV9wdHIsIFNwaWNlRGlzcAo+ICAgICAgIHJldHVybiBmYWxz
ZTsKPiAgIH0KPgo+ICtzdGF0aWMgZ2Jvb2xlYW4gbWpwZWdfc2V0X292ZXJsYXkoU3BpY2VDaGFu
bmVsICpjaGFubmVsLCBTcGljZURpc3BsYXkgKmRpc3BsYXkpCj4gK3sKPiArICAgIFNwaWNlRGlz
cGxheVByaXZhdGUgKmQgPSBkaXNwbGF5LT5wcml2Owo+ICsgICAgZ193YXJuaW5nKCJTRVQhIik7
CgpTYW1lCgo+ICsgICAgZ3RrX3N0YWNrX3NldF92aXNpYmxlX2NoaWxkX25hbWUoZC0+c3RhY2ss
ICJkcmF3LWFyZWEiKTsKPiArICAgIHJldHVybiB0cnVlOwo+ICt9Cj4gKwo+ICAgc3RhdGljIHZv
aWQgaW52YWxpZGF0ZShTcGljZUNoYW5uZWwgKmNoYW5uZWwsCj4gICAgICAgICAgICAgICAgICAg
ICAgICAgIGdpbnQgeCwgZ2ludCB5LCBnaW50IHcsIGdpbnQgaCwgZ3BvaW50ZXIgZGF0YSkKPiAg
IHsKPiBAQCAtMzE5Miw3ICszMjAyLDkgQEAgc3RhdGljIHZvaWQgY2hhbm5lbF9uZXcoU3BpY2VT
ZXNzaW9uICpzLCBTcGljZUNoYW5uZWwgKmNoYW5uZWwsIFNwaWNlRGlzcGxheSAqZGkKPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgR19DQUxMQkFDSyhzcGljZV9kaXNw
bGF5X3dpZGdldF91cGRhdGVfbW9uaXRvcl9hcmVhKSwKPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgZGlzcGxheSwgR19DT05ORUNUX0FGVEVSIHwgR19DT05ORUNUX1NX
QVBQRUQpOwo+ICAgICAgICAgICBzcGljZV9nX3NpZ25hbF9jb25uZWN0X29iamVjdChjaGFubmVs
LCAiZ3N0LXZpZGVvLW92ZXJsYXkiLAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIEdfQ0FMTEJBQ0soc2V0X292ZXJsYXkpLCBkaXNwbGF5LCBHX0NPTk5FQ1RfQUZURVIp
Owo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEdfQ0FMTEJBQ0soZ3N0
X3NldF9vdmVybGF5KSwgZGlzcGxheSwgR19DT05ORUNUX0FGVEVSKTsKPiArICAgICAgICBzcGlj
ZV9nX3NpZ25hbF9jb25uZWN0X29iamVjdChjaGFubmVsLCAibWpwZWctdmlkZW8tb3ZlcmxheSIs
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgR19DQUxMQkFDSyhtanBl
Z19zZXRfb3ZlcmxheSksIGRpc3BsYXksIEdfQ09OTkVDVF9BRlRFUik7Cj4gICAgICAgICAgIGlm
IChzcGljZV9kaXNwbGF5X2NoYW5uZWxfZ2V0X3ByaW1hcnkoY2hhbm5lbCwgMCwgJnByaW1hcnkp
KSB7Cj4gICAgICAgICAgICAgICBwcmltYXJ5X2NyZWF0ZShjaGFubmVsLCBwcmltYXJ5LmZvcm1h
dCwgcHJpbWFyeS53aWR0aCwgcHJpbWFyeS5oZWlnaHQsCj4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBwcmltYXJ5LnN0cmlkZSwgcHJpbWFyeS5zaG1pZCwgcHJpbWFyeS5kYXRhLCBkaXNw
bGF5KTsKCgpJJ2QgYWxzbyBzdWdnZXN0IGFub3RoZXIgb3B0aW9uIHdoaWNoIGlzIHRvIG5vdCBh
bGxvdyBzd2l0Y2hpbmcgaW50byAKYnVpbHQtaW4KbWpwZWcgaW4gY2FzZSB5b3Ugc3RhcnRlZCB3
aXRoIGdzdHJlYW1lciAoaS5lLiBvbmUgeW91IHN0YXJ0ZWQgd2l0aApnc3RyZWFtZXIgZGVjb2Rl
ciBzdGljayB0byBpdCkuCkkgZ3Vlc3MgaXQgd2lsbCBiZSBzaW1wbGVyIGJ1dCBuZWVkcyB0byBz
ZWUgd2hhdCB0aGlzIHdvdWxkIHJlcXVpcmUuCgpTbmlyLgoKCj4gLS0KPiAyLjIxLjAKPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFNwaWNlLWRldmVs
IG1haWxpbmcgbGlzdAo+IFNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwg
bWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
