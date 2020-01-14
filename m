Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD6513AAF0
	for <lists+spice-devel@lfdr.de>; Tue, 14 Jan 2020 14:26:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A93FC6E3AE;
	Tue, 14 Jan 2020 13:26:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 2166 seconds by postgrey-1.36 at gabe;
 Tue, 14 Jan 2020 12:01:48 UTC
Received: from fallback25.mail.ru (fallback25.m.smailru.net [94.100.189.1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBA016E391
 for <spice-devel@lists.freedesktop.org>; Tue, 14 Jan 2020 12:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tionix.ru;
 s=mailru; 
 h=Content-Type:Message-ID:Reply-To:Date:MIME-Version:Subject:To:From;
 bh=kxNQuQ+b+DgtfCgJ7WLcjT5kWxNNXsRFedLrMhc8zHk=; 
 b=Q2tCubG7IJuRfl5BkzkcKggyjkamdvL3D0xvYq5H+sNZgqvBgdnZ2J+WYrv4BxD1lFGjr2pmk7r49fjso5Jyu8xbDA2Loc1cTxRHau7SGtfifbiK5ppSlaw305BO0kYDJbj9mykxK4A8Ak4r0ZfadrIJaDL+IgVPxEx2m+9RISY=;
Received: from [10.161.244.17] (port=59032 helo=f153.i.mail.ru)
 by fallback25.m.smailru.net with esmtp (envelope-from <a.fokin@tionix.ru>)
 id 1irKKJ-0000Jv-HA
 for spice-devel@lists.freedesktop.org; Tue, 14 Jan 2020 14:25:39 +0300
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tionix.ru;
 s=mailru; 
 h=Content-Type:Message-ID:Reply-To:Date:MIME-Version:Subject:To:From;
 bh=kxNQuQ+b+DgtfCgJ7WLcjT5kWxNNXsRFedLrMhc8zHk=; 
 b=Q2tCubG7IJuRfl5BkzkcKggyjkamdvL3D0xvYq5H+sNZgqvBgdnZ2J+WYrv4BxD1lFGjr2pmk7r49fjso5Jyu8xbDA2Loc1cTxRHau7SGtfifbiK5ppSlaw305BO0kYDJbj9mykxK4A8Ak4r0ZfadrIJaDL+IgVPxEx2m+9RISY=;
Received: by f153.i.mail.ru with local (envelope-from <a.fokin@tionix.ru>)
 id 1irKKG-0007oA-FP
 for spice-devel@lists.freedesktop.org; Tue, 14 Jan 2020 14:25:36 +0300
Received: by e.mail.ru with HTTP;
	Tue, 14 Jan 2020 14:25:36 +0300
From: =?UTF-8?B?0JDQvdC00YDQtdC5INCk0L7QutC40L0=?= <a.fokin@tionix.ru>
To: spice-devel@lists.freedesktop.org
MIME-Version: 1.0
X-Mailer: Mail.Ru Mailer 1.0
Date: Tue, 14 Jan 2020 14:25:36 +0300
X-Priority: 3 (Normal)
Message-ID: <1579001136.388600368@f153.i.mail.ru>
X-7564579A: B8F34718100C35BD
X-77F55803: 0A44E481635329DB4E7FAE048FD183FF179C3E6C7981FFF25DA55F128635C035E05211D2908B3754FBDBF69DD7E3F53898B3AEBF883622AB100822D98A5ECD08A3B182EBA9EAC63C38A3F0BA8D13BF4A
X-7FA49CB5: 70AAF3C13DB7016878DA827A17800CE73A36A609610B6DB9D82A6BABE6F325ACA01ED31736435A1FBFD28B28ED4578739E625A9149C048EE1A5664EFDEB78079B237B30BB4E08982B287FD4696A6DC2FA8DF7F3B2552694A4E2F5AFA99E116B42401471946AA11AF33D20328B0833260D6AE5EDF9DDECFEF8F08D7030A58E5AD6BA297DBC24807EAA9D420A4CFB5DD3E83ACD1F88AEF066448AB0CBA05885646283AE86C4C88B0A98941B15DA834481FA18204E546F3947CED96AA85C75E140D117882F4460429724CE54428C33FAD30A8DF7F3B2552694A4A5EC4583E1CDF108941B15DA834481F8AA50765F79006375FFD5C25497261569FA2833FD35BB23DF004C906525384306FED454B719173D6725E5C173C3A84C315AF0D0D4FC4FA3D3D59F66E6490B89D25A4AB119743A3B3C4224003CC836476C0CAF46E325F83A50BF2EBBBDD9D6B0F8DB212830C5B42F72623479134186CDE6BA297DBC24807EABDAD6C7F3747799A
X-Mailru-Sender: B28493C5912EC3A5E132B4BF8AD375034E6E7E528D310564AA19BB749135B18BDA02F2796B93342E357C676970C57ECD7903AA853BEC14D6C59BF0EFCE12EDA3464B2F1BE97140222AA3CDD27765A5664357EE2BBBD6A2654211C48CEF36B4E53E1474EBCA2FBADEED14614B50AE0675
X-Mras: OK
X-Spam: undefined
X-7564579A: EEAE043A70213CC8
X-77F55803: 6AF0DA0BABFA9FDB7F9F52485CB584D7271FD7DF62800FDC1551838B4B544927F96D47934F148D9BA8B951E305F717C91848B9D47262AA8F
X-7FA49CB5: 0D63561A33F958A5B32CD1E17E9821A496D04B3715AFF4848617C49FA1CC49198941B15DA834481FA18204E546F3947CC2B5EEE3591E0D35F6B57BC7E64490618DEB871D839B7333395957E7521B51C2545D4CF71C94A83E9FA2833FD35BB23D27C277FBC8AE2E8BECADA55FE5B58BB7A471835C12D1D977C4224003CC836476C0CAF46E325F83A50BF2EBBBDD9D6B0F8DB212830C5B42F72623479134186CDE6BA297DBC24807EABDAD6C7F3747799A
X-Mailru-MI: 800
X-Mras: OK
X-Mailman-Approved-At: Tue, 14 Jan 2020 13:26:54 +0000
Subject: [Spice-devel] =?utf-8?q?Spice-protocol_pre-compialtion_configura?=
 =?utf-8?q?tion_error?=
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
Content-Type: multipart/mixed; boundary="===============1249904989=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1249904989==
Content-Type: multipart/alternative;
	boundary="--ALT--N92k2GBDq0z5BN0mEuaXnSZh7bw5h9ov1579001136"


----ALT--N92k2GBDq0z5BN0mEuaXnSZh7bw5h9ov1579001136
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

R2VudHMgLCBjb3VsZCB5b3UgcGxlYXNlIGFkdmlzZSAtIGluIGNhc2Ugb2YgcHJlY29tcGlsaW5n
IG1lc29uIGFjdGl2YXRpb24gd2FybmluZyAtIMKgIEJ1aWxkIHRhcmdldHMgaW4gcHJvamVjdDog
MCBpcyBhIG5vcm1hbCBzaXR1YXRpb24/CgoKLS0gCtCQ0L3QtNGA0LXQuSDQpNC+0LrQuNC9

----ALT--N92k2GBDq0z5BN0mEuaXnSZh7bw5h9ov1579001136
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

CjxIVE1MPjxCT0RZPkdlbnRzICwgY291bGQgeW91IHBsZWFzZSBhZHZpc2UgLSBpbiBjYXNlIG9m
IHByZWNvbXBpbGluZyBtZXNvbiBhY3RpdmF0aW9uIHdhcm5pbmcgLSAmbmJzcDs8Zm9udCBzdHls
ZT0iYmFja2dyb3VuZC1jb2xvcjogI2ZmZmZmZjsiIGRhdGEtbWNlLXN0eWxlPSJiYWNrZ3JvdW5k
LWNvbG9yOiAjZmZmZmZmOyI+QnVpbGQgdGFyZ2V0cyBpbiBwcm9qZWN0OiAwIGlzIGEgbm9ybWFs
IHNpdHVhdGlvbj88L2ZvbnQ+PGJyPjxicj48YnI+LS0gPGJyPtCQ0L3QtNGA0LXQuSDQpNC+0LrQ
uNC9PC9CT0RZPjwvSFRNTD4K

----ALT--N92k2GBDq0z5BN0mEuaXnSZh7bw5h9ov1579001136--

--===============1249904989==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1249904989==--
