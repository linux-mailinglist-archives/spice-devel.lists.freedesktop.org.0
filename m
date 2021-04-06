Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D485355423
	for <lists+spice-devel@lfdr.de>; Tue,  6 Apr 2021 14:44:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A97E36E131;
	Tue,  6 Apr 2021 12:44:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from server.thinsia.com (server.thinsia.com [94.124.92.232])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C5A46E131
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Apr 2021 12:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=thinsia.com
 ; s=x;
 h=Content-Type:MIME-Version:Date:Message-ID:Subject:From:To:Sender:
 Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UUR4l3PUzlTZWIA6QhFvqHHHJWs8a1ddke80E6Jseds=; b=AOoIE3x7XEd0BSQMiPHTTgqamZ
 0RkQxSZG95tUfV3MfRaX1e5jmAodFdjIQmfxSSurzS8J51SPeRnGF7QX0mXg5fVdSTM/a9Sej1xcd
 OQ2u3s2/xgxTVA/3LQaS0oWy3CZAPZwltCMq5duCBPf5N9wXkdXiZHll++YbTFaVCtR9fPv0Kd8nf
 LLluEphN7NpWfSb2H/ohjaIDrsNDANJUO8D3nw69GV5xMg/9QSWzOkGHZc5r5ffLItOfQlKPwRIH1
 cI7jXalFN6p7ZjyY3vF8MOv/i23TPnCfhX1Te/8R3wbItHtvwBvxXuey17nQ1QhrpjLVpgowED/43
 go/zJw/g==;
Received: from d57e265a.static.ziggozakelijk.nl ([213.126.38.90]
 helo=[192.168.14.15]) by server.thinsia.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94)
 (envelope-from <sassen@thinsia.com>) id 1lTl4A-001PfI-GD
 for spice-devel@lists.freedesktop.org; Tue, 06 Apr 2021 14:44:22 +0200
To: spice-devel@lists.freedesktop.org
From: Roland <sassen@thinsia.com>
Message-ID: <1b7ccad0-e05a-acb1-af79-9f136cc1c5c3@thinsia.com>
Date: Tue, 6 Apr 2021 14:44:16 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
Content-Language: en-GB
X-Antivirus: AVG (VPS 210405-6, 05-04-2021), Outbound message
X-Antivirus-Status: Clean
X-Authenticated-Id: sassen@thinsia.com
Subject: [Spice-devel] spice help needed
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
Content-Type: multipart/mixed; boundary="===============1116532362=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============1116532362==
Content-Type: multipart/alternative;
 boundary="------------71A23EFB6AFC434770421543"
Content-Language: en-GB

This is a multi-part message in MIME format.
--------------71A23EFB6AFC434770421543
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

hello,

I am looking for info how to use spice to connect many userst to a farm 
of virtual machines.

For a fund raising demo I would like to use aSpice with our logo, how 
can I do that?

I think KVM is a good idea to use for virtualization, I am also looking 
for info what would be the best OS

to use. There are lists, like 
https://www.makeuseof.com/tag/linux-operating-systems-try-virtual-machine/

We are looking at Ubuntu right now with KVM and Lubuntu and Demian as 
VMs any suggestions welcome!

When a user signs-on, a new virtual machine should automatically be 
created with spice enabled (display spice), and the user should get the 
port number to be able to connect to the vm.

Any suggestions appreciated, also links to people who can give advice, 
we are planning our project Citizen`s Island <https://citizensisland.com/>

thank you in advance,

cheers,

Roland


Thinsia Research <https://www.thinsia.com/>

Roland Sassen

Eeserstr. 14

9531 CM Borger

tel.: +31 599820288

m: +31 640223112

email sassen@thinsia.com


-- 
Deze e-mail is gecontroleerd op virussen door AVG.
http://www.avg.com

--------------71A23EFB6AFC434770421543
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>hello,</p>
    <p>I am looking for info how to use spice to connect many userst to
      a farm of virtual machines.</p>
    <p>For a fund raising demo I would like to use aSpice with our logo,
      how can I do that?</p>
    <p>I think KVM is a good idea to use for virtualization, I am also
      looking for info what would be the best OS <br>
    </p>
    <p>to use. There are lists, like
      <a class="moz-txt-link-freetext"
href="https://www.makeuseof.com/tag/linux-operating-systems-try-virtual-machine/">https://www.makeuseof.com/tag/linux-operating-systems-try-virtual-machine/</a></p>
    <p>We are looking at Ubuntu right now with KVM and Lubuntu and
      Demian as VMs any suggestions welcome!<br>
    </p>
    <p>When a user signs-on, a new virtual machine should automatically
      be created with spice enabled (display spice), and the user should
      get the port number to be able to connect to the vm.</p>
    <p>Any suggestions appreciated, also links to people who can give
      advice, we are planning our project <a
        href="https://citizensisland.com/">Citizen`s Island</a></p>
    <p>thank you in advance,</p>
    <p>cheers,<br>
    </p>
    <p>Roland</p>
    <p><br>
    </p>
    <p><a href="https://www.thinsia.com/">Thinsia Research</a></p>
    <p>Roland Sassen</p>
    <p>Eeserstr. 14</p>
    <p>9531 CM Borger</p>
    <p>tel.: +31 599820288</p>
    <p>m: +31 640223112</p>
    email <a class="moz-txt-link-abbreviated"
      href="mailto:sassen@thinsia.com">sassen@thinsia.com</a>
  <div id="DAB4FAD8-2DD7-40BB-A1B8-4E2AA1F9FDF2">
<br /><br />
<hr style='border:none; color:#909090; background-color:#B0B0B0; height: 1px; width: 99%;' />
<table style='border-collapse:collapse;border:none;'>
	<tr>
		<td style='border:none;padding:0px 15px 0px 8px'>
			<a href="http://www.avg.com/internet-security">
				<img border=0 src="http://static.avast.com/emails/avg-mail-stamp.png" alt="AVG-logo" />
			</a>
		</td>
		<td>
			<p style='color:#3d4d5a; font-family:"Calibri","Verdana","Arial","Helvetica"; font-size:12pt;'>
				Deze e-mail is door AVG-antivirussoftware gecontroleerd op virussen.
				<br><a href="http://www.avg.com/internet-security">www.avg.com</a>
			</p>
		</td>
	</tr>
</table>
<br />
<a href="#DAB4FAD8-2DD7-40BB-A1B8-4E2AA1F9FDF2" width="1" height="1"> </a></div></body>
</html>

--------------71A23EFB6AFC434770421543--

--===============1116532362==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1116532362==--
