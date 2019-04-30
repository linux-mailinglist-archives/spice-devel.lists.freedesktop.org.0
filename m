Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E5910228
	for <lists+spice-devel@lfdr.de>; Wed,  1 May 2019 00:04:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD17F890DB;
	Tue, 30 Apr 2019 22:04:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A708F890DB
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 22:04:17 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1hLas8-0001Ep-M8; Tue, 30 Apr 2019 17:05:08 -0500
To: Frediano Ziglio <fziglio@redhat.com>
References: <fa91a050-1cc4-9328-ae1c-a3f93f972f7a@codeweavers.com>
 <20170310170101.koz5a34ibtzlusrs@edamame.cdg.redhat.com>
 <421a38b7-755a-4612-3c47-478b84655259@codeweavers.com>
 <1198976237.15717645.1556653646309.JavaMail.zimbra@redhat.com>
From: Jeremy White <jwhite@codeweavers.com>
Message-ID: <4b4ad91c-f062-a8c7-5ce5-98cfbe035957@codeweavers.com>
Date: Tue, 30 Apr 2019 17:04:16 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1198976237.15717645.1556653646309.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gSazwjU0CZxS1zHAg/LTS1sjHKk+rZkc6t2kVf7p5Fg=; b=iylBJiH+cUKqN75F2ZIPaiOt9S
 39kRsVt3z5EZX43e3xWcIiYbQjRYOQOvxMdoSQMeieEAzxKQhiBaAzJ2sA7tqyxluJ0v8TXKdOfi2
 9bcPucz/FsEtsBp6OgutdJlTQwSwVNAcrwvknFO1ARjDMQCb+yNFPt9ByXaY2urriD1Q=;
Subject: Re: [Spice-devel] gtk client side timeouts
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>,
 Christophe Fergeau <cfergeau@redhat.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Pj4gUGluZz8gIFRoaXMgcHJvYmxlbSBwZXJzaXN0cywgYW5kIHRoZSBwYXRjaCBJIHNlbnQgdGhl
bjoKPj4gICAKPj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvYXJjaGl2ZXMvc3BpY2Ut
ZGV2ZWwvYXR0YWNobWVudHMvMjAxNzAzMTAvNjkzOGM2ZGMvYXR0YWNobWVudC5kaWZmCj4+Cj4+
IGhhcyBiZWVuIHdvcmtpbmcgZm9yIHVzIGZvciBhIG51bWJlciBvZiB5ZWFycyB3aXRob3V0IGFu
eSB1bmV4cGVjdGVkCj4+IGNvbnNlcXVlbmNlcy4KPj4KPj4gQ291bGQgSSBzdWJtaXQgdGhpcyBw
YXRjaCBhbmQgd2UgcmVtb3ZlIGl0IHdoZW4gdGhlcmUgaXMgYSBiZXR0ZXIKPj4gc29sdXRpb24g
dGhhdCBhbHNvIHN1cHBvcnRzIFdpbmRvd3M/Cj4+Cj4+IENoZWVycywKPj4KPj4gSmVyZW15Cj4g
Cj4gSSB0aGluayBpdCB3YXMganVzdCBhIG1pc3Rha2UuIFdlIGhhdmUgc2ltaWxhciBjb2RlIGlu
IFNQSUNFIHNlcnZlciBhbmQgdXNicmVkaXIsCj4ganVzdCBwcm9iYWJseSBnb3QgZm9yZ290dGVu
Lgo+IEl0IG5lZWRzIG9ubHkgc29tZSBwb3J0YWJpbGl0eSBlbmhhbmNlbWVudCAoZmlyc3Qgd291
bGQgYmUgVW5peCwgdGhlbiBXaW5kb3dzKS4KPiBDYW4geW91IHNlbmQgYSBwcm9wZXIgcGF0Y2gg
d2l0aCBjb21taXQgbWVzc2FnZT8KCkFjdHVhbGx5LCBpdCBsb29rcyBsaWtlIEkgc2FpZCBJIHdv
dWxkIHRyeSB0byB3b3JrIHVwIHNvbWV0aGluZyBmb3IgCldpbmRvd3MsIHNvIGlmIGFueW9uZSBk
cm9wcGVkIHRoZSBiYWxsLCBsb29rcyBsaWtlIGl0IHdhcyBtZS4KCkknbSBwcmV0dHkgZmFyIHJl
bW92ZWQgZnJvbSBXaW5kb3dzIGRldmVsb3BtZW50IGF0IHRoZSBtb21lbnQsIHNvIEknbGwgCnNl
bmQgYSBMaW51eCBvbmx5IHZlcnNpb24uCgpDaGVlcnMsCgpKZXJlbXkKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0
ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
