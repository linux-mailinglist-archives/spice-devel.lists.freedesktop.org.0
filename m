Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 842921614C3
	for <lists+spice-devel@lfdr.de>; Mon, 17 Feb 2020 15:34:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D246289B42;
	Mon, 17 Feb 2020 14:34:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from fallback13.mail.ru (fallback13.mail.ru [94.100.179.30])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 907026E956
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Feb 2020 13:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tionix.ru;
 s=mailru; 
 h=Content-Type:Message-ID:Reply-To:Date:MIME-Version:Subject:To:From;
 bh=XnzKiv0vsMNE2PBsCSP2gDnXya1DuMsUappnzY1kTmg=; 
 b=hHojKfoWrpjRqihPvicpbRCx/oqXc2YRfaKnegG1ifCuz1trdmxnSlOI7uqmKYvYbee48JWxQNfYEo6XZ9wJ0yZOQpeYmjSpvHF94e2CxdbfZ4yT5jX4wX1QqKTyiijXtgRa/I76f4B8VpCjNh6KLqWOI1Pr9qykACs8BeBrJz8=;
Received: from [10.161.63.39] (port=52288 helo=f416.i.mail.ru)
 by fallback13.m.smailru.net with esmtp (envelope-from <a.fokin@tionix.ru>)
 id 1j3gkz-0006fC-7g
 for spice-devel@lists.freedesktop.org; Mon, 17 Feb 2020 16:48:17 +0300
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tionix.ru;
 s=mailru; 
 h=Content-Type:Message-ID:Reply-To:Date:MIME-Version:Subject:To:From;
 bh=XnzKiv0vsMNE2PBsCSP2gDnXya1DuMsUappnzY1kTmg=; 
 b=hHojKfoWrpjRqihPvicpbRCx/oqXc2YRfaKnegG1ifCuz1trdmxnSlOI7uqmKYvYbee48JWxQNfYEo6XZ9wJ0yZOQpeYmjSpvHF94e2CxdbfZ4yT5jX4wX1QqKTyiijXtgRa/I76f4B8VpCjNh6KLqWOI1Pr9qykACs8BeBrJz8=;
Received: by f416.i.mail.ru with local (envelope-from <a.fokin@tionix.ru>)
 id 1j3gkv-0000PY-TX
 for spice-devel@lists.freedesktop.org; Mon, 17 Feb 2020 16:48:14 +0300
Received: by e.mail.ru with HTTP;
	Mon, 17 Feb 2020 16:48:13 +0300
From: =?UTF-8?B?0JDQvdC00YDQtdC5INCk0L7QutC40L0=?= <a.fokin@tionix.ru>
To: spice-devel@lists.freedesktop.org
MIME-Version: 1.0
X-Mailer: Mail.Ru Mailer 1.0
Date: Mon, 17 Feb 2020 16:48:13 +0300
X-Priority: 3 (Normal)
Message-ID: <1581947293.623135186@f416.i.mail.ru>
X-7564579A: 646B95376F6C166E
X-77F55803: 0A44E481635329DB4E7FAE048FD183FFD32E5E48865217369F97F053F82D9F101F4FDF4019239066FBDBF69DD7E3F5389C9D419462F1C964E7A692373A5BE05DA7030C685748A5F7B17BED7E0A75B51E
X-7FA49CB5: 70AAF3C13DB7016878DA827A17800CE7EFA43C5A6473B3CCD82A6BABE6F325AC9EB98D58427B1C2ABCF491FFA38154B613377AFFFEAFD269A417C69337E82CC2BCF491FFA38154B6C8A9BA7A39EFB7666BA297DBC24807EAC2A783ECEC0211AD725E5C173C3A84C3DA95F4272EC83468C2A783ECEC0211ADC4224003CC836476D1DB134E79BD61627866D6147AF826D8581FC2B7298C03B5030EC9969BADB459117882F4460429724CE54428C33FAD305F5C1EE8F4F765FCC908CD1B87A134A2A471835C12D1D9774AD6D5ED66289B524E70A05D1297E1BBF6B57BC7E64490611E7FA7ABCAF51C92176DF2183F8FC7C045A75973B56231AD8941B15DA834481F5571747095F342E857739F23D657EF2BD5E8D9A59859A8B62CFFCC7B69C47339089D37D7C0E48F6C5571747095F342E857739F23D657EF2B6825BDBE14D8E702E4EE3A04994FF497E5BFE6E7EFDEDCD789D4C264860C145E
X-D57D3AED: Y8kq8+OzVoxvgW9Op3aR8E98oNK9gy3Irm5KFwLuDg60je4lC+GbTj0M8KbzpOmgsB7wYP6nnel8wfEHQiZAehdkEk+dXNIMi+RQCqhKSRe/1RPDD+VykQ==
X-Mailru-Sender: B28493C5912EC3A5E132B4BF8AD375034AC283BD2D1FD17B80DADE4B61A702D05D7D8BE34DE6F821357C676970C57ECD7903AA853BEC14D6C59BF0EFCE12EDA3464B2F1BE97140222AA3CDD27765A5664357EE2BBBD6A2654211C48CEF36B4E53E1474EBCA2FBADEED14614B50AE0675
X-Mras: Ok
X-Spam: undefined
X-7564579A: EEAE043A70213CC8
X-77F55803: 669901E4625912A97F9F52485CB584D7271FD7DF62800FDC6F3C4CDBF277548B8E762AC5D21904BFE71AB8B46BA3B8818909A85797C00ECC
X-7FA49CB5: 0D63561A33F958A590BD600F82D0B180A6D4F48746F59234CE71B7B718F3AA088941B15DA834481FA18204E546F3947CFA486DC37A503D0BF6B57BC7E64490618DEB871D839B7333395957E7521B51C2545D4CF71C94A83E9FA2833FD35BB23D27C277FBC8AE2E8B55D5BE2F85BDEC5FA471835C12D1D977C4224003CC836476C0CAF46E325F83A522CA9DD8327EE4930A3850AC1BE2E7354E672349037D5FA5C4224003CC836476C0CAF46E325F83A50BF2EBBBDD9D6B0F8DB212830C5B42F72623479134186CDE6BA297DBC24807EABDAD6C7F3747799A
X-D57D3AED: Y8kq8+OzVoxvgW9Op3aR8E98oNK9gy3Irm5KFwLuDg60je4lC+GbTj0M8KbzpOmgsB7wYP6nnel8wfEHQiZAehdkEk+dXNIMi+RQCqhKSRetG2FGKaOmHA==
X-Mailru-MI: 800
X-Mras: Ok
X-Mailman-Approved-At: Mon, 17 Feb 2020 14:34:36 +0000
Subject: [Spice-devel] =?utf-8?q?Spice_sreaming_service?=
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
Reply-To: =?UTF-8?B?0JDQvdC00YDQtdC5INCk0L7QutC40L0=?= <a.fokin@tionix.ru>
Content-Type: multipart/mixed; boundary="===============0566535888=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0566535888==
Content-Type: multipart/alternative;
	boundary="--ALT--S3MWw7sVIlPGwnuiIT5VLrq0EHk1Vc3R1581947293"


----ALT--S3MWw7sVIlPGwnuiIT5VLrq0EHk1Vc3R1581947293
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

CkNvbGxlYWd1ZXMsIGluIGNhc2Ugb2YgdXNpbmcgc3BpY2UgZm9yIFZESSBpcyBwb3NzaWJsZQpm
cm9tIFZNIHJlZGVyaWN0IHZpZGVvIHN0cmVhbSBpbnRvIHNwaWNlIHNlcnZlciB0b3dhcmRzIGRl
bW9uc3RyYXRlIGl0IG9uIHRoaW4gY2xpZW50IChjb25uZWN0ZWQgYnkgc3BpY2UpPwoKLS0gCkFu
ZHJleSBGb3g=

----ALT--S3MWw7sVIlPGwnuiIT5VLrq0EHk1Vc3R1581947293
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

CjxIVE1MPjxCT0RZPjxicj5Db2xsZWFndWVzLCBpbiBjYXNlIG9mIHVzaW5nIHNwaWNlIGZvciBW
REkgaXMgcG9zc2libGU8YnI+ZnJvbSBWTSByZWRlcmljdCB2aWRlbyBzdHJlYW0gaW50byBzcGlj
ZSBzZXJ2ZXIgdG93YXJkcyBkZW1vbnN0cmF0ZSBpdCBvbiB0aGluIGNsaWVudCAoY29ubmVjdGVk
IGJ5IHNwaWNlKT88YnI+PGJyPi0tIDxicj5BbmRyZXkgRm94PC9CT0RZPjwvSFRNTD4K

----ALT--S3MWw7sVIlPGwnuiIT5VLrq0EHk1Vc3R1581947293--

--===============0566535888==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0566535888==--
