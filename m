Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D48405A4E
	for <lists+spice-devel@lfdr.de>; Thu,  9 Sep 2021 17:42:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E69596E8A6;
	Thu,  9 Sep 2021 15:42:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 303 seconds by postgrey-1.36 at gabe;
 Thu, 09 Sep 2021 15:25:53 UTC
Received: from mout.web.de (mout.web.de [212.227.17.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E9D26E88C
 for <spice-devel@lists.freedesktop.org>; Thu,  9 Sep 2021 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1631201151;
 bh=oJbPxj2FZyzce0a7oi/QRFSidQ9eQfQ4/fJ6qmhFTLc=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=O/7lg3yQMRXrbNP/WZPGAs9O1ZYDPG6tRuhiNTfg43sS99m8n7M9qZ6S1DqH9Y8Uz
 tuw6I0RroulBPV6shNJgv7kXu/9pjk4AJfZJektGl0zPKJOMX14+4VIkVwQbv9f3Di
 hL0cB6EMWrcZzBe8WtnbvfA4WNno6OSAkK95l1dk=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [2.202.23.43] ([2.202.23.43]) by web-mail.web.de
 (3c-app-webde-bap22.server.lan [172.19.172.22]) (via HTTP); Thu, 9 Sep 2021
 17:20:48 +0200
MIME-Version: 1.0
Message-ID: <trinity-697d35c4-6479-4924-a2e4-20506bff949c-1631200848204@3c-app-webde-bap22>
From: insodus@web.de
To: spice-devel@lists.freedesktop.org
Content-Type: text/html; charset=UTF-8
Date: Thu, 9 Sep 2021 17:20:48 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:3cV5v02KuhwPa7+JI8/1sEkwZEPyOuG8MbmLGDMA4PEGg0aaOYZWLxniKazHRH94J21Px
 kxJOIDaRhuf+uCW1itC8mwkGH3wevuzWSO42EKmMp8GKJwpCP4DZYq/aRJ+z0xBp+iapZkw8b3El
 LR+6U9TIf1khxcNS2IRM3ynd3bv3x2MVoaHP7Wobjmb4hYfsXjNSDE8ZAODvi7230V6DBjL0pzFA
 RcFnm7CXSujOb3k8QpEdDURNpp6Ic9518ftKiJfnEP5CJPp2YRppbpHnGKTOZumv1GpWCHUBoc+9
 t0=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MVGSEcpGRoI=:6B1ye9T9HMNmxFF+j7L4QF
 FFe0cT25Q8o6NrTRLnsNNZJNurB9yMkPNuR9djE1mVQqiXIWVCcEkHz3F5HsyZsojFa2NrPUx
 go9FMN1qaoBwqKtcBI5d1XIGTBsiLYvrClpWaHGpUwOyls2AdEBwP0SgQE1XLNEYVP2Q4ArZz
 ZKe356REv28JH3x7FpOuGyv/GEqBab6+LmXvN9RRqrwI8T/mvK0NIMy5kIkksXj6B3zKLcwei
 7LjAnmGXpB/4wzCNswuAYehITywkOXjtlkoUo+YmYZNv2RGFHhLuheyeHkSKKDx0xOCecC1sB
 n8hMz6xl+DYGIUdY6BrkMBGimcA3zJrj3HvTqAcb5wpLAtWPszPrkjC2gIWXQ6zxjO0sZwk1q
 vGkWz9pNdbKBqT8rYIwI6XvCuUBgkZOdhdKfIfIGWZCEgSTQ6gc96SHPCZhl1Xg6RvheWCc3W
 Ya8Xd2QEnCQXu+kg5z2MvVok32OjMpx00uwWoI1sg5xFCxy5ge+2BIMZxzy4NrWwq4Gk8aGvT
 pO/1JZAYymXaza4v7j3nCz79pZVppiYh9Hbvl4akFKvJ8ND7bMyfjn11k1T2uD1o6KSpoKz/O
 ILNjEn1H6RCJTGxO84PzgaQofohQfPeW+MpL63xclk+SF6fenXsCRRU/Mr7LbXZqWGjEe+0ZY
 DEk5vWpjmGoHwnaKUVe3u8Eip2B2NiJYhzlP87h2l+XaH4Ol+8hsc7ou8jkQvSNHdEaBT5fEZ
 0aU5Kh66k6cQY27FnI5g3BwOvJV8HmRhIPCMhAW06JRuN8iFBrLwGGUnL3LqnqVkul9dJ66sD
 BmBRbD7
X-Mailman-Approved-At: Thu, 09 Sep 2021 15:42:45 +0000
Subject: [Spice-devel] Has SPICE devlopment stopped?
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div>Hi,</div>

<div>&nbsp;</div>

<div>as stated in [1] SPICE has become deprecated in RHEL. Because it seems that SPICE was mainly devloped by Red Hat I wanted to ask if this means that the development has stopped.</div>

<div>&nbsp;</div>

<div>&nbsp;</div>

<div>&nbsp;</div>

<div>[1] https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html/8.4_release_notes/deprecated_functionality</div></div></body></html>
