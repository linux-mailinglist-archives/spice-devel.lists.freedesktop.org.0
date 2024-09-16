Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C82397B024
	for <lists+spice-devel@lfdr.de>; Tue, 17 Sep 2024 14:33:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1577710E172;
	Tue, 17 Sep 2024 12:33:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 906 seconds by postgrey-1.36 at gabe;
 Mon, 16 Sep 2024 08:18:22 UTC
Received: from fmg.srr.ro (fmg.srr.ro [193.231.72.62])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15FE310E2E5
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Sep 2024 08:18:21 +0000 (UTC)
Received: from mail0.srr.ro (mail.srr.ro [193.231.72.244])
 by fmg.srr.ro  with ESMTP id 48G83Dl3014151-48G83Dl5014151
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Sep 2024 11:03:13 +0300
Received: from [10.231.74.10] (master.srr.ro [193.231.72.240])
 (authenticated bits=0)
 by mail0.srr.ro (8.14.9/8.14.9) with ESMTP id 48G83DQT030424
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT)
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Sep 2024 11:03:13 +0300
To: spice-devel@lists.freedesktop.org
From: Andrei Boros <andrei@srr.ro>
Subject: UsbDk on Win7?
Organization: Societatea Romana de Radiodifuziune
Message-ID: <709006a2-3c30-e055-033b-1a9258056f5c@srr.ro>
Date: Mon, 16 Sep 2024 11:05:31 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------A1E175CAA1C1A9D2B9F67A72"
Content-Language: en-US
X-FE-Attachment-Name: log.zip
X-FE-Policy-ID: 2:4:2:SYSTEM
X-Mailman-Approved-At: Tue, 17 Sep 2024 12:33:04 +0000
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

This is a multi-part message in MIME format.
--------------A1E175CAA1C1A9D2B9F67A72
Content-Type: multipart/alternative;
 boundary="------------24ABAE2536F0F4FE58007B49"


--------------24ABAE2536F0F4FE58007B49
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hi,

I'm stuck using a Win7 workstation (for now) and was trying to get USB
redirection via virt-viewer to the VM.
UsbDk however doesn't install on my system. Tried all versions, even the
oldest one, from here https://www.spice-space.org/download/windows/usbdk/

It throws an unspecified error and the installer fails.
Managed to get msiexec to blurt out a log (attached), but it's beyond my
understanding.

Should UsbDk (by design) work on Win7?
If yes, how do I get it to work?

Thank you.
-- 

*ing. Andrei Boros*

Serviciul IT&C
*Radio Romania*
|Tel:   +40-21-303-1870
       +40-745-115721
Email: andrei@srr.ro <mailto:andrei@srr.ro>|


--------------24ABAE2536F0F4FE58007B49
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Hi, <br>
    <br>
    I'm stuck using a Win7 workstation (for now) and was trying to get
    USB redirection via virt-viewer to the VM. <br>
    UsbDk however doesn't install on my system. Tried all versions, even
    the oldest one, from here
    <a class="moz-txt-link-freetext" href="https://www.spice-space.org/download/windows/usbdk/">https://www.spice-space.org/download/windows/usbdk/</a><br>
    <br>
    It throws an unspecified error and the installer fails. <br>
    Managed to get msiexec to blurt out a log (attached), but it's
    beyond my understanding. <br>
    <br>
    Should UsbDk (by design) work on Win7? <br>
    If yes, how do I get it to work? <br>
    <br>
    Thank you.<br>
    <div class="moz-signature">-- <br>
      <p><b>ing. Andrei Boros</b></p>
      <p>Serviciul IT&amp;C<br>
        <b>Radio Romania</b><br>
        <code>
          Tel:   +40-21-303-1870<br>
                 +40-745-115721<br>
          Email: <a href="mailto:andrei@srr.ro">andrei@srr.ro</a></code></p>
    </div>
  </body>
</html>

--------------24ABAE2536F0F4FE58007B49--

--------------A1E175CAA1C1A9D2B9F67A72
Content-Type: application/x-zip-compressed;
 name="log.zip"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="log.zip"

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
AQA1AAAAJyoAAAAA
--------------A1E175CAA1C1A9D2B9F67A72--
