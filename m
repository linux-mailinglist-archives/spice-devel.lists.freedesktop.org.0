Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 814884E172
	for <lists+spice-devel@lfdr.de>; Fri, 21 Jun 2019 09:56:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 142106E821;
	Fri, 21 Jun 2019 07:56:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ua1-f68.google.com (mail-ua1-f68.google.com
 [209.85.222.68])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 009C86E821
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Jun 2019 07:56:28 +0000 (UTC)
Received: by mail-ua1-f68.google.com with SMTP id v20so2695071uao.3
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Jun 2019 00:56:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IbJAK5l7HdF6/q1AeQbgGHAv8N9jSFXyEHrl5uP8358=;
 b=YA3B+VtwZD1LgiHqpDW90nIgK/NBovWjnJFrbcvwoQFWu41lmsYWtE4/TdRdFoN+WN
 E48LqR3bMT03NoX+NUMui1kyCE2eS9trT/PJsouhB2D9SYfhNfJcoWAmSpTDiVxAIO2m
 nQI9wsFb32oyXB4XyEpVm05buBd22ImJUGJ7ICgZJ6BaFqMBXymFfhuCJvPJV94prphI
 g2PrtcEFn1Ba/TGrEfXaugOPuYaKGaa7UXLeCNdfHzr3i9JT+bXNzcwFA8V1nxmIeS1e
 7qX4VzEpwGNYYaqPzsTmYWV5XvnafSSOHG229jTR2mAC2JsK+GxFUvH+Lv2G2cDdQyOS
 lhcA==
X-Gm-Message-State: APjAAAW6MOXFcp0E3yHJXhNpOF8NiwANU+MN6auA0oEldYlGKjDH6pF0
 ZRz1UQ+gPN/H7nt0QoxA78+eQeiqGhfwGT0w/sRTEA==
X-Google-Smtp-Source: APXvYqwsoG4rqgwDWKBsMjJQMbemVZKH9RKVwnvl9CNzOHcjEqLMhtj71HJB/n+RfAwvzDgpN4aIZeibUxoMLv3DsY0=
X-Received: by 2002:ab0:2756:: with SMTP id c22mr27886353uap.22.1561103788103; 
 Fri, 21 Jun 2019 00:56:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190619123042.4822-1-kpouget@redhat.com>
 <e9fcdbfd-cde2-fc91-ce1d-6bfe06d39c4f@redhat.com>
 <CADJ1XR3fh0cyOerSM8VQkpde6cHLb8WccP05Rwr7xWMOK59rog@mail.gmail.com>
 <2139720774.23871724.1561101408712.JavaMail.zimbra@redhat.com>
In-Reply-To: <2139720774.23871724.1561101408712.JavaMail.zimbra@redhat.com>
From: Kevin Pouget <kpouget@redhat.com>
Date: Fri, 21 Jun 2019 09:56:17 +0200
Message-ID: <CADJ1XR3pq78_OCkNkGYnfUJWL+Tet72PZmGOr4gHzMGcDnRvFA@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
Subject: Re: [Spice-devel] [Qemu-devel] [RFC] spice-core: allow setting
 properties from QMP
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
Cc: spice-devel@lists.freedesktop.org, Eric Blake <eblake@redhat.com>,
 qemu-devel@nongnu.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gRnJpLCBKdW4gMjEsIDIwMTkgYXQgOToxNiBBTSBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9A
cmVkaGF0LmNvbT4gd3JvdGU6Cj4KPiA+Cj4gPiBIZWxsbyBFcmljLAo+ID4KPiA+ID4gQSBuZXcg
Y29tbWFuZCBtYXkgYmUgb2theSwgaG93ZXZlciwKPiA+Cj4gPiB0aGFua3MsIEkndmUgZml4IHRo
ZSB0eXBvcyBhbmQgdXBkYXRlZCB0aGUgcGF0Y2ggdG8gdXNlIGFuIEVudW0sIHdoaWNoCj4gPiBp
bmRlZWQgbWFrZXMgbW9yZSBzZW5zZS4KPiA+Cj4gPiBJJ3ZlIGFsc28gdXBkYXRlZCAic3BpY2Ut
cXVlcnkiIGNvbW1hbmQgdG8gcHJvdmlkZSB0aGUgY3VycmVudCB2YWx1ZQo+ID4gb2YgdGhlICJ2
aWRlby1jb2RlYyIgcHJvcGVydHksCj4gPiBidXQgaXQgbWFkZSBtZSB3b25kZXIgaWYgSSBzaG91
bGQgaW1wcm92ZSB0aGlzIFFNUCBpbnRlcmZhY2Ugd2l0aCBhCj4gPiBqc29uIGxpc3QsIG9yIGtl
ZXAgdGhlIGN1cnJlbnQgc3RyaW5nLWJhc2VkIGxpc3QKPiA+ICgiZW5jMTpjb2RlYzE7ZW5jMjpj
b2RlYzIiKS4KPiA+Cj4gPiBJIENDIHRoZSBzcGljZS1kZXZlbCBsaXN0IHRvIGdldCB0aGVpciBw
b2ludCBvZiB2aWV3Cj4gPgo+ID4gVGhlIGN1cnJlbnQgYmVoYXZpb3IgaXM6Cj4gPgo+ID4gLS0+
IHsgImV4ZWN1dGUiOiAic2V0LXNwaWNlIiwgImFyZ3VtZW50cyI6IHsgInByb3BlcnR5IjoKPiA+
ICJ2aWRlby1jb2RlY3MiLCAidmFsdWUiOiAic3BpY2U6bWpwZWc7Z3N0cmVhbWVyOmgyNjQiIH0g
fQo+ID4gPC0tIHsicmV0dXJuIjp7fSwiaWQiOiJsaWJ2aXJ0LTIzIn0KPgo+IEl0IGxvb2tzIGNv
bXBsaWNhdGVkIGZyb20gdGhlIHVzZXIuIFdoeSBub3QganVzdAo+Cj4gLS0+IHsgImV4ZWN1dGUi
OiAic2V0LXNwaWNlIiwgImFyZ3VtZW50cyI6IHsgInZpZGVvLWNvZGVjcyI6ICJzcGljZTptanBl
Zztnc3RyZWFtZXI6aDI2NCIgfSB9CgppdCBtYWtlcyBzZW5zZSBpbmRlZWQsIEkndmUgdXBkYXRl
ZCB0aGUgY29kZToKCiMgLT4geyAiZXhlY3V0ZSI6ICJzZXQtc3BpY2UiLCAiYXJndW1lbnRzIjog
eyAidmlkZW8tY29kZWNzIjogInNwaWNlOm1qcGVnOyIgfQojIDwtIHsgInJldHVybnMiOiB7fSB9
CgoreyAnY29tbWFuZCc6ICdzZXQtc3BpY2UnLAorICAnZGF0YSc6IHsnKnZpZGVvLWNvZGVjcyc6
ICdzdHInfSwKKyAgJ2lmJzogJ2RlZmluZWQoQ09ORklHX1NQSUNFKScgfQoKCi0tLQogcWFwaS91
aS5qc29uICAgIHwgMjcgKysrKysrKysrKysrKysrKysrKysrKysrKy0tCiB1aS9zcGljZS1jb3Jl
LmMgfCAxNyArKysrKysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA0MiBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3FhcGkvdWkuanNvbiBiL3FhcGkvdWku
anNvbgppbmRleCA1OWU0MTIxMzlhLi5jZGJlMDRiZGEwIDEwMDY0NAotLS0gYS9xYXBpL3VpLmpz
b24KKysrIGIvcWFwaS91aS5qc29uCkBAIC0yMTEsMTIgKzIxMSwxNiBAQAogIwogIyBAY2hhbm5l
bHM6IGEgbGlzdCBvZiBAU3BpY2VDaGFubmVsIGZvciBlYWNoIGFjdGl2ZSBzcGljZSBjaGFubmVs
CiAjCisjIEB2aWRlby1jb2RlY3M6IFRoZSBsaXN0IG9mIGVuY29kZXJzOmNvZGVjcyBjdXJyZW50
bHkgYWxsb3dlZCBmb3IKKyMgICAgICAgICAgICAgICAgdmlkZW8gc3RyZWFtaW5nIChzaW5jZTog
Li4uKQorIwogIyBTaW5jZTogMC4xNC4wCiAjIwogeyAnc3RydWN0JzogJ1NwaWNlSW5mbycsCiAg
ICdkYXRhJzogeydlbmFibGVkJzogJ2Jvb2wnLCAnbWlncmF0ZWQnOiAnYm9vbCcsICcqaG9zdCc6
ICdzdHInLAonKnBvcnQnOiAnaW50JywKICAgICAgICAgICAgJyp0bHMtcG9ydCc6ICdpbnQnLCAn
KmF1dGgnOiAnc3RyJywgJypjb21waWxlZC12ZXJzaW9uJzogJ3N0cicsCi0gICAgICAgICAgICdt
b3VzZS1tb2RlJzogJ1NwaWNlUXVlcnlNb3VzZU1vZGUnLCAnKmNoYW5uZWxzJzogWydTcGljZUNo
YW5uZWwnXX0sCisgICAgICAgICAgICdtb3VzZS1tb2RlJzogJ1NwaWNlUXVlcnlNb3VzZU1vZGUn
LCAnKmNoYW5uZWxzJzogWydTcGljZUNoYW5uZWwnXSwKKyAgICAgICAgICAgJ3ZpZGVvLWNvZGVj
cyc6ICdzdHInfSwKICAgJ2lmJzogJ2RlZmluZWQoQ09ORklHX1NQSUNFKScgfQoKICMjCkBAIC0y
NTcsNyArMjYxLDggQEAKICMgICAgICAgICAgICAgICAgInRscyI6IGZhbHNlCiAjICAgICAgICAg
ICAgIH0sCiAjICAgICAgICAgICAgIFsgLi4uIG1vcmUgY2hhbm5lbHMgZm9sbG93IC4uLiBdCi0j
ICAgICAgICAgIF0KKyMgICAgICAgICAgXSwKKyMgICAgICAgICAgInZpZGVvLWNvZGVjcyI6ICJz
cGljZTptanBlZztnc3RyZWFtZXI6aDI2NDsiCiAjICAgICAgIH0KICMgICAgfQogIwpAQCAtMjY1
LDYgKzI3MCwyNCBAQAogeyAnY29tbWFuZCc6ICdxdWVyeS1zcGljZScsICdyZXR1cm5zJzogJ1Nw
aWNlSW5mbycsCiAgICdpZic6ICdkZWZpbmVkKENPTkZJR19TUElDRSknIH0KCisjIworIyBAc2V0
LXNwaWNlOgorIworIyBTZXQgU3BpY2UgcHJvcGVydGllcy4KKyMgQHZpZGVvLWNvZGVjczogdGhl
IDstc2VwYXJhdGVkIGxpc3Qgb2YgdmlkZW8tY29kZWNzIGFsbG93ZWQgZm9yCisjICAgICAgICAg
ICAgICAgIHNwaWNlLXNlcnZlciB2aWRlbyBzdHJlYW1pbmcuCisjCisjIFNpbmNlOiAuLi4KKyMK
KyMgRXhhbXBsZToKKyMKKyMgLT4geyAiZXhlY3V0ZSI6ICJzZXQtc3BpY2UiLCAiYXJndW1lbnRz
IjogeyAidmlkZW8tY29kZWNzIjogInNwaWNlOm1qcGVnOyIgfQorIyA8LSB7ICJyZXR1cm5zIjog
e30gfQorIyMKK3sgJ2NvbW1hbmQnOiAnc2V0LXNwaWNlJywKKyAgJ2RhdGEnOiB7Jyp2aWRlby1j
b2RlY3MnOiAnc3RyJ30sCisgICdpZic6ICdkZWZpbmVkKENPTkZJR19TUElDRSknIH0KKwogIyMK
ICMgQFNQSUNFX0NPTk5FQ1RFRDoKICMKZGlmZiAtLWdpdCBhL3VpL3NwaWNlLWNvcmUuYyBiL3Vp
L3NwaWNlLWNvcmUuYwppbmRleCA2M2U4Njk0ZGY4Li5hNGIyNjViNjYzIDEwMDY0NAotLS0gYS91
aS9zcGljZS1jb3JlLmMKKysrIGIvdWkvc3BpY2UtY29yZS5jCkBAIC01MDYsNiArNTA2LDIxIEBA
IHN0YXRpYyBRZW11T3B0c0xpc3QgcWVtdV9zcGljZV9vcHRzID0gewogICAgIH0sCiB9OwoKK3Zv
aWQgcW1wX3NldF9zcGljZShib29sIGhhc192aWRlb19jb2RlY3MsIGNvbnN0IGNoYXIgKnZpZGVv
X2NvZGVjcywKKyAgICAgICAgICAgICAgICAgICBFcnJvciAqKmVycnApCit7CisgICAgaWYgKGhh
c192aWRlb19jb2RlY3MpIHsKKyAgICAgICAgaW50IGludmFsaWRfY29kZWNzID0gc3BpY2Vfc2Vy
dmVyX3NldF92aWRlb19jb2RlY3Moc3BpY2Vfc2VydmVyLAorICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB2aWRlb19jb2RlY3MpOworCisg
ICAgICAgIGlmIChpbnZhbGlkX2NvZGVjcykgeworICAgICAgICAgICAgZXJyb3Jfc2V0ZyhlcnJw
LCAiRm91bmQgJWQgaW52YWxpZCB2aWRlby1jb2RlY3Mgd2hpbGUgc2V0dGluZyIKKyAgICAgICAg
ICAgICAgICAgICAgICAgIiBzcGljZSBwcm9wZXJ0eSAndmlkZW8tY29kZWM9JXMnIiwgaW52YWxp
ZF9jb2RlY3MsCisgICAgICAgICAgICAgICAgICAgICAgIHZpZGVvX2NvZGVjcyk7CisgICAgICAg
IH0KKyAgICB9Cit9CisKIFNwaWNlSW5mbyAqcW1wX3F1ZXJ5X3NwaWNlKEVycm9yICoqZXJycCkK
IHsKICAgICBRZW11T3B0cyAqb3B0cyA9IFFUQUlMUV9GSVJTVCgmcWVtdV9zcGljZV9vcHRzLmhl
YWQpOwpAQCAtNTU1LDYgKzU3MCw4IEBAIFNwaWNlSW5mbyAqcW1wX3F1ZXJ5X3NwaWNlKEVycm9y
ICoqZXJycCkKICAgICAgICAgICAgICAgICAgICAgICAgU1BJQ0VfUVVFUllfTU9VU0VfTU9ERV9T
RVJWRVIgOgogICAgICAgICAgICAgICAgICAgICAgICBTUElDRV9RVUVSWV9NT1VTRV9NT0RFX0NM
SUVOVDsKCisgICAgaW5mby0+dmlkZW9fY29kZWNzID0gc3BpY2Vfc2VydmVyX2dldF92aWRlb19j
b2RlY3Moc3BpY2Vfc2VydmVyKTsKKwogICAgIC8qIGZvciBjb21wYXRpYmlsaXR5IHdpdGggdGhl
IG9yaWdpbmFsIGNvbW1hbmQgKi8KICAgICBpbmZvLT5oYXNfY2hhbm5lbHMgPSB0cnVlOwogICAg
IGluZm8tPmNoYW5uZWxzID0gcW1wX3F1ZXJ5X3NwaWNlX2NoYW5uZWxzKCk7Ci0tIAoyLjIxLjAK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
