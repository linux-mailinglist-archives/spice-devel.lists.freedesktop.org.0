Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5AF809D0
	for <lists+spice-devel@lfdr.de>; Sun,  4 Aug 2019 09:26:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B97166E1E2;
	Sun,  4 Aug 2019 07:26:24 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE8F16E1E2
 for <spice-devel@lists.freedesktop.org>; Sun,  4 Aug 2019 07:26:22 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id s3so71872415wms.2
 for <spice-devel@lists.freedesktop.org>; Sun, 04 Aug 2019 00:26:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=/v45+wUkTegkuzu8grXLrTdwxIuBdBMX33zsEV/aeG0=;
 b=irWzrW1Ihk1LHadOGYdF4/iBv5JcKsnSw9ZxIEdZkrIN4Wg5dSoZBQhdg4F31SsFL2
 qpRM1O30TyC7FgPBz7qZfUxLLLgLwES5M39DrFC4vTUPhTpuXEwGojnK2co2+ODCj10k
 drMlUgAMPNXqEQ50Ddme+cW6iZCuuKA6wnYNAaYDku7bEPCfkM4Fu5f8P5VVHjkSamlc
 xHkH/OTlFfj50oh1OOlS/Q0OTy/JwjHtGVyvN438dQCIJYw69HaSXRJymZv5sP6DfakB
 FLLUoINXxTeTOJbFxgBaKuKfGS8bXwILpo8ARx7l0fNN14eU8nDvvbXoL3b4TcT8jKTT
 4WNg==
X-Gm-Message-State: APjAAAVMgws9QYuGeDQHJlK4ptbw6x7+YRmBSFOx8TI8qk/wC04kvHct
 FK3yFJHe3TaSaERyZEth8HXPk2Zbll0=
X-Google-Smtp-Source: APXvYqx4kjn9p/k7DvP+gdq8FePTRuQEcYIofIEhB5BO9NR5LVQ1qmVPeQLviZiKrpCjeabqCII9qQ==
X-Received: by 2002:a7b:c251:: with SMTP id b17mr13056401wmj.143.1564903580908; 
 Sun, 04 Aug 2019 00:26:20 -0700 (PDT)
Received: from dhcp-4-93.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id o126sm79326824wmo.1.2019.08.04.00.26.19
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sun, 04 Aug 2019 00:26:20 -0700 (PDT)
From: Snir Sheriber <ssheribe@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
References: <20190801150119.29179-1-ssheribe@redhat.com>
 <20190801150119.29179-3-ssheribe@redhat.com>
 <299479209.4203325.1564673988804.JavaMail.zimbra@redhat.com>
Message-ID: <af71817e-90f8-450f-6d4f-6be3ec23a048@redhat.com>
Date: Sun, 4 Aug 2019 10:26:18 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <299479209.4203325.1564673988804.JavaMail.zimbra@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH spice-streaming-agent 3/4] gst-plugin:
 Free input buffer and XImage as soon as possible
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGksCgoKT24gOC8xLzE5IDY6MzkgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPj4gLS0tCj4+
ICAgc3JjL2dzdC1wbHVnaW4uY3BwIHwgMzEgKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0t
LQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkK
Pj4KPj4gZGlmZiAtLWdpdCBhL3NyYy9nc3QtcGx1Z2luLmNwcCBiL3NyYy9nc3QtcGx1Z2luLmNw
cAo+PiBpbmRleCAwYTFkMDQxLi5jNzQxMmM1IDEwMDY0NAo+PiAtLS0gYS9zcmMvZ3N0LXBsdWdp
bi5jcHAKPj4gKysrIGIvc3JjL2dzdC1wbHVnaW4uY3BwCj4+IEBAIC02Nyw2ICs2NywxNSBAQCBz
dHJ1Y3QgR3N0U2FtcGxlRGVsZXRlciB7Cj4+ICAgCj4+ICAgdXNpbmcgR3N0U2FtcGxlVVB0ciA9
IHN0ZDo6dW5pcXVlX3B0cjxHc3RTYW1wbGUsIEdzdFNhbXBsZURlbGV0ZXI+Owo+PiAgIAo+PiAr
c3RydWN0IEdzdEJ1ZmZlckRlbGV0ZXIgewo+PiArICAgIHZvaWQgb3BlcmF0b3IoKShHc3RCdWZm
ZXIqIHApCj4+ICsgICAgewo+PiArICAgICAgICBnc3RfYnVmZmVyX3VucmVmKHApOwo+PiArICAg
IH0KPj4gK307Cj4+ICsKPj4gK3VzaW5nIEdzdEJ1ZmZlclVQdHIgPSBzdGQ6OnVuaXF1ZV9wdHI8
R3N0QnVmZmVyLCBHc3RCdWZmZXJEZWxldGVyPjsKPj4gKwo+PiAgIGNsYXNzIEdzdHJlYW1lckZy
YW1lQ2FwdHVyZSBmaW5hbCA6IHB1YmxpYyBGcmFtZUNhcHR1cmUKPj4gICB7Cj4+ICAgcHVibGlj
Ogo+PiBAQCAtODYsNyArOTUsNiBAQCBwcml2YXRlOgo+PiAgICAgICBEaXNwbGF5ICpjb25zdCBk
cHk7Cj4+ICAgI2lmIFhMSUJfQ0FQVFVSRQo+PiAgICAgICB2b2lkIHhsaWJfY2FwdHVyZSgpOwo+
PiAtICAgIFhJbWFnZSAqaW1hZ2UgPSBudWxscHRyOwo+PiAgICNlbmRpZgo+PiAgICAgICBHc3RP
YmplY3RVUHRyPEdzdEVsZW1lbnQ+IHBpcGVsaW5lLCBjYXB0dXJlLCBzaW5rOwo+PiAgICAgICBH
c3RTYW1wbGVVUHRyIHNhbXBsZTsKPj4gQEAgLTMwNiwxMiArMzE0LDYgQEAgdm9pZCBHc3RyZWFt
ZXJGcmFtZUNhcHR1cmU6OmZyZWVfc2FtcGxlKCkKPj4gICAgICAgICAgIGdzdF9idWZmZXJfdW5t
YXAoZ3N0X3NhbXBsZV9nZXRfYnVmZmVyKHNhbXBsZS5nZXQoKSksICZtYXApOwo+PiAgICAgICAg
ICAgc2FtcGxlLnJlc2V0KCk7Cj4+ICAgICAgIH0KPj4gLSNpZiBYTElCX0NBUFRVUkUKPj4gLSAg
ICBpZihpbWFnZSkgewo+PiAtICAgICAgICBpbWFnZS0+Zi5kZXN0cm95X2ltYWdlKGltYWdlKTsK
Pj4gLSAgICAgICAgaW1hZ2UgPSBudWxscHRyOwo+PiAtICAgIH0KPj4gLSNlbmRpZgo+PiAgIH0K
Pj4gICAKPj4gICBHc3RyZWFtZXJGcmFtZUNhcHR1cmU6On5Hc3RyZWFtZXJGcmFtZUNhcHR1cmUo
KQo+PiBAQCAtMzI3LDkgKzMyOSwxNCBAQCB2b2lkIEdzdHJlYW1lckZyYW1lQ2FwdHVyZTo6UmVz
ZXQoKQo+PiAgIH0KPj4gICAKPj4gICAjaWYgWExJQl9DQVBUVVJFCj4+ICt2b2lkIGZyZWVfeGlt
YWdlKGdwb2ludGVyIGRhdGEpIHsKPiBicmFja2V0IG9uIG5leHQgbGluZQo+Cj4+ICsgICAgKChY
SW1hZ2UqKWRhdGEpLT5mLmRlc3Ryb3lfaW1hZ2UoKFhJbWFnZSopZGF0YSk7Cj4+ICt9Cj4+ICsK
Pj4gICB2b2lkIEdzdHJlYW1lckZyYW1lQ2FwdHVyZTo6eGxpYl9jYXB0dXJlKCkKPj4gICB7Cj4+
ICAgICAgIGludCBzY3JlZW4gPSBYRGVmYXVsdFNjcmVlbihkcHkpOwo+PiArICAgIFhJbWFnZSAq
aW1hZ2UgPSBudWxscHRyOwo+PiAgIAo+IEkgd291bGQgZGVjbGFyZSArIGluaXRpYWxpemUgb24g
dGhlIHNhbWUgbGluZQoKClN1cmUKCgo+PiAgICAgICBXaW5kb3cgd2luID0gUm9vdFdpbmRvdyhk
cHksIHNjcmVlbik7Cj4+ICAgICAgIFhXaW5kb3dBdHRyaWJ1dGVzIHdpbl9pbmZvOwo+PiBAQCAt
MzU1LDkgKzM2MiwxMSBAQCB2b2lkIEdzdHJlYW1lckZyYW1lQ2FwdHVyZTo6eGxpYl9jYXB0dXJl
KCkKPj4gICAgICAgICAgIHRocm93IHN0ZDo6cnVudGltZV9lcnJvcigiQ2Fubm90IGNhcHR1cmUg
ZnJvbSBYIik7Cj4+ICAgICAgIH0KPj4gICAKPj4gLSAgICBHc3RCdWZmZXIgKmJ1ZjsKPj4gLSAg
ICBidWYgPSBnc3RfYnVmZmVyX25ld193cmFwcGVkKGltYWdlLT5kYXRhLCBpbWFnZS0+aGVpZ2h0
ICoKPj4gaW1hZ2UtPmJ5dGVzX3Blcl9saW5lKTsKPj4gLSAgICBpZiAoIWJ1Zikgewo+PiArICAg
IEdzdEJ1ZmZlclVQdHIgYnVmKGdzdF9idWZmZXJfbmV3X3dyYXBwZWRfZnVsbCgoR3N0TWVtb3J5
RmxhZ3MpMCwKPj4gaW1hZ2UtPmRhdGEsCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGltYWdlLT5oZWlnaHQgKgo+PiBpbWFnZS0+Ynl0ZXNfcGVy
X2xpbmUsIDAsCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGltYWdlLT5oZWlnaHQgKgo+PiBpbWFnZS0+Ynl0ZXNfcGVyX2xpbmUsIGltYWdlLAo+
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBmcmVl
X3hpbWFnZSkpOwo+PiArICAgIGlmICghYnVmLmdldCgpKSB7Cj4+ICAgICAgICAgICB0aHJvdyBz
dGQ6OnJ1bnRpbWVfZXJyb3IoIkZhaWxlZCB0byB3cmFwIGltYWdlIGluIGdzdHJlYW1lcgo+PiAg
ICAgICAgICAgYnVmZmVyIik7Cj4+ICAgICAgIH0KPj4gICAKPj4gQEAgLTM2OSw3ICszNzgsNyBA
QCB2b2lkIEdzdHJlYW1lckZyYW1lQ2FwdHVyZTo6eGxpYl9jYXB0dXJlKCkKPj4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG51bGxwdHIpKTsKPj4gICAKPj4gICAg
ICAgLy8gUHVzaCBzYW1wbGUKPj4gLSAgICBHc3RTYW1wbGVVUHRyIGFwcHNyY19zYW1wbGUoZ3N0
X3NhbXBsZV9uZXcoYnVmLCBjYXBzLmdldCgpLCBudWxscHRyLAo+PiBudWxscHRyKSk7Cj4+ICsg
ICAgR3N0U2FtcGxlVVB0ciBhcHBzcmNfc2FtcGxlKGdzdF9zYW1wbGVfbmV3KGJ1Zi5nZXQoKSwg
Y2Fwcy5nZXQoKSwKPj4gbnVsbHB0ciwgbnVsbHB0cikpOwo+IEknbSBhIGJpdCBjb25mdXNlZCBv
biByZWZlcmVuY2UgY291bnRpbmcgaGVyZS4KPiBUaGUgY2hhbmdlIHNlZW1zIHRvIGluZGljYXRl
IHRoYXQgbm93ICJidWYiIGlzIGZyZWVkIGF1dG9tYXRpY2FsbHkKPiAoYXMgdGhlIHVuaXF1ZV9w
dHIpLgo+IFNvLCBpcyB0aGlzIHBhdGNoIGFsc28gZml4aW5nIGEgbWVtb3J5IGxlYWsgPwoKCklu
ZGVlZCwgZm9yZ290IHRvIG1lbnRpb24sIHRoaXMgd2FzIHVubm90aWNlYWJsZSBpbiBjb21tb24g
dXNhZ2UuCkkgbm90aWNlZCB0aGF0IGxlYWsgb25seSB3aGVuIGkgd29ya2VkIG9uIHRoaXMgcGF0
Y2ggLgoKVGhlIGlzc3VlIGlzIHdpdGggdGhlIHB1c2hfc2FtcGxlIGZ1bmN0aW9uIHdoaWNoIGlu
IG9wcG9zZSB0byBwdXNoX2J1ZmZlciwKZG9lcyBub3QgdGFrZSBvd25lcnNoaXAuCgpTbmlyLgoK
Pj4gICAgICAgaWYgKGdzdF9hcHBfc3JjX3B1c2hfc2FtcGxlKEdTVF9BUFBfU1JDKGNhcHR1cmUu
Z2V0KCkpLAo+PiAgICAgICBhcHBzcmNfc2FtcGxlLmdldCgpKSAhPSBHU1RfRkxPV19PSykgewo+
PiAgICAgICAgICAgdGhyb3cgc3RkOjpydW50aW1lX2Vycm9yKCJnc3RyYW1lciBhcHBzcmMgZWxl
bWVudCBjYW5ub3QgcHVzaAo+PiAgICAgICAgICAgc2FtcGxlIik7Cj4+ICAgICAgIH0KPiBGcmVk
aWFubwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGlj
ZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
