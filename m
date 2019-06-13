Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F50434BE
	for <lists+spice-devel@lfdr.de>; Thu, 13 Jun 2019 11:40:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6535E89826;
	Thu, 13 Jun 2019 09:40:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 843E989826
 for <spice-devel@lists.freedesktop.org>; Thu, 13 Jun 2019 09:40:21 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>)
 id 1hbME3-0007cX-Ah; Thu, 13 Jun 2019 04:40:56 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>)
 id 1hbMDR-0001qd-Kj; Thu, 13 Jun 2019 11:40:17 +0200
Date: Thu, 13 Jun 2019 11:40:17 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Snir Sheriber <ssheribe@redhat.com>
In-Reply-To: <6afef441-ac5d-36b6-1caa-d8c18b81cd7c@redhat.com>
Message-ID: <alpine.DEB.2.21.1906131124110.13503@amboise.dolphin>
References: <E1haljI-00014m-8z@amboise>
 <6afef441-ac5d-36b6-1caa-d8c18b81cd7c@redhat.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 12 Jun 2019, Snir Sheriber wrote: > Hi,
 > > On 6/11/19
 9:42 PM, Francois Gouget wrote: > > schedule_frame() only pulls frames out
 of GStreamer's pipeline once all > > previous decoded frames have been
 displayed. Thus when the video de [...] 
 Content analysis details:   (-103.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -100 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 0.0 TVD_RCVD_IP            Message was received from an IP address
 1.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fgouget[at]free.fr)
 1.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Type:MIME-Version:References:
 Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GRgXj1+iqxBTCVaGp9nTIgHE65OuCwnMoW17mFiVayg=; b=G8+PT9NdaVb+T6xRYa3sld64h
 TW/rcEMib28eVMZxKA19QdNRWqwwZIVGYMzdl1gVzSL9W8D9OVMOGPGEFBhWDiNNExQmA+YmzKAqp
 KQo17XFI5ZCI0VFOOZ6b1WE2o7I83sWyE7NKXPFDT/8L6dD5wUwPFyn2h6oUImVZCEl68=;
Subject: Re: [Spice-devel] [client] gstreamer: Fix the decoding time when
 not using GstVideoOverlay
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
Cc: Spice Devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gV2VkLCAxMiBKdW4gMjAxOSwgU25pciBTaGVyaWJlciB3cm90ZToKCj4gSGksCj4gCj4gT24g
Ni8xMS8xOSA5OjQyIFBNLCBGcmFuY29pcyBHb3VnZXQgd3JvdGU6Cj4gPiBzY2hlZHVsZV9mcmFt
ZSgpIG9ubHkgcHVsbHMgZnJhbWVzIG91dCBvZiBHU3RyZWFtZXIncyBwaXBlbGluZSBvbmNlIGFs
bAo+ID4gcHJldmlvdXMgZGVjb2RlZCBmcmFtZXMgaGF2ZSBiZWVuIGRpc3BsYXllZC4gVGh1cyB3
aGVuIHRoZSB2aWRlbyBkZWxheQo+IAo+IAo+IElJUkMgd2UgdXNlZCB0byBwdWxsIHdoZW4gc2Ft
cGxlcyBhcnJpdmVkIGJ1dCBpdCB3YXMgY2hhbmdlZCB0byB0aGlzIHNvIAo+IHBlbmRpbmcgZnJh
bWVzIHdpbGwgYmUgcXVldWVkCj4gaW5zaWRlIGdzdHJlYW1lciBhbmQgbGV0IGl0IGRvIHRocm90
dGxpbmcgKG9yIHNvbWV0aGluZyBzaW1pbGFyKQoKSSBzZWUuIEZvciByZWZlcmVuY2UgdGhhdCB3
YXMgY29tbWl0IDg4MzVlNzU3OTIyYy4KVGhhdCdzIGdvaW5nIHRvIG1ha2UgaXQgaGFyZGVyIHRv
IGdldCB0aGUgY29ycmVjdCBkZWNvZGluZyB0aW1lIDotKAoKCj4gPiArc3RhdGljIGdib29sZWFu
IGF0dGFjaF9kZWNvZGVkX3NhbXBsZShTcGljZUdzdERlY29kZXIgKmRlY29kZXIsIEdzdFNhbXBs
ZQo+ICpzYW1wbGUpCj4gPiAgIHsKPiA+IC0gICAgR3N0U2FtcGxlICpzYW1wbGUgPSBnc3RfYXBw
X3NpbmtfcHVsbF9zYW1wbGUoZGVjb2Rlci0+YXBwc2luayk7Cj4gPiAtICAgIGlmIChzYW1wbGUp
IHsKPiA+IC0gICAgICAgIC8vIGFjY291bnQgZm9yIHRoZSBmZXRjaGVkIHNhbXBsZQo+ID4gLSAg
ICAgICAgZGVjb2Rlci0+cGVuZGluZ19zYW1wbGVzLS07Cj4gPiArICAgIEdzdEJ1ZmZlciAqYnVm
ZmVyID0gZ3N0X3NhbXBsZV9nZXRfYnVmZmVyKHNhbXBsZSk7Cj4gPiArICAgIEdMaXN0ICpsID0g
ZmluZF9kZWNvZGVkX2VudHJ5KGRlY29kZXIsIGJ1ZmZlcik7Cj4gPiArICAgIGlmIChsID09IE5V
TEwpIHsKPiA+ICsgICAgICAgIHJldHVybiBGQUxTRTsKPiAKPiAKPiBJcyBpdCBwb3NzaWJsZSB0
byBoYXZlIGEgc2FtcGxlIHdpdGggbm8gbWF0Y2hpbmcgZW50cnk/IGhvdyB0aGlzIHNhbXBsZSAK
PiBpcyB1bnJlZmVkIGluIHRoYXQgY2FzZT8KClRoZXJlJ3MgYSBnc3Rfc2FtcGxlX3VucmVmKHNh
bXBsZSkgbWlzc2luZyBzb21ld2hlcmUuCgoKWy4uLl0KCj4gPiBAQCAtNDI5LDEwICs0MjksMTkg
QEAgc2lua19ldmVudF9wcm9iZShHc3RQYWQgKnBhZCwgR3N0UGFkUHJvYmVJbmZvICppbmZvLCBn
cG9pbnRlciBkYXRhKQpbLi4uXQo+ID4gKyAgICAgICAgLyogQXMgYSBzaWRlLWVmZmVjdCB0aGlz
IHVwZGF0ZXMgdGhlIGRlY29kZXIgc3RhdGlzdGljcyAqLwo+ID4gKyAgICAgICAgR0xpc3QgKmwg
PSBmaW5kX2RlY29kZWRfZW50cnkoZGVjb2RlciwgYnVmZmVyKTsKPiA+ICsKPiA+ICsgICAgICAg
IC8qIERyb3AgYWxsIGVudHJpZXMgdXAgdG8gdGhpcyBvbmUgKi8KPiA+ICsgICAgICAgIHdoaWxl
IChsKSB7Cj4gPiArICAgICAgICAgICAgZnJlZV9nc3RfZnJhbWUoKFNwaWNlR3N0RnJhbWUqKWwt
PmRhdGEpOwo+ID4gKwo+ID4gKyAgICAgICAgICAgIEdMaXN0ICpwID0gbC0+cHJldjsKPiA+ICsg
ICAgICAgICAgICBnX3F1ZXVlX2RlbGV0ZV9saW5rKGRlY29kZXItPmRlY29kaW5nX3F1ZXVlLCBs
KTsKPiA+ICsgICAgICAgICAgICBsID0gcDsKPiA+ICAgIAo+IAo+IAo+IElzbid0IGl0IGRvbmUg
b24gYXR0YWNoX2RlY29kZWRfc2FtcGxlPwoKc2lua19ldmVudF9wcm9iZSgpIGNhbm5vdCBjYWxs
IGF0dGFjaF9kZWNvZGVkX3NhbXBsZSgpIGJlY2F1c2UgYWxsIGl0IApoYXMgaXMgYSBidWZmZXIu
IFRoaXMgaXMgd2h5IGl0IGNhbGxzIGZpbmRfZGVjb2RlZF9lbnRyeSgpIGluc3RlYWQgd2hpY2gg
CmRvZXMgbm90IHJlbW92ZSBvbGRlciBlbnRyaWVzLgoKCj4gQWxzbyB3b3VsZCBiZSBuaWNlIHRv
IHVwZGF0ZSB0aGUgY29tbWVudCBhYm92ZSBzcGljZV9nc3RfZGVjb2Rlcl9xdWV1ZV9mcmFtZQo+
IHdpdGggdGhlIGN1cnJlbnQgZmxvdywgd2lsbCBtYWtlIGl0IGVhc2llciB0byBmb2xsb3cuCgpP
ay4KCgotLSAKRnJhbmNvaXMgR291Z2V0IDxmZ291Z2V0QGNvZGV3ZWF2ZXJzLmNvbT4KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFp
bGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
