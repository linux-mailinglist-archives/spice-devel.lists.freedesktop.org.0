Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA043461AA
	for <lists+spice-devel@lfdr.de>; Tue, 23 Mar 2021 15:42:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 494306E905;
	Tue, 23 Mar 2021 14:42:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 3353 seconds by postgrey-1.36 at gabe;
 Tue, 23 Mar 2021 14:42:11 UTC
Received: from server.thinsia.com (server.thinsia.com [94.124.92.232])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7359A6E905
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Mar 2021 14:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=thinsia.com
 ; s=x;
 h=Content-Type:MIME-Version:Date:Message-ID:Subject:From:To:Sender:
 Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0OL712vlVZ69mKKhAnyWmuwGOFPVOMYgFCFT2Fm/svw=; b=Rcgu63twA7bk1AInCBNyn8n0yl
 SAdiPnOTLe4EZ2xs2CoOttnINyl5pXYd1laxFM5HdbmHPssQIAmAeB3rW0KXF7F51SZIiHmPvj4AT
 t/AORRWM89GS6F6EL9DlCharTXv1BHx8DMFDFhzkW+a7r1nrAwSFzgKpoWmki8txI7KHEOKV3vYM2
 YaDD7e0e5MYmxdpnAT5zPOt1PnSGfBOOhJ80yhaNXMdwboD26es9PtsfVv86DrH8mwNKolDQbgDsm
 Ph9RZkgn3EQBazRzx2p/Bb/hjAjsBnZwMw5K0qxvu2mIUi0G8ZsUGlIRZowlxXRWZ20/yZ502Y99x
 +oqORHqQ==;
Received: from d57e265a.static.ziggozakelijk.nl ([213.126.38.90]
 helo=[192.168.14.15]) by server.thinsia.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94)
 (envelope-from <sassen@thinsia.com>) id 1lOhMQ-00GQsf-CV
 for spice-devel@lists.freedesktop.org; Tue, 23 Mar 2021 14:46:18 +0100
To: spice-devel@lists.freedesktop.org
From: Roland <sassen@thinsia.com>
Message-ID: <b189b7e4-d23a-cfba-8253-8a799c951d72@thinsia.com>
Date: Tue, 23 Mar 2021 14:46:14 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
Content-Language: en-GB
X-Antivirus: AVG (VPS 210323-0, 23-03-2021), Outbound message
X-Antivirus-Status: Clean
X-Authenticated-Id: sassen@thinsia.com
Subject: [Spice-devel] Spice for CI
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
Content-Type: multipart/mixed; boundary="===============1754723184=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============1754723184==
Content-Type: multipart/alternative;
 boundary="------------CA65E2F13678D2C96D9444E8"
Content-Language: en-GB

This is a multi-part message in MIME format.
--------------CA65E2F13678D2C96D9444E8
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello, for our project Citizen"s Island <https://citizensisland.com/> I 
want to provide a "remote desktop" from a mobile phone with aSpice 
<https://play.google.com/store/apps/details?id=com.iiordanov.freeaSPICE> 
to a linux server.

On the remote desktop there should be a browser (Brave?), and a place to 
store data.

The "place to store data" will be exchanged later by pointers to 
decentralized data repositories.

Question 1    Is it ok to start with Ubuntu, (link 
<https://www.server-world.info/en/note?os=Ubuntu_20.04&p=kvm&f=6>)

Question 2    what is the smallest os I can use (ubuntu light?)

Question 3    I have to connect 3000 users to their personal virtual 
desktop, any recommendations?

Thank you in advance!


Thinsia Research <https://www.thinsia.com/>

Roland Sassen

Eeserstr. 14

9531 CM Borger

tel.: 0599 820288

m: 06 40223112

email sassen@thinsia.com



-- 
Deze e-mail is gecontroleerd op virussen door AVG.
http://www.avg.com

--------------CA65E2F13678D2C96D9444E8
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hello, for our project <a moz-do-not-send="true"
        href="https://citizensisland.com/">Citizen"s Island</a> I want
      to provide a "remote desktop" from a mobile phone with <a
        moz-do-not-send="true"
href="https://play.google.com/store/apps/details?id=com.iiordanov.freeaSPICE">aSpice</a>
      to a linux server.</p>
    <p>On the remote desktop there should be a browser (Brave?), and a
      place to store data.</p>
    <p>The "place to store data" will be exchanged later by pointers to
      decentralized data repositories.</p>
    <p>Question 1    Is it ok to start with Ubuntu, (<a
        moz-do-not-send="true"
href="https://www.server-world.info/en/note?os=Ubuntu_20.04&amp;p=kvm&amp;f=6">link</a>)</p>
    <p>Question 2    what is the smallest os I can use (ubuntu light?)</p>
    <p>Question 3    I have to connect 3000 users to their personal
      virtual desktop, any recommendations?</p>
    <p>Thank you in advance!</p>
    <p><br>
    </p>
    <p><a moz-do-not-send="true" href="https://www.thinsia.com/">Thinsia
        Research</a></p>
    <p>Roland Sassen</p>
    <p>Eeserstr. 14</p>
    <p>9531 CM Borger</p>
    <p>tel.: 0599 820288</p>
    <p>m: 06 40223112</p>
    <p>email <a class="moz-txt-link-abbreviated" href="mailto:sassen@thinsia.com">sassen@thinsia.com</a><br>
    </p>
  <div id="DAB4FAD8-2DD7-40BB-A1B8-4E2AA1F9FDF2"><br /> <table style="border-top: 1px solid #D3D4DE;">
	<tr>
      <td style="width: 55px; padding-top: 18px;"><a href="http://www.avg.com/email-signature?utm_medium=email&utm_source=link&utm_campaign=sig-email&utm_content=emailclient" target="_blank"><img src="https://ipmcdn.avast.com/images/icons/icon-envelope-tick-green-avg-v1.png" alt=""  width="46" height="29" style="width: 46px; height: 29px;" /></a></td>
		<td style="width: 470px; padding-top: 17px; color: #41424e; font-size: 13px; font-family: Arial, Helvetica, sans-serif; line-height: 18px;">Virusvrij. <a href="http://www.avg.com/email-signature?utm_medium=email&utm_source=link&utm_campaign=sig-email&utm_content=emailclient" target="_blank" style="color: #4453ea;">www.avg.com</a> 		</td>
	</tr>
</table>
<a href="#DAB4FAD8-2DD7-40BB-A1B8-4E2AA1F9FDF2" width="1" height="1"> </a></div></body>
</html>

--------------CA65E2F13678D2C96D9444E8--

--===============1754723184==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1754723184==--
