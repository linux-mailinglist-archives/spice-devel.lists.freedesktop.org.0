Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B36CDB219F
	for <lists+spice-devel@lfdr.de>; Fri, 13 Sep 2019 16:09:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1AA96F3C6;
	Fri, 13 Sep 2019 14:09:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 465 seconds by postgrey-1.36 at gabe;
 Fri, 13 Sep 2019 14:09:26 UTC
Received: from mail.linuxsystems.it (mail.linuxsystems.it [79.7.78.67])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACBE86F3C6
 for <spice-devel@lists.freedesktop.org>; Fri, 13 Sep 2019 14:09:26 +0000 (UTC)
Received: by mail.linuxsystems.it (Postfix, from userid 33)
 id 951EE20BB8D; Fri, 13 Sep 2019 15:55:52 +0200 (CEST)
To: spice-devel@lists.freedesktop.org
X-PHP-Originating-Script: 0:rcube.php
MIME-Version: 1.0
Date: Fri, 13 Sep 2019 15:55:52 +0200
From: =?UTF-8?Q?Niccol=C3=B2_Belli?= <darkbasic@linuxsystems.it>
Message-ID: <3f6e9905c9111b49b559b2c73cf0b8b4@linuxsystems.it>
X-Sender: darkbasic@linuxsystems.it
User-Agent: Roundcube Webmail/1.1.5
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxsystems.it; 
 s=linuxsystems.it; t=1568382952;
 bh=OwH3U0Cex0v+gKQbBN77dNDF14xLlIPzHQefCYGOza4=;
 h=To:Subject:Date:From:From;
 b=f1OWWDrgko4heQAw0Xsw4LFiw4EsLeqcR2L488GTIeUJTi1BJ49s1wLqNI7LgQtKr
 3TOkd7PI+gSRC+FtUxcu7/lO0Ufp5RfgDjHxIrhd6B17phekwu+0S8Uu50YDQfQlE5
 cM6TxDKcP6veGcJNAcfAD+StIQlv73Zpwg42/b9g=
Subject: [Spice-devel] Running SPICE on ppc64le
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

SGksCklzIHRoZXJlIGFueSByZWFzb24gd2h5IFNwaWNlIGlzIG5vdCBhdmFpbGFibGUgb24gcHBj
NjRsZT8KSSd2ZSByZWFkIHRoZXJlIGFyZSBzdGlsbCBzb21lIGlzc3VlcyB3aXRoIGJpZyBlbmRp
YW4sIGJ1dCB3aGF0J3Mgd3JvbmcgCndpdGggbGl0dGxlIGVuZGlhbj8KSSB3b3VsZCByZWFsbHkg
bG92ZSB0byBiZSBhYmxlIHRvIHVzZSBRWEwgYW5kIGVzcGVjaWFsbHkgVVNCIHJlZGlyZWN0aW9u
IApvbiBteSBSYXB0b3IgQmxhY2tiaXJkIChQb3dlciA5KS4KCkJlc3RzLApOaWNjb2xvJwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBt
YWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
