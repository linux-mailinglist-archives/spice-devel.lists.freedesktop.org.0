Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E429B52230
	for <lists+spice-devel@lfdr.de>; Tue, 25 Jun 2019 06:38:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2C3A89E52;
	Tue, 25 Jun 2019 04:38:15 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E6EE89E52
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 04:38:14 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>)
 id 1hfdED-00056G-1L; Mon, 24 Jun 2019 23:38:45 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>)
 id 1hfdDf-0001E0-AT; Tue, 25 Jun 2019 06:38:11 +0200
Date: Tue, 25 Jun 2019 06:38:11 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Uri Lublin <uril@redhat.com>
In-Reply-To: <169acd6d-7975-ed5b-8a21-92e65327eeac@redhat.com>
Message-ID: <alpine.DEB.2.21.1906250626260.1260@amboise.dolphin>
References: <E1hbwUR-0004mE-Po@amboise>
 <568413630.22912285.1560599988559.JavaMail.zimbra@redhat.com>
 <169acd6d-7975-ed5b-8a21-92e65327eeac@redhat.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 17 Jun 2019, Uri Lublin wrote: > On 6/15/19 2:59 PM, 
 Frediano Ziglio wrote: > >> > >> This constant fits in a 32 bit signed integer
 so it does not need the > >> suffix. However some of the derived constants
 don't so use an uint64_t [...] 
 Content analysis details:   (-103.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -100 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 0.0 TVD_RCVD_IP            Message was received from an IP address
 1.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 1.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fgouget[at]free.fr)
 0.0 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Type:MIME-Version:References:
 Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AtqEYkzEdUg8TlzKvH+KrHHpU6+oPhO0rAXnUufd964=; b=nMC9kI+qXnow5JEV+6NB+9x2q
 /nHTCWadoFbfzuvJ6HmbO9osYqpb3FLoyep9NC06/9jI3nu6XNQVJweBlK41ilQhXSVsNaShSv9kI
 A2KQCUXuq6Zi/EetQICggv/f4cYJBJEgmAZq68w19huHfV0MG6SpAyP0MpoA5iu8RdQTw=;
Subject: Re: [Spice-devel] [spice v3] utils: Remove the LL suffix from
 NSEC_PER_SEC
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
Cc: Spice devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gTW9uLCAxNyBKdW4gMjAxOSwgVXJpIEx1YmxpbiB3cm90ZToKCj4gT24gNi8xNS8xOSAyOjU5
IFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gPj4KPiA+PiBUaGlzIGNvbnN0YW50IGZpdHMg
aW4gYSAzMiBiaXQgc2lnbmVkIGludGVnZXIgc28gaXQgZG9lcyBub3QgbmVlZCB0aGUKPiA+PiBz
dWZmaXguIEhvd2V2ZXIgc29tZSBvZiB0aGUgZGVyaXZlZCBjb25zdGFudHMgZG9uJ3Qgc28gdXNl
IGFuIHVpbnQ2NF90Cj4gPj4gY2FzdCB0byBhdm9pZCB0aGUgbG9uZyB2cyBsb25nIGxvbmcgY29u
ZnVzaW9uIChzdWNoIGFzIGluIHByaW50Cj4gPj4gc3RhdGVtZW50cykuCj4gPj4gQWxzbyBzb21l
IG9mIHRoZSBleHByZXNzaW9ucyB0aGVzZSBjb25zdGFudHMgYXJlIHVzZWQgaW4gbWF5IG92ZXJm
bG93IHNvCj4gPj4gcGVyZm9ybSB0aGUgYXBwcm9wcmlhdGUgY2FzdHMgaW4gdGhvc2UgbG9jYXRp
b25zLiBUaGlzIG1ha2VzIGl0IGNsZWFyZXIKPiA+PiB0aGF0IHRoZXNlIG9wZXJhdGlvbnMgYXJl
IDY0IGJpdC4KPiA+Pgo+ID4+IFNpZ25lZC1vZmYtYnk6IEZyYW5jb2lzIEdvdWdldCA8ZmdvdWdl
dEBjb2Rld2VhdmVycy5jb20+Cj4gPiAKPiA+IGFjayBmb3IgbWUsIHdhaXRpbmcgVXJpIHRvIGNv
bmZpcm0KPiAKPiBIb25lc3RseSwgSSBkbyBub3Qgc2VlIHRoZSB2YWx1ZSBvZiBtYWtpbmcgTlNF
Q19QRVJfU0VDIGEgMzJiaXQgaW50ZWdlci4KPiBNb3N0IG9mIGl0cyB1c2FnZSBpcyBpbiA2NGJp
dCBleHByZXNzaW9ucy4KCkl0J3Mgbm90IGEgMzIgYml0IHZzLiA2NCBiaXQgaXNzdWUuIEl0J3Mg
YSBsb25nIHZzLiBsb25nIGxvbmcgb25lLgoKV2hlbmV2ZXIgTlNFQ19QRVJfTUlMTElTRUMgb3Ig
TlNFQ19QRVJfU0VDIGFyZSB1c2VkIGluIGEgc3BpY2VfZGVidWcoKSAKcGFyYW1ldGVyIG9uZSBj
YW5ub3QgdXNlICV1IG9yICVsdSBhcyB0aGUgZm9ybWF0LiBCdXQgbm90IHNvIGZvciAKTlNFQ19Q
RVJfTUlDUk9TRUMgb3IgTVNFQ19QRVJfU0VDLiBUaGlzIGlzIGluY29uc2lzdGVudCBzbyB0aGF0
IHRpbWluZyAKdHJhY2VzIHJlcXVpcmUgbG90cyBvZiBndWVzc2luZyBhbmQgcmVjb21waWxhdGlv
bnMuCgoKLS0gCkZyYW5jb2lzIEdvdWdldCA8ZmdvdWdldEBjb2Rld2VhdmVycy5jb20+CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBt
YWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
