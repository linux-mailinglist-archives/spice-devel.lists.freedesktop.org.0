Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C3AB3671
	for <lists+spice-devel@lfdr.de>; Mon, 16 Sep 2019 10:36:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C47FE6E177;
	Mon, 16 Sep 2019 08:36:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.linuxsystems.it (mail.linuxsystems.it [79.7.78.67])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B01496E177
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Sep 2019 08:36:35 +0000 (UTC)
Received: by mail.linuxsystems.it (Postfix, from userid 33)
 id 9BD9920BB9B; Mon, 16 Sep 2019 10:30:42 +0200 (CEST)
To: Frediano Ziglio <fziglio@redhat.com>
X-PHP-Originating-Script: 0:rcube.php
MIME-Version: 1.0
Date: Mon, 16 Sep 2019 10:30:42 +0200
From: =?UTF-8?Q?Niccol=C3=B2_Belli?= <darkbasic@linuxsystems.it>
In-Reply-To: <539543765.76418.1568620402733.JavaMail.zimbra@redhat.com>
References: <3f6e9905c9111b49b559b2c73cf0b8b4@linuxsystems.it>
 <539543765.76418.1568620402733.JavaMail.zimbra@redhat.com>
Message-ID: <6be70c3dce8a4beaa49e88f6f35a20d0@linuxsystems.it>
X-Sender: darkbasic@linuxsystems.it
User-Agent: Roundcube Webmail/1.1.5
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxsystems.it; 
 s=linuxsystems.it; t=1568622642;
 bh=KHUa2SF3mJG0N1ZPC/kLXml9QsNRvYlZ/OnhsxyUgPw=;
 h=To:Subject:Date:From:Cc:In-Reply-To:References:From;
 b=mBmIDqw8q7JEcc5ddh8sZPznnKoseiYt3isTj8GKpxEvO9I8J/s/ZnCsJqFojv9Jh
 HCKf4KXEA0jT1JwVf9Zfc8VaoGAT3+HkFfZQ9+e8/4/31S44gxEU0Jr9jnUMsTzHwx
 PetTQyyKhvgWmlV4DF8hRulCmC0IVLxlfA/uo9OE=
Subject: Re: [Spice-devel] Running SPICE on ppc64le
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

VGhlIGZ1bm55IHBhcnQgaXMgdGhhdCBJJ20gKm5vdCogb24gQmlnIEVuZGlhbiwgbXkgcHBjNjQg
cnVucyBMaXR0bGUgCkVuZGlhbiBGZWRvcmEuCkZvciBzb21lIHJlYXNvbiBzcGljZSAoYW5kIFFY
TCBhcHBhcmVudGx5KSBkb24ndCBnZXQgY29tcGlsZWQgb24gCnBwYzY0bGU6IGFyZSB5b3Ugc3Vn
Z2VzdGluZyB0aGF0IGlmIEkgc29tZWhvdyBlbmFibGUgaXQgYXQgY29tcGlsYXRpb24gCnRpbWUg
dGhlbiBpdCBzaG91bGQgd29yayBvdXQgb2YgdGhlIGJveD8KSWYgc28sIHdoeSBkaWQgRmVkb3Jh
IGRpc2FibGUgaXQ/CgpOaWNjb2xvJwoKSWwgMjAxOS0wOS0xNiAwOTo1MyBGcmVkaWFubyBaaWds
aW8gaGEgc2NyaXR0bzoKPj4gSGksCj4+IElzIHRoZXJlIGFueSByZWFzb24gd2h5IFNwaWNlIGlz
IG5vdCBhdmFpbGFibGUgb24gcHBjNjRsZT8KPj4gSSd2ZSByZWFkIHRoZXJlIGFyZSBzdGlsbCBz
b21lIGlzc3VlcyB3aXRoIGJpZyBlbmRpYW4sIGJ1dCB3aGF0J3MgCj4+IHdyb25nCj4+IHdpdGgg
bGl0dGxlIGVuZGlhbj8KPj4gSSB3b3VsZCByZWFsbHkgbG92ZSB0byBiZSBhYmxlIHRvIHVzZSBR
WEwgYW5kIGVzcGVjaWFsbHkgVVNCIAo+PiByZWRpcmVjdGlvbgo+PiBvbiBteSBSYXB0b3IgQmxh
Y2tiaXJkIChQb3dlciA5KS4KPj4gCj4+IEJlc3RzLAo+PiBOaWNjb2xvJwo+IAo+IFNQSUNFIGRv
ZXMgbm90IG1lYW4gUVhMLCB5b3UgY2FuIHVzZSBTUElDRSB3aXRob3V0IFFYTC4KPiBXaHkgUVhM
IGlzIG5vdCBjb21waWxlZCBmb3IgUFBDIEkgaGF2ZSBubyBpZGVhLgo+IFJlY2VudGx5IHRoZXJl
IHdlcmUgcXVpdGUgc29tZSBjb21wYXRpYmlsaXR5IHBhdGNoZXMgZm9yIGJpZyBlbmRpYW4gCj4g
bWFjaGluZXMsCj4gc2hvdWxkIHdvcmsgbW9zdGx5IG91dCBvZiB0aGUgYm94IChJIGhhdmUgb25s
eSBzb21lIG1pbm9yIHBhdGNoZXMgZm9yCj4gdGhlIGFnZW50KS4KPiBPZmZpY2lhbGx5IG9ubHkg
eDY0IGFuZCB4ODYgYXJlIHN1cHBvcnRlZC4KPiAKPiBGcmVkaWFubwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0
ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
