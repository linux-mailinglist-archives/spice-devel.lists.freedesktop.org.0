Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EED1481A02
	for <lists+spice-devel@lfdr.de>; Mon,  5 Aug 2019 14:52:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E846489CD9;
	Mon,  5 Aug 2019 12:52:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com
 [IPv6:2607:f8b0:4864:20::d43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 516CE89CD9
 for <spice-devel@lists.freedesktop.org>; Mon,  5 Aug 2019 12:52:42 +0000 (UTC)
Received: by mail-io1-xd43.google.com with SMTP id j5so162900559ioj.8
 for <spice-devel@lists.freedesktop.org>; Mon, 05 Aug 2019 05:52:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D3YBYcEyFAsbuCPytKiSLI6oHHZHOL7VKms1vkJAtLk=;
 b=UynHH9eWIR6KY/cDwhTuIfNSOsg/BFGJ0PpSB4AFxqhfw+1smVZq93iB8faBI1wSnk
 P7glRaTNfRPLYs5znMDfEDoWiNsddSotkcbCyWO1TR6r0fIsQTVnF1Pn8BxB+RcA1deM
 6AZXnSzrpKdGHXz80TSXZfaDcVr9SYJmBYib4ot+HD7e1d6R/GfnN0CH0ux5Vjigq1Aj
 Iee515R/01IRlIkaS2owUCN8FDJusnZO2DtGRWcsDKlRfDOoTRHQ7e5IU4JQSE/8FWCz
 F6f2rJF0otb1xEMLwanJ/IU6y87c14NqobhneA0zN57toeh6SVo/M+AlNhcQY1sRgzOQ
 IBfA==
X-Gm-Message-State: APjAAAWNk94Jao3+9tWYN3hUpnEHGpyUrfSC+32cysybNOmC8gXx2sB7
 ZOL2PV/2WUdsCMwFE2zlkzH8ED6HqS0Wb9oBFPg=
X-Google-Smtp-Source: APXvYqy1IRiWwGxd60+WF1uKMug+RTTl//TKYWVhq/xY57lEzqdL75gTG3GWM/fV4Mh3/+/BIOqHUomTAUh7yXcY6GQ=
X-Received: by 2002:a6b:b593:: with SMTP id
 e141mr12726096iof.203.1565009561539; 
 Mon, 05 Aug 2019 05:52:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190804191624.29235-1-yuri.benditovich@daynix.com>
 <20190804191624.29235-2-yuri.benditovich@daynix.com>
 <2116683883.4696862.1564999080941.JavaMail.zimbra@redhat.com>
 <CAOEp5OeTvOQiy6_n3tgLgkLP4UOnJ2W3Qq3b29mLJitk4BO8EQ@mail.gmail.com>
 <226410254.4719296.1565007428513.JavaMail.zimbra@redhat.com>
In-Reply-To: <226410254.4719296.1565007428513.JavaMail.zimbra@redhat.com>
From: Yuri Benditovich <yuri.benditovich@daynix.com>
Date: Mon, 5 Aug 2019 15:52:27 +0300
Message-ID: <CAOEp5Odc3E4SjdPcmbV_F4GHB7B0w-ET67+9f-paBgw61smdWw@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=D3YBYcEyFAsbuCPytKiSLI6oHHZHOL7VKms1vkJAtLk=;
 b=g754ecEEzFc9iqCFnIk63ZipmnStFIW4fKfLh4xAiMs6g/VEH55HYlQSg4gevD4rQ1
 OZ0+ycq67oy1DOFsso5o6a5qF6ACIxSvk4TeXJ1CCF4jIO7BXEFyWukZdQeDlXJ06xj/
 1T9KK7q54er15lWeulNEayfzkNiflmkgwbgnpF4/vnK8qR/BOn+aJBDs7PRXdjI6q4vC
 DfwPcj7XAQU4WcvUYcy7BaTIWV4oJdx3jjMnZkoYRyQz8q8zKT6xYr1VlhMXh3UelDQ/
 iResWjvPx6ftwEB2IKn/fEVND6QZ+yhPpjfTpcSu4opAOFCYLNcJrC3WIOZ/rS+9Gv6x
 F9/Q==
Subject: Re: [Spice-devel] [spice-gtk v2 1/8] usb-redir: define interfaces
 to support emulated devices
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
Cc: Yan Vugenfirer <yan@daynix.com>,
 Spice List <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gTW9uLCBBdWcgNSwgMjAxOSBhdCAzOjE3IFBNIEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0By
ZWRoYXQuY29tPiB3cm90ZToKPgo+ID4KPiA+IE9uIE1vbiwgQXVnIDUsIDIwMTkgYXQgMTI6NTgg
UE0gRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+IHdyb3RlOgo+ID4gPgo+ID4g
PiA+Cj4gPiA+ID4gU3BpY2VVc2JCYWNrZW5kRGV2aWNlIHN0cnVjdHVyZSBpcyBleHRlbmRlZCB0
byBzdXBwb3J0Cj4gPiA+ID4gYWRkaXRpb25hbCBraW5kIG9mIGRldmljZSB0aGF0IGlzIGVtdWxh
dGVkIGJ5IFNwaWNlLUdUSwo+ID4gPiA+IGFuZCBub3QgcHJlc2VudCBsb2NhbGx5IChhbmQgZG9l
cyBub3QgaGF2ZSBsaWJ1c2JfZGV2aWNlKSwKPiA+ID4gPiBzdWNoIGRldmljZSBoYXMgaW5zdGVh
ZCBwb2ludGVyIHRvIFNwaWNlVXNiRW11bGF0ZWREZXZpY2UKPiA+ID4gPiBhYnN0cmFjdCBzdHJ1
Y3R1cmUuIFNwZWNpZmljIGltcGxlbWVudGF0aW9uIG9mIHN1Y2ggZGV2aWNlCj4gPiA+ID4gZGVw
ZW5kcyBvbiBpdHMgZGV2aWNlIHR5cGUuIEltcGxlbWVudGF0aW9uIG1vZHVsZSB3aWxsIGRlZmlu
ZQo+ID4gPiA+IGNvbnN0cnVjdG9yIGZvciBzcGVjaWZpYyBkZXZpY2UgdHlwZS4KPiA+ID4gPiBE
ZXZpY2Ugc3RydWN0dXJlIGlzIGFic3RyYWN0IGJ1dCBhbHdheXMgc3RhcnRzIGZyb20gdGFibGUg
b2YKPiA+ID4gPiB2aXJ0dWFsIGZ1bmN0aW9ucyByZXF1aXJlZCB0byByZWRpcmVjdCBzdWNoIHZp
cnR1YWwgZGV2aWNlLgo+ID4gPiA+Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogWXVyaSBCZW5kaXRv
dmljaCA8eXVyaS5iZW5kaXRvdmljaEBkYXluaXguY29tPgo+ID4gPiA+IC0tLQo+ID4gPiA+ICBz
cmMvbWVzb24uYnVpbGQgICAgIHwgICAxICsKPiA+ID4gPiAgc3JjL3VzYi1iYWNrZW5kLmMgICB8
IDEwMiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLQo+ID4gPiA+
ICBzcmMvdXNiLWJhY2tlbmQuaCAgIHwgICAzICsrCj4gPiA+ID4gIHNyYy91c2ItZW11bGF0aW9u
LmggfCAgOTEgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiA+ID4g
IDQgZmlsZXMgY2hhbmdlZCwgMTk1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPiA+
ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBzcmMvdXNiLWVtdWxhdGlvbi5oCj4gPiA+ID4KPiA+ID4g
PiBkaWZmIC0tZ2l0IGEvc3JjL21lc29uLmJ1aWxkIGIvc3JjL21lc29uLmJ1aWxkCj4gPiA+ID4g
aW5kZXggYjRhNjg3MC4uZmUxOWMxNiAxMDA2NDQKPiA+ID4gPiAtLS0gYS9zcmMvbWVzb24uYnVp
bGQKPiA+ID4gPiArKysgYi9zcmMvbWVzb24uYnVpbGQKPiA+ID4gPiBAQCAtMTIyLDYgKzEyMiw3
IEBAIHNwaWNlX2NsaWVudF9nbGliX3NvdXJjZXMgPSBbCj4gPiA+ID4gICAgJ3VzYnV0aWwuYycs
Cj4gPiA+ID4gICAgJ3VzYnV0aWwuaCcsCj4gPiA+ID4gICAgJ3VzYi1iYWNrZW5kLmMnLAo+ID4g
PiA+ICsgICd1c2ItZW11bGF0aW9uLmgnLAo+ID4gPiA+ICAgICd1c2ItYmFja2VuZC5oJywKPiA+
ID4gPiAgICAndm1jc3RyZWFtLmMnLAo+ID4gPiA+ICAgICd2bWNzdHJlYW0uaCcsCj4gPiA+ID4g
ZGlmZiAtLWdpdCBhL3NyYy91c2ItYmFja2VuZC5jIGIvc3JjL3VzYi1iYWNrZW5kLmMKPiA+ID4g
PiBpbmRleCAzMzM0ZjU2Li5iZTYwY2YzIDEwMDY0NAo+ID4gPiA+IC0tLSBhL3NyYy91c2ItYmFj
a2VuZC5jCj4gPiA+ID4gKysrIGIvc3JjL3VzYi1iYWNrZW5kLmMKPiA+ID4gPiBAQCAtMzksNiAr
MzksNyBAQAo+ID4gPiA+ICAjaW5jbHVkZSAidXNicmVkaXJwYXJzZXIuaCIKPiA+ID4gPiAgI2lu
Y2x1ZGUgInNwaWNlLXV0aWwuaCIKPiA+ID4gPiAgI2luY2x1ZGUgInVzYi1iYWNrZW5kLmgiCj4g
PiA+ID4gKyNpbmNsdWRlICJ1c2ItZW11bGF0aW9uLmgiCj4gPiA+ID4gICNpbmNsdWRlICJjaGFu
bmVsLXVzYnJlZGlyLXByaXYuaCIKPiA+ID4gPiAgI2luY2x1ZGUgInNwaWNlLWNoYW5uZWwtcHJp
di5oIgo+ID4gPiA+Cj4gPiA+ID4gQEAgLTQ2LDcgKzQ3LDEwIEBACj4gPiA+ID4KPiA+ID4gPiAg
c3RydWN0IF9TcGljZVVzYkJhY2tlbmREZXZpY2UKPiA+ID4gPiAgewo+ID4gPiA+ICsgICAgLyog
UG9pbnRlciB0byBkZXZpY2UuIEVpdGhlciByZWFsIGRldmljZSAobGlidXNiX2RldmljZSkKPiA+
ID4gPiArICAgICAqIG9yIGVtdWxhdGVkIG9uZSAoZWRldikgKi8KPiA+ID4gPiAgICAgIGxpYnVz
Yl9kZXZpY2UgKmxpYnVzYl9kZXZpY2U7Cj4gPiA+ID4gKyAgICBTcGljZVVzYkVtdWxhdGVkRGV2
aWNlICplZGV2Owo+ID4gPiA+ICAgICAgZ2ludCByZWZfY291bnQ7Cj4gPiA+ID4gICAgICBTcGlj
ZVVzYkJhY2tlbmRDaGFubmVsICphdHRhY2hlZF90bzsKPiA+ID4gPiAgICAgIFVzYkRldmljZUlu
Zm9ybWF0aW9uIGRldmljZV9pbmZvOwo+ID4gPiA+IEBAIC02Niw2ICs3MCwxMCBAQCBzdHJ1Y3Qg
X1NwaWNlVXNiQmFja2VuZAo+ID4gPiA+ICAgICAgbGlidXNiX2RldmljZSAqKmxpYnVzYl9kZXZp
Y2VfbGlzdDsKPiA+ID4gPiAgICAgIGdpbnQgcmVkaXJlY3Rpbmc7Cj4gPiA+ID4gICNlbmRpZgo+
ID4gPiA+ICsKPiA+ID4gPiArICAgIC8qIE1hc2sgb2YgYWxsb2NhdGVkIGRldmljZSwgYSBzcGVj
aWZpYyBiaXQgc2V0IHRvIDEgdG8gaW5kaWNhdGUKPiA+ID4gPiB0aGF0Cj4gPiA+ID4gdGhlIGRl
dmljZSBhdAo+ID4gPiA+ICsgICAgICogdGhhdCBhZGRyZXNzIGlzIGFsbG9jYXRlZCAqLwo+ID4g
PiA+ICsgICAgdWludDMyX3Qgb3duX2RldmljZXNfbWFzazsKPiA+ID4gPiAgfTsKPiA+ID4gPgo+
ID4gPiA+ICBzdHJ1Y3QgX1NwaWNlVXNiQmFja2VuZENoYW5uZWwKPiA+ID4gPiBAQCAtNDEzLDYg
KzQyMSw4IEBAIFNwaWNlVXNiQmFja2VuZCAqc3BpY2VfdXNiX2JhY2tlbmRfbmV3KEdFcnJvcgo+
ID4gPiA+ICoqZXJyb3IpCj4gPiA+ID4gICAgICAgICAgbGlidXNiX3NldF9vcHRpb24oYmUtPmxp
YnVzYl9jb250ZXh0LCBMSUJVU0JfT1BUSU9OX1VTRV9VU0JESyk7Cj4gPiA+ID4gICNlbmRpZgo+
ID4gPiA+ICAjZW5kaWYKPiA+ID4gPiArICAgICAgICAvKiBleGNsdWRlIGFkZHJlc3NlcyAwIChy
ZXNlcnZlZCkgYW5kIDEgKHJvb3QgaHViKSAqLwo+ID4gPiA+ICsgICAgICAgIGJlLT5vd25fZGV2
aWNlc19tYXNrID0gMzsKPiA+ID4gPiAgICAgIH0KPiA+ID4gPiAgICAgIFNQSUNFX0RFQlVHKCIl
cyA8PCIsIF9fRlVOQ1RJT05fXyk7Cj4gPiA+ID4gICAgICByZXR1cm4gYmU7Cj4gPiA+ID4gQEAg
LTUyOSw4ICs1MzksMTMgQEAgdm9pZAo+ID4gPiA+IHNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV91
bnJlZihTcGljZVVzYkJhY2tlbmREZXZpY2UgKmRldikKPiA+ID4gPiAgewo+ID4gPiA+ICAgICAg
TE9VRF9ERUJVRygiJXMgPj4gJXAoJWQpIiwgX19GVU5DVElPTl9fLCBkZXYsIGRldi0+cmVmX2Nv
dW50KTsKPiA+ID4gPiAgICAgIGlmIChnX2F0b21pY19pbnRfZGVjX2FuZF90ZXN0KCZkZXYtPnJl
Zl9jb3VudCkpIHsKPiA+ID4gPiAtICAgICAgICBsaWJ1c2JfdW5yZWZfZGV2aWNlKGRldi0+bGli
dXNiX2RldmljZSk7Cj4gPiA+ID4gLSAgICAgICAgTE9VRF9ERUJVRygiJXMgZnJlZWluZyAlcCAo
bGlidXNiICVwKSIsIF9fRlVOQ1RJT05fXywgZGV2LAo+ID4gPiA+IGRldi0+bGlidXNiX2Rldmlj
ZSk7Cj4gPiA+ID4gKyAgICAgICAgaWYgKGRldi0+bGlidXNiX2RldmljZSkgewo+ID4gPiA+ICsg
ICAgICAgICAgICBsaWJ1c2JfdW5yZWZfZGV2aWNlKGRldi0+bGlidXNiX2RldmljZSk7Cj4gPiA+
ID4gKyAgICAgICAgICAgIExPVURfREVCVUcoIiVzIGZyZWVpbmcgJXAgKGxpYnVzYiAlcCkiLCBf
X0ZVTkNUSU9OX18sIGRldiwKPiA+ID4gPiBkZXYtPmxpYnVzYl9kZXZpY2UpOwo+ID4gPiA+ICsg
ICAgICAgIH0KPiA+ID4gPiArICAgICAgICBpZiAoZGV2LT5lZGV2KSB7Cj4gPiA+ID4gKyAgICAg
ICAgICAgIGRldmljZV9vcHMoZGV2LT5lZGV2KS0+dW5yZWFsaXplKGRldi0+ZWRldik7Cj4gPiA+
ID4gKyAgICAgICAgfQo+ID4gPiA+ICAgICAgICAgIGdfZnJlZShkZXYpOwo+ID4gPiA+ICAgICAg
fQo+ID4gPiA+ICB9Cj4gPiA+ID4gQEAgLTgyOSw0ICs4NDQsODcgQEAKPiA+ID4gPiBzcGljZV91
c2JfYmFja2VuZF9jaGFubmVsX2dldF9ndWVzdF9maWx0ZXIoU3BpY2VVc2JCYWNrZW5kQ2hhbm5l
bCAqY2gsCj4gPiA+ID4gICAgICB9Cj4gPiA+ID4gIH0KPiA+ID4gPgo+ID4gPiA+ICt2b2lkIHNw
aWNlX3VzYl9iYWNrZW5kX2RldmljZV9yZXBvcnRfY2hhbmdlKFNwaWNlVXNiQmFja2VuZCAqYmUs
Cj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU3Bp
Y2VVc2JCYWNrZW5kRGV2aWNlICpkZXYpCj4gPiA+ID4gK3sKPiA+ID4gPiArICAgIGdjaGFyICpk
ZXNjOwo+ID4gPiA+ICsgICAgZ19yZXR1cm5faWZfZmFpbChkZXYgJiYgZGV2LT5lZGV2KTsKPiA+
ID4gPiArCj4gPiA+ID4gKyAgICBkZXNjID0gZGV2aWNlX29wcyhkZXYtPmVkZXYpLT5nZXRfcHJv
ZHVjdF9kZXNjcmlwdGlvbihkZXYtPmVkZXYpOwo+ID4gPiA+ICsgICAgU1BJQ0VfREVCVUcoIiVz
OiAlcyIsIF9fRlVOQ1RJT05fXywgZGVzYyk7Cj4gPiA+ID4gKyAgICBnX2ZyZWUoZGVzYyk7Cj4g
PiA+ID4gK30KPiA+ID4gPiArCj4gPiA+Cj4gPiA+IExvb2tzIGxpa2UgdGhpcyBmdW5jdGlvbiBp
cyBqdXN0IGZvciBkZWJ1Z2dpbmcuCj4gPiA+IFdoeSBpbnN0ZWFkIHVzZSBzcGljZV91c2JfYmFj
a2VuZF9kZXZpY2VfZ2V0X2Rlc2NyaXB0aW9uIGluIHVzYi1kZXZpY2UtY2QuYwo+ID4gPiBhbmQg
Y2FsbCBTUElDRV9ERUJVRyBkaXJlY3RseT8KPiA+Cj4gPiB1c2ItZGV2aWNlLWNkLmMgaGFzIG5v
dGhpbmcgdG8gZG8gd2l0aCB0aGlzIGNoYW5nZS4KPiA+IEl0IGlzc3VlcyB0aGUgdXBkYXRlIHRv
IHdob20gaXQgbWlnaHQgYmUgaW1wb3J0YW50Lgo+ID4gQ3VycmVudGx5IGFzIHdlIGRvIG5vdCBo
YXZlIFVJLCBhbHNvIG91dHNpZGUgb2YgdXNiLWRldmljZS1jZC5jIHRoZXJlCj4gPiBpcyBubyBh
Y3Rpb24uCj4gPgo+Cj4gSXQgc291bmRzIGZpbmUuIEkgZm91bmQgdGhlIG5hbWUgbm90IG11Y2gg
bWVhbmluZ2Z1bC4gTG9va2luZyBhdCB0aGUgY29kZQo+IHRoaXMgaXMgYSBzdGF0ZSBjaGFuZ2Ug
KHN0b3Agb3Igc3RhcnQpLCB0aGUgbmFtZSBpbmRpY2F0ZSBhIGdlbmVyaWMKPiAiY2hhbmdlIi4g
TWF5YmUgInNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV9zdGF0ZV9jaGFuZ2VkIiB3b3VsZCBiZSBt
b3JlCj4gbWVhbmluZ2Z1bD8KPgo+ID4gPgo+ID4gPiA+ICt2b2lkIHNwaWNlX3VzYl9iYWNrZW5k
X2RldmljZV9lamVjdChTcGljZVVzYkJhY2tlbmQgKmJlLAo+ID4gPiA+IFNwaWNlVXNiQmFja2Vu
ZERldmljZSAqZGV2KQo+ID4gPiA+ICt7Cj4gPiA+ID4gKyAgICBnX3JldHVybl9pZl9mYWlsKGRl
diAmJiBkZXYtPmVkZXYpOwo+ID4gPiA+ICsKPiA+ID4gPiArICAgIGlmIChiZS0+aG90cGx1Z19j
YWxsYmFjaykgewo+ID4gPiA+ICsgICAgICAgIGJlLT5ob3RwbHVnX2NhbGxiYWNrKGJlLT5ob3Rw
bHVnX3VzZXJfZGF0YSwgZGV2LCBGQUxTRSk7Cj4gPiA+ID4gKyAgICB9Cj4gPiA+ID4gKyAgICBi
ZS0+b3duX2RldmljZXNfbWFzayAmPSB+KDEgPDwgZGV2LT5kZXZpY2VfaW5mby5hZGRyZXNzKTsK
PiA+ID4gPiArCj4gPiA+ID4gKyAgICBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfdW5yZWYoZGV2
KTsKPiA+ID4KPiA+ID4gRnJvbSBteSBleHBlcmltZW50cyBsb29rcyBsaWtlIHRoYXQgcmVmZXJl
bmNlIGNvdW50aW5nIGZvciB0aGVzZQo+ID4gPiBlbXVsYXRlZCBkZXZpY2VzIGFyZSBkaWZmZXJl
bnQgZnJvbSBub3JtYWwgb25lcy4KPiA+ID4gSW4gbm9ybWFsIG9uZXMgdGhlIGRldmljZSBsaXN0
IGluIHVzYiBtYW5hZ2VyIGlzIHRoZSBtYWluIG93bmVyLAo+ID4gPiBmb3IgdGhlc2UgZGV2aWNl
cyB5b3UgaGF2ZSBhbiBhZGRpdGlvbmFsIHJlZmVyZW5jZSB0aGF0IGlzIHJlbW92ZWQKPiA+ID4g
aGVyZS4gU28gaWYgdGhpcyBmdW5jdGlvbiBpcyBub3QgY2FsbGVkIHlvdSBoYXZlIGEgbGVhay4g
QWxzbwo+ID4gPiBpcyB3ZWlyZCB0byBoYXZlIGEgcmVmZXJlbmNlIHdpdGhvdXQgaGF2aW5nIGFu
IGFjdHVhbCBwb2ludGVyLgo+ID4gPiBUaGUgc2FtZSBhcHBseSB0byBvd25fZGV2aWNlc19tYXNr
IGJpdCBjbGVhcmFuY2UgKGFkZGVkIGluIHRoaXMKPiA+ID4gdmVyc2lvbiBvZiB0aGUgcGF0Y2gp
LiBJZiBJIHNldCB0aGUgYml0IGNyZWF0aW5nIGFuIG9iamVjdCBJIGV4cGVjdAo+ID4gPiB0aGUg
Yml0IHRvIGJlIGNsZWFyIGR1cmluZyB0aGUgb2JqZWN0IGRlc3RydWN0aW9uLCBub3QgYW5vdGhl
cgo+ID4gPiBub3QgcmVsYXRlZCBmdW5jdGlvbi4gSSB3cm90ZSBhIHRlc3QgdGhhdCBjYWxsIGlu
IGEgbG9vcCAxMjggdGltZXMKPiA+ID4gY3JlYXRlX2VtdWxhdGVkX2NkIGFuZCBzcGljZV91c2Jf
YmFja2VuZF9kZXZpY2VfdW5yZWYgYW5kIGZhaWxzCj4gPiA+IChodHRwczovL2dpdGxhYi5mcmVl
ZGVza3RvcC5vcmcvZnppZ2xpby9zcGljZS1ndGsvY29tbWl0LzBiYmMwZDg1YjQzYjVkYmNiOTJj
MmEzOTE1YjRiMWM5ZDkyMjhhN2EsCj4gPiA+IHdpbGwgcHJvYmFibHkgZGlzYXBwZWFyIGluIGEg
d2hpbGUpLiBJIHdvdWxkIGV4cGVjdCB0aGlzIHRlc3QgdG8KPiA+ID4gcGFzcyBhbmQgdG8gZGVs
ZXRlIGNvbXBsZXRlbHkgdGhlIG9iamVjdCB3aXRob3V0IGxlYWtzLgo+ID4KPiA+IFRoaXMgaXMg
d3JvbmcgYXBwcm9hY2gsIEkgdGhpbmsuCj4gPiBUaGUgaW50ZXJmYWNlIHNob3VsZCBiZSBjaGFu
Z2VkIGFuZCBzaGFsbCBub3QgcmV0dXJuIHRoZSBvYmplY3QuCj4gPiAoaW5pdGlhbCBpbnRlcmZh
Y2UgcmV0dXJuZWQgYm9vbGVhbikKPiA+IHVzYi1kZXZpY2UtbWFuYWdlciBzaGFsbCByZWNlaXZl
IHRoZSBkZXZpY2Ugb25seSB2aWEgaG90cGx1Zwo+ID4gaW5kaWNhdGlvbiwgcmVmZXJlbmNlIGl0
IGFuZCBkZXJlZiBpdCB3aGVuIGl0IHJlY2VpdmVzIHVucGx1Zy4KPiA+Cj4KPiBUaGF0IG1ha2Ug
c2Vuc2UgYW5kIGJlIG1vcmUgY29oZXJlbnQuIEluIHRoaXMgY2FzZSB0aGUgY2FsbCB0bwo+IHNw
aWNlX3VzYl9iYWNrZW5kX2RldmljZV91bnJlZiBpcyBzdXJlbHkgd3JvbmcgYW5kIHNob3VsZCBi
ZSBtb3ZlZAo+IHRvIHNwaWNlX3VzYl9iYWNrZW5kX2NyZWF0ZV9lbXVsYXRlZF9kZXZpY2UgKGFz
IHN1Z2dlc3RlZCBiZWxvdykKPiB0byBhdm9pZCBsZWFrcyBvciB1c2UtYWZ0ZXItZnJlZS4KPiBJ
IHN0aWxsIHRoaW5rIHRoYXQgYSBhbGxvYy9mcmVlIHRlc3Qgc2hvdWxkIHdvcmsgd2l0aG91dCBj
YWxsaW5nCj4gYSBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfZWplY3QgZnVuY3Rpb24uCgpUaGlz
IHRlc3QgaXMgcHJvYmFibHkgZ29vZCBmb3Igc29tZXRoaW5nIHRoYXQgSSBkbyBub3Qgc2VlLCBi
dXQgaXQgaGFzCm5vdGhpbmcgY29tbW9uIHdpdGggaG93IHRoaW5ncyB3b3JrIGluIHJlYWxpdHku
ClRoZSBtYWluIGRpZmZlcmVuY2Ugd2l0aCBsb2NhbCB1c2IgZGV2aWNlcyAoYW5kIHRoZSByZWFz
b24gd2h5IHRlaApyZWZlcmVuY2luZyBpcyBkb25lIGRpZmZlcmVudGx5KSBpcyB0aGF0IGZvciBs
b2NhbCBkZXZpY2VzIHRoZSBsaXN0IG9mCmV4aXN0aW5nIGRldmljZXMgaXMgYWx3YXlzIG1haW50
YWluZWQgYnkgc29tZWJvZHkuCkxvY2FsIGRldmljZXMgZXhpc3Qgd2l0aG91dCBhbnkgcmVsYXRp
b24gdG8gYmFja2VuZCBvYmplY3Q6IGluIExpbnV4CmxpYnVzYiBtYWludGFpbnMgdGhlIGxpc3Qs
IGluIFdpbmRvd3MgbGlidXNiIGlzIGFibGUgdG8gcmV0dXJuIHRoZQpsaXN0LgpJJ2QgcHJlZmVy
IHRvIGF2b2lkIHRoaXMgY29tcGxpY2F0aW9uIChpLmUuIG1haW50YWluaW5nIGxpc3Qgb2YgYWxs
CnRoZSBlbXVsYXRlZCBkZXZpY2VzKS4KCkFub3RoZXIgb3B0aW9uIGlzIGp1c3QgdG8gY2hhbmdl
IHRoZSB0ZXN0OgpkZXZpY2UgPSBjcmVhdGVfY2RfZGV2aWNlKGJhY2tlbmQsIHBhcmFtcykKc3Bp
Y2VfdXNiX2JhY2tlbmRfZGV2aWNlX2VqZWN0KGJhY2tlbmQsIGRldmljZSkKCj4KPiA+ID4KPiA+
ID4gPiArfQo+ID4gPiA+ICsKPiA+ID4gPiArU3BpY2VVc2JCYWNrZW5kRGV2aWNlKgo+ID4gPiA+
ICtzcGljZV91c2JfYmFja2VuZF9jcmVhdGVfZW11bGF0ZWRfZGV2aWNlKFNwaWNlVXNiQmFja2Vu
ZCAqYmUsCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
U3BpY2VVc2JFbXVsYXRlZERldmljZUNyZWF0ZQo+ID4gPiA+IGNyZWF0ZV9wcm9jLAo+ID4gPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZvaWQgKmNyZWF0ZV9w
YXJhbXMsCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
R0Vycm9yICoqZXJyKQo+ID4gPiA+ICt7Cj4gPiA+ID4gKyAgICBTcGljZVVzYkVtdWxhdGVkRGV2
aWNlICplZGV2Owo+ID4gPiA+ICsgICAgU3BpY2VVc2JCYWNrZW5kRGV2aWNlICpkZXY7Cj4gPiA+
ID4gKyAgICBzdHJ1Y3QgbGlidXNiX2RldmljZV9kZXNjcmlwdG9yICpkZXNjOwo+ID4gPiA+ICsg
ICAgdWludDE2X3QgZGV2aWNlX2Rlc2Nfc2l6ZTsKPiA+ID4gPiArICAgIHVpbnQ4X3QgYWRkcmVz
cyA9IDA7Cj4gPiA+ID4gKwo+ID4gPiA+ICsgICAgaWYgKGJlLT5vd25fZGV2aWNlc19tYXNrID09
IDB4ZmZmZmZmZmYpIHsKPiA+ID4gPiArICAgICAgICBnX3NldF9lcnJvcihlcnIsIFNQSUNFX0NM
SUVOVF9FUlJPUiwgU1BJQ0VfQ0xJRU5UX0VSUk9SX0ZBSUxFRCwKPiA+ID4gPiArICAgICAgICAg
ICAgICAgICAgICBfKCJjYW4ndCBjcmVhdGUgZGV2aWNlIC0gbGltaXQgcmVhY2hlZCIpKTsKPiA+
ID4gPiArICAgICAgICByZXR1cm4gTlVMTDsKPiA+ID4gPiArICAgIH0KPiA+ID4gPiArICAgIGZv
ciAoYWRkcmVzcyA9IDA7IGFkZHJlc3MgPCAzMjsgKythZGRyZXNzKSB7Cj4gPiA+ID4gKyAgICAg
ICAgaWYgKH5iZS0+b3duX2RldmljZXNfbWFzayAmICgxIDw8IGFkZHJlc3MpKSB7Cj4gPiA+ID4g
KyAgICAgICAgICAgIGJyZWFrOwo+ID4gPiA+ICsgICAgICAgIH0KPiA+ID4gPiArICAgIH0KPiA+
ID4gPiArCj4gPiA+ID4gKyAgICBkZXYgPSBnX25ldzAoU3BpY2VVc2JCYWNrZW5kRGV2aWNlLCAx
KTsKPiA+ID4gPiArICAgIGRldi0+ZGV2aWNlX2luZm8uYnVzID0gQlVTX05VTUJFUl9GT1JfRU1V
TEFURURfVVNCOwo+ID4gPiA+ICsgICAgZGV2LT5kZXZpY2VfaW5mby5hZGRyZXNzID0gYWRkcmVz
czsKPiA+ID4gPiArICAgIGRldi0+cmVmX2NvdW50ID0gMTsKPiA+ID4gPiArCj4gPiA+ID4gKyAg
ICBkZXYtPmVkZXYgPSBlZGV2ID0gY3JlYXRlX3Byb2MoYmUsIGRldiwgY3JlYXRlX3BhcmFtcywg
ZXJyKTsKPiA+ID4gPiArICAgIGlmIChlZGV2ID09IE5VTEwpIHsKPiA+ID4gPiArICAgICAgICBz
cGljZV91c2JfYmFja2VuZF9kZXZpY2VfdW5yZWYoZGV2KTsKPiA+ID4gPiArICAgICAgICByZXR1
cm4gTlVMTDsKPiA+ID4gPiArICAgIH0KPiA+ID4gPiArCj4gPiA+ID4gKyAgICBpZiAoIWRldmlj
ZV9vcHMoZWRldiktPmdldF9kZXNjcmlwdG9yKGVkZXYsIExJQlVTQl9EVF9ERVZJQ0UsIDAsCj4g
PiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICh2b2lkICoq
KSZkZXNjLAo+ID4gPiA+ICZkZXZpY2VfZGVzY19zaXplKQo+ID4gPiA+ICsgICAgICAgIHx8IGRl
dmljZV9kZXNjX3NpemUgIT0gc2l6ZW9mKCpkZXNjKSkgewo+ID4gPiA+ICsKPiA+ID4gPiArICAg
ICAgICBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfdW5yZWYoZGV2KTsKPiA+ID4gPiArICAgICAg
ICBnX3NldF9lcnJvcihlcnIsIFNQSUNFX0NMSUVOVF9FUlJPUiwgU1BJQ0VfQ0xJRU5UX0VSUk9S
X0ZBSUxFRCwKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICBfKCJjYW4ndCBjcmVhdGUgZGV2
aWNlIC0gaW50ZXJuYWwgZXJyb3IiKSk7Cj4gPiA+ID4gKyAgICAgICAgcmV0dXJuIE5VTEw7Cj4g
PiA+ID4gKyAgICB9Cj4gPiA+ID4gKwo+ID4gPiA+ICsgICAgYmUtPm93bl9kZXZpY2VzX21hc2sg
fD0gMSA8PCBhZGRyZXNzOwo+ID4gPiA+ICsKPiA+ID4gPiArICAgIGRldi0+ZGV2aWNlX2luZm8u
dmlkID0gZGVzYy0+aWRWZW5kb3I7Cj4gPiA+ID4gKyAgICBkZXYtPmRldmljZV9pbmZvLnBpZCA9
IGRlc2MtPmlkUHJvZHVjdDsKPiA+ID4gPiArICAgIGRldi0+ZGV2aWNlX2luZm8uYmNkVVNCID0g
ZGVzYy0+YmNkVVNCOwo+ID4gPiA+ICsgICAgZGV2LT5kZXZpY2VfaW5mby5jbGFzcyA9IGRlc2Mt
PmJEZXZpY2VDbGFzczsKPiA+ID4gPiArICAgIGRldi0+ZGV2aWNlX2luZm8uc3ViY2xhc3MgPSBk
ZXNjLT5iRGV2aWNlU3ViQ2xhc3M7Cj4gPiA+ID4gKyAgICBkZXYtPmRldmljZV9pbmZvLnByb3Rv
Y29sID0gZGVzYy0+YkRldmljZVByb3RvY29sOwo+ID4gPiA+ICsKPiA+ID4gPiArICAgIGlmIChi
ZS0+aG90cGx1Z19jYWxsYmFjaykgewo+ID4gPiA+ICsgICAgICAgIGJlLT5ob3RwbHVnX2NhbGxi
YWNrKGJlLT5ob3RwbHVnX3VzZXJfZGF0YSwgZGV2LCBUUlVFKTsKPiA+ID4gPiArICAgIH0KPiA+
ID4KPiA+ID4gSGVyZSB0aGUgZGlmZmVyZW5jZSBmcm9tIG5vcm1hbCBkZXZpY2VzLiBJbiBub3Jt
YWwgZGV2aWNlcwo+ID4gPiBob3RwbHVnX2NhbGxiYWNrIGNhbGxiYWNrIGlzIGNhbGxlZCBmcm9t
IGhvdHBsdWdfY2FsbGJhY2sgZnVuY3Rpb24gdGhlbgo+ID4gPiBkZXZpY2UgaXMgcmVsZWFzZWQg
d2l0aCBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfdW5yZWYuIEhlcmUgdGhlCj4gPiA+IGZ1bmN0
aW9uIHJldHVybnMgdGhlIG9iamVjdC4gVGhpcyBwb2ludGVyIGlzIHJldHVybmVkIGJ5IGNyZWF0
ZV9lbXVsYXRlZF9jZAo+ID4gPiB0aGVuIHRoZSBjYWxsZXIgKHNwaWNlX3VzYl9kZXZpY2VfbWFu
YWdlcl9zZXRfcHJvcGVydHkpIGp1c3QgZGlzY2FyZAo+ID4gPiB0aGUgcG9pbnRlci4KPiA+ID4K
PiA+ID4gPiArCj4gPiA+ID4gKyAgICByZXR1cm4gZGV2Owo+ID4gPiA+ICt9Cj4gPiA+ID4gKwo+
ID4gPiA+ICAjZW5kaWYgLyogVVNCX1JFRElSICovCj4gPiA+ID4gZGlmZiAtLWdpdCBhL3NyYy91
c2ItYmFja2VuZC5oIGIvc3JjL3VzYi1iYWNrZW5kLmgKPiA+ID4gPiBpbmRleCA2OWE0OTBiLi42
M2I5MjAyIDEwMDY0NAo+ID4gPiA+IC0tLSBhL3NyYy91c2ItYmFja2VuZC5oCj4gPiA+ID4gKysr
IGIvc3JjL3VzYi1iYWNrZW5kLmgKPiA+ID4gPiBAQCAtMzEsMTIgKzMxLDE1IEBAIHR5cGVkZWYg
c3RydWN0IF9TcGljZVVzYkJhY2tlbmQgU3BpY2VVc2JCYWNrZW5kOwo+ID4gPiA+ICB0eXBlZGVm
IHN0cnVjdCBfU3BpY2VVc2JCYWNrZW5kRGV2aWNlIFNwaWNlVXNiQmFja2VuZERldmljZTsKPiA+
ID4gPiAgdHlwZWRlZiBzdHJ1Y3QgX1NwaWNlVXNiQmFja2VuZENoYW5uZWwgU3BpY2VVc2JCYWNr
ZW5kQ2hhbm5lbDsKPiA+ID4gPgo+ID4gPiA+ICsjZGVmaW5lIEJVU19OVU1CRVJfRk9SX0VNVUxB
VEVEX1VTQiBHX01BWFVJTlQxNgo+ID4gPiA+ICsKPiA+ID4gPiAgdHlwZWRlZiBzdHJ1Y3QgVXNi
RGV2aWNlSW5mb3JtYXRpb24KPiA+ID4gPiAgewo+ID4gPiA+ICAgICAgdWludDE2X3QgYnVzOwo+
ID4gPiA+ICAgICAgdWludDE2X3QgYWRkcmVzczsKPiA+ID4gPiAgICAgIHVpbnQxNl90IHZpZDsK
PiA+ID4gPiAgICAgIHVpbnQxNl90IHBpZDsKPiA+ID4gPiArICAgIHVpbnQxNl90IGJjZFVTQjsK
PiA+ID4gPiAgICAgIHVpbnQ4X3QgY2xhc3M7Cj4gPiA+ID4gICAgICB1aW50OF90IHN1YmNsYXNz
Owo+ID4gPiA+ICAgICAgdWludDhfdCBwcm90b2NvbDsKPiA+ID4gPiBkaWZmIC0tZ2l0IGEvc3Jj
L3VzYi1lbXVsYXRpb24uaCBiL3NyYy91c2ItZW11bGF0aW9uLmgKPiA+ID4gPiBuZXcgZmlsZSBt
b2RlIDEwMDY0NAo+ID4gPiA+IGluZGV4IDAwMDAwMDAuLjllNjI2YTIKPiA+ID4gPiAtLS0gL2Rl
di9udWxsCj4gPiA+ID4gKysrIGIvc3JjL3VzYi1lbXVsYXRpb24uaAo+ID4gPiA+IEBAIC0wLDAg
KzEsOTEgQEAKPiA+ID4gPiArLyogLSotIE1vZGU6IEM7IGMtYmFzaWMtb2Zmc2V0OiA0OyBpbmRl
bnQtdGFicy1tb2RlOiBuaWwgLSotICovCj4gPiA+ID4gKy8qCj4gPiA+ID4gKyAgICBDb3B5cmln
aHQgKEMpIDIwMTkgUmVkIEhhdCwgSW5jLgo+ID4gPiA+ICsKPiA+ID4gPiArICAgIFJlZCBIYXQg
QXV0aG9yczoKPiA+ID4gPiArICAgIFl1cmkgQmVuZGl0b3ZpY2g8eWJlbmRpdG9AcmVkaGF0LmNv
bT4KPiA+ID4gPiArCj4gPiA+ID4gKyAgICBUaGlzIGxpYnJhcnkgaXMgZnJlZSBzb2Z0d2FyZTsg
eW91IGNhbiByZWRpc3RyaWJ1dGUgaXQgYW5kL29yCj4gPiA+ID4gKyAgICBtb2RpZnkgaXQgdW5k
ZXIgdGhlIHRlcm1zIG9mIHRoZSBHTlUgTGVzc2VyIEdlbmVyYWwgUHVibGljCj4gPiA+ID4gKyAg
ICBMaWNlbnNlIGFzIHB1Ymxpc2hlZCBieSB0aGUgRnJlZSBTb2Z0d2FyZSBGb3VuZGF0aW9uOyBl
aXRoZXIKPiA+ID4gPiArICAgIHZlcnNpb24gMi4xIG9mIHRoZSBMaWNlbnNlLCBvciAoYXQgeW91
ciBvcHRpb24pIGFueSBsYXRlciB2ZXJzaW9uLgo+ID4gPiA+ICsKPiA+ID4gPiArICAgIFRoaXMg
bGlicmFyeSBpcyBkaXN0cmlidXRlZCBpbiB0aGUgaG9wZSB0aGF0IGl0IHdpbGwgYmUgdXNlZnVs
LAo+ID4gPiA+ICsgICAgYnV0IFdJVEhPVVQgQU5ZIFdBUlJBTlRZOyB3aXRob3V0IGV2ZW4gdGhl
IGltcGxpZWQgd2FycmFudHkgb2YKPiA+ID4gPiArICAgIE1FUkNIQU5UQUJJTElUWSBvciBGSVRO
RVNTIEZPUiBBIFBBUlRJQ1VMQVIgUFVSUE9TRS4gIFNlZSB0aGUgR05VCj4gPiA+ID4gKyAgICBM
ZXNzZXIgR2VuZXJhbCBQdWJsaWMgTGljZW5zZSBmb3IgbW9yZSBkZXRhaWxzLgo+ID4gPiA+ICsK
PiA+ID4gPiArICAgIFlvdSBzaG91bGQgaGF2ZSByZWNlaXZlZCBhIGNvcHkgb2YgdGhlIEdOVSBM
ZXNzZXIgR2VuZXJhbCBQdWJsaWMKPiA+ID4gPiArICAgIExpY2Vuc2UgYWxvbmcgd2l0aCB0aGlz
IGxpYnJhcnk7IGlmIG5vdCwgc2VlCj4gPiA+ID4gPGh0dHA6Ly93d3cuZ251Lm9yZy9saWNlbnNl
cy8+Lgo+ID4gPiA+ICsqLwo+ID4gPiA+ICsKPiA+ID4gPiArI2lmbmRlZiBfX1NQSUNFX1VTQl9F
TVVMQVRJT05fSF9fCj4gPiA+ID4gKyNkZWZpbmUgX19TUElDRV9VU0JfRU1VTEFUSU9OX0hfXwo+
ID4gPiA+ICsKPiA+ID4gPiArI2luY2x1ZGUgInVzYnJlZGlycGFyc2VyLmgiCj4gPiA+ID4gKyNp
bmNsdWRlICJ1c2ItYmFja2VuZC5oIgo+ID4gPiA+ICsKPiA+ID4gPiArdHlwZWRlZiBzdHJ1Y3Qg
U3BpY2VVc2JFbXVsYXRlZERldmljZSBTcGljZVVzYkVtdWxhdGVkRGV2aWNlOwo+ID4gPiA+ICt0
eXBlZGVmIFNwaWNlVXNiRW11bGF0ZWREZXZpY2UqCj4gPiA+ID4gKygqU3BpY2VVc2JFbXVsYXRl
ZERldmljZUNyZWF0ZSkoU3BpY2VVc2JCYWNrZW5kICpiZSwKPiA+ID4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBTcGljZVVzYkJhY2tlbmREZXZpY2UgKnBhcmVudCwKPiA+ID4g
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB2b2lkICpjcmVhdGVfcGFyYW1zLAo+
ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEdFcnJvciAqKmVycik7Cj4g
PiA+ID4gKwo+ID4gPiA+ICsvKgo+ID4gPiA+ICsgICAgZnVuY3Rpb24gdGFibGUgZm9yIGVtdWxh
dGVkIFVTQiBkZXZpY2UKPiA+ID4gPiArICAgIG11c3QgYmUgZmlyc3QgbWVtYmVyIG9mIGRldmlj
ZSBzdHJ1Y3R1cmUKPiA+ID4gPiArICAgIGFsbCBmdW5jdGlvbnMgYXJlIG1hbmRhdG9yeSBmb3Ig
aW1wbGVtZW50YXRpb24KPiA+ID4gPiArKi8KPiA+ID4gPiArdHlwZWRlZiBzdHJ1Y3QgVXNiRGV2
aWNlT3BzIHsKPiA+ID4gPiArICAgIGdib29sZWFuICgqZ2V0X2Rlc2NyaXB0b3IpKFNwaWNlVXNi
RW11bGF0ZWREZXZpY2UgKmRldmljZSwKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHVpbnQ4X3QgdHlwZSwgdWludDhfdCBpbmRleCwKPiA+ID4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHZvaWQgKipidWZmZXIsIHVpbnQxNl90ICpzaXplKTsKPiA+ID4g
PiArICAgIGdjaGFyICogKCpnZXRfcHJvZHVjdF9kZXNjcmlwdGlvbikoU3BpY2VVc2JFbXVsYXRl
ZERldmljZSAqZGV2aWNlKTsKPiA+ID4gPiArICAgIHZvaWQgKCphdHRhY2gpKFNwaWNlVXNiRW11
bGF0ZWREZXZpY2UgKmRldmljZSwgc3RydWN0IHVzYnJlZGlycGFyc2VyCj4gPiA+ID4gKnBhcnNl
cik7Cj4gPiA+ID4gKyAgICB2b2lkICgqcmVzZXQpKFNwaWNlVXNiRW11bGF0ZWREZXZpY2UgKmRl
dmljZSk7Cj4gPiA+ID4gKyAgICAvKgo+ID4gPiA+ICsgICAgICAgIHByb2Nlc3NpbmcgaXMgc3lu
Y2hyb25vdXMsIGRlZmF1bHQgPSBzdGFsbDoKPiA+ID4gPiArICAgICAgICAtIHJldHVybiBzdWNj
ZXNzIHdpdGhvdXQgZGF0YTogc2V0IHN0YXR1cyB0byAwCj4gPiA+ID4gKyAgICAgICAgLSByZXR1
cm4gZXJyb3IgLSBzZXQgc3RhdHVzIHRvIGVycm9yCj4gPiA+ID4gKyAgICAgICAgLSByZXR1cm4g
c3VjY2VzcyB3aXRoIGRhdGEgLSBzZXQgc3RhdHVzIHRvIDAsCj4gPiA+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHNldCBidWZmZXIgdG8gc29tZSBidWZmZXIKPiA+ID4g
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2V0IGxlbmd0aCB0byBvdXQg
bGVuCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHRydW5jYXRp
b24gaXMgYXV0b21hdGljCj4gPiA+ID4gKyAgICAqLwo+ID4gPiA+ICsgICAgdm9pZCAoKmNvbnRy
b2xfcmVxdWVzdCkoU3BpY2VVc2JFbXVsYXRlZERldmljZSAqZGV2aWNlLAo+ID4gPiA+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgdWludDhfdCAqZGF0YSwgaW50IGRhdGFfbGVuLAo+ID4g
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IHVzYl9yZWRpcl9jb250cm9s
X3BhY2tldF9oZWFkZXIgKmgsCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICB2
b2lkICoqYnVmZmVyKTsKPiA+ID4gPiArICAgIC8qCj4gPiA+ID4gKyAgICAgICAgcHJvY2Vzc2lu
ZyBpcyBzeW5jaHJvbm91czoKPiA+ID4gPiArICAgICAgICAtIHNldCBoLT5zdGF0dXMgdG8gcmVz
dWx0aW5nIHN0YXR1cywgZGVmYXVsdCA9IHN0YWxsCj4gPiA+ID4gKyAgICAqLwo+ID4gPiA+ICsg
ICAgdm9pZCAoKmJ1bGtfb3V0X3JlcXVlc3QpKFNwaWNlVXNiRW11bGF0ZWREZXZpY2UgKmRldmlj
ZSwKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1aW50OF90IGVwLCB1aW50
OF90ICpkYXRhLCBpbnQgZGF0YV9sZW4sCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgdWludDhfdCAqc3RhdHVzKTsKPiA+ID4gPiArICAgIC8qCj4gPiA+ID4gKyAgICAgICAg
aWYgcmV0dXJucyB0cnVlLCBwcm9jZXNzaW5nIGlzIGFzeW5jaHJvbm91cwo+ID4gPiA+ICsgICAg
ICAgIG90aGVyd2lzZSBoZWFkZXIgY29udGFpbnMgZXJyb3Igc3RhdHVzCj4gPiA+ID4gKyAgICAq
Lwo+ID4gPiA+ICsgICAgZ2Jvb2xlYW4gKCpidWxrX2luX3JlcXVlc3QpKFNwaWNlVXNiRW11bGF0
ZWREZXZpY2UgKmRldmljZSwgdWludDY0X3QKPiA+ID4gPiBpZCwKPiA+ID4gPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHN0cnVjdCB1c2JfcmVkaXJfYnVsa19wYWNrZXRfaGVhZGVyCj4g
PiA+ID4gKmJ1bGtfaGVhZGVyKTsKPiA+ID4gPiArICAgIHZvaWQgKCpjYW5jZWxfcmVxdWVzdCko
U3BpY2VVc2JFbXVsYXRlZERldmljZSAqZGV2aWNlLCB1aW50NjRfdCBpZCk7Cj4gPiA+ID4gKyAg
ICB2b2lkICgqZGV0YWNoKShTcGljZVVzYkVtdWxhdGVkRGV2aWNlICpkZXZpY2UpOwo+ID4gPiA+
ICsgICAgdm9pZCAoKnVucmVhbGl6ZSkoU3BpY2VVc2JFbXVsYXRlZERldmljZSAqZGV2aWNlKTsK
PiA+ID4gPiArfSBVc2JEZXZpY2VPcHM7Cj4gPiA+ID4gKwo+ID4gPiA+ICtzdGF0aWMgaW5saW5l
IGNvbnN0IFVzYkRldmljZU9wcyAqZGV2aWNlX29wcyhTcGljZVVzYkVtdWxhdGVkRGV2aWNlCj4g
PiA+ID4gKmRldikKPiA+ID4gPiArewo+ID4gPiA+ICsgICAgcmV0dXJuIChjb25zdCBVc2JEZXZp
Y2VPcHMgKilkZXY7Cj4gPiA+ID4gK30KPiA+ID4gPiArCj4gPiA+ID4gK1NwaWNlVXNiQmFja2Vu
ZERldmljZSoKPiA+ID4gPiArc3BpY2VfdXNiX2JhY2tlbmRfY3JlYXRlX2VtdWxhdGVkX2Rldmlj
ZShTcGljZVVzYkJhY2tlbmQgKmJlLAo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIFNwaWNlVXNiRW11bGF0ZWREZXZpY2VDcmVhdGUKPiA+ID4gPiBjcmVh
dGVfcHJvYywKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB2b2lkICpjcmVhdGVfcGFyYW1zLAo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIEdFcnJvciAqKmVycik7Cj4gPiA+ID4gK3ZvaWQgc3BpY2VfdXNiX2Jh
Y2tlbmRfZGV2aWNlX2VqZWN0KFNwaWNlVXNiQmFja2VuZCAqYmUsCj4gPiA+ID4gU3BpY2VVc2JC
YWNrZW5kRGV2aWNlICpkZXZpY2UpOwo+ID4gPiA+ICt2b2lkIHNwaWNlX3VzYl9iYWNrZW5kX2Rl
dmljZV9yZXBvcnRfY2hhbmdlKFNwaWNlVXNiQmFja2VuZCAqYmUsCj4gPiA+ID4gU3BpY2VVc2JC
YWNrZW5kRGV2aWNlICpkZXZpY2UpOwo+ID4gPiA+ICsKPiA+ID4gPiArI2VuZGlmCj4gPiA+Cj4g
PiA+IEZyZWRpYW5vCj4gPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
c3BpY2UtZGV2ZWw=
