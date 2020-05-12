Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C016E1CF173
	for <lists+spice-devel@lfdr.de>; Tue, 12 May 2020 11:21:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4600B6E903;
	Tue, 12 May 2020 09:21:15 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 302 seconds by postgrey-1.36 at gabe;
 Tue, 12 May 2020 08:19:35 UTC
Received: from m227-40.mailgun.net (m227-40.mailgun.net [159.135.227.40])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A450E89221
 for <spice-devel@lists.freedesktop.org>; Tue, 12 May 2020 08:19:35 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=appveyor.com; q=dns/txt;
 s=mailo; t=1589271577; h=Mime-Version: Content-Type: Subject: From: To:
 Message-Id: Sender: Date: Content-Transfer-Encoding;
 bh=lo42db9AU+X/43+3A/G3+mdJIOkRm67/UIrDTQolDAg=;
 b=tzImGqcV6p2RZ6SG1Not4wLkPMYR+OvBQ6YCOFDqolGEFF0xU2DktO4L16hf01dSUtfBksLE
 7XJZkbYNwNVNxLmc5ClC2BHEdr6Btcm6r8hNW/J9wYLnGJ2Og/3IR+ViIG+9qAzG0emYXT4Z
 ivMqOhNtXNEKUti7rK/0CGCp9r4=
X-Mailgun-Sending-Ip: 159.135.227.40
X-Mailgun-Sid: WyJlYWU5MSIsICJzcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmciLCAiYjM0YWQiXQ==
Received: by luna.mailgun.net with HTTP; Tue, 12 May 2020 08:14:32 +0000
Date: Tue, 12 May 2020 08:14:32 +0000
Message-Id: <20200512081432.1.DB4875E35FA7BCA6@appveyor.com>
To: spice-devel@lists.freedesktop.org
From: AppVeyor <no-reply@appveyor.com>
Mime-Version: 1.0
X-Mailman-Approved-At: Tue, 12 May 2020 09:21:13 +0000
Subject: [Spice-devel] Build failed: qxl-wddm-dod build-1-master
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
Content-Type: multipart/mixed; boundary="===============0327675440=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0327675440==
Content-Transfer-Encoding: 7bit
Content-Type: text/html; charset="ascii"

<div style="font-family:'Segoe UI',Arial,Sans-Serif;font-size:10pt;">


    <h1 style="font-size: 150%;font-weight:normal; color:#ff3228;"><a href="https://ci.appveyor.com/project/wenjichen/qxl-wddm-dod/builds/32813174" style="color:#ff3228;">Build qxl-wddm-dod build-1-master failed</a></h1>

    <p style="color: #888;">
        Commit <a href="https://gitlab.com/keeword/qxl-wddm-dod/commit/418ccf52f0">418ccf52f0</a> by <a href="mailto:yuri.benditovich@daynix.com">Yuri Benditovich</a> on 3/4/2020 6:15 AM:
        <br />
        <span style="font-size: 110%;color:#222;">Updated Changelog for 0.20</span>
    </p>

    <p><a href="https://ci.appveyor.com/notifications" style="font-size:85%;color:#999;">Configure your notification preferences</a></p>
</div>

--===============0327675440==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0327675440==--
