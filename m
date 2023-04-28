Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90EAC6F1405
	for <lists+spice-devel@lfdr.de>; Fri, 28 Apr 2023 11:27:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C41F810EC8F;
	Fri, 28 Apr 2023 09:27:15 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2A8A10E0CC
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Apr 2023 07:55:29 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id
 d9443c01a7336-1a516fb6523so96441825ad.3
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Apr 2023 00:55:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1682668529; x=1685260529;
 h=to:date:message-id:subject:mime-version:from:from:to:cc:subject
 :date:message-id:reply-to;
 bh=Oi5tF+Ky/Lrd+5tHLu4xYBA03jxZoQRbLFVlfPTfxRc=;
 b=NmgUWvxPoVmQontsdoll9zluiuRFQC6TYucm9tHZcmTyLnHMRd+WfSCotkXlPb6uQF
 gSCj7pp0kkdkQFHUxN5QDXQaHTDISlSLhUk1P0F7JdAf/alhumb+ZwXBhInZrkeVe61a
 kTLLUYUdi1+DmpQsoFVgRoBim8HpeH/14wQ3u6hjt7zpSSGjY2qnKLoI9luH38IlsEZJ
 OE9N79RCxv6SVhX9xordTzI4eX66iZfBARr6gvqDy93rEZKsW1fgY5v1kAwK1nLrWf5d
 spObonOmacht22qoIk19zVn3HkdEPgtWOwAFa25T4fDbUGWTGomlcTezDKbGDGx/QDpC
 6lIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682668529; x=1685260529;
 h=to:date:message-id:subject:mime-version:from:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Oi5tF+Ky/Lrd+5tHLu4xYBA03jxZoQRbLFVlfPTfxRc=;
 b=ceCWxr780v2LMI4yxcXiFhoDV+RQWS5tUqsj7r7OXvgJhq4LFoy7QM8J5bWh1PrKIe
 BicF//0SPgLs9REKYFIgX6WH4oA/RQXoErcBKhIufgVMAc11WuY2+8d527TkQBTwj7Sv
 E19ln7hHG8rT1PxvLY9KvOdpU7gX7Bp6fxMnIKqGlfPJ6Hg7SxMwQY/bgnUJlvSaAJFa
 qiYrCOhVjsbzTZgzH8NJ0El4EcGYEmXR+V2gazsS4cNpCrttLrSoFt1DRPmdEb2VnQPn
 BZffvYwzj4W7XTivqI81EVTGz7btn5Av7MHJ/GYfYT5c8cndCPP5aibI42EtTfTU7Lnj
 L70A==
X-Gm-Message-State: AC+VfDyZsO2tPPeI4I6OqRMUcJvK7T4HvJ6PjzgeVpIq/DV5KjqW/B3i
 mdJqkBbXJGFnt0BJZNjc8fZUh29MVuhMDQ==
X-Google-Smtp-Source: ACHHUZ7Xec5oVitJcoaC99SG2eSUhdVs98yA3ii2uzDKwDTx7QrSM+K8rR1PvvmgIPVB+lkPQmN+Dg==
X-Received: by 2002:a17:902:f651:b0:1a5:3319:12f7 with SMTP id
 m17-20020a170902f65100b001a5331912f7mr4295381plg.50.1682668528637; 
 Fri, 28 Apr 2023 00:55:28 -0700 (PDT)
Received: from smtpclient.apple (mail.triksnet.com. [58.96.89.117])
 by smtp.gmail.com with ESMTPSA id
 t14-20020a17090a4e4e00b00246f73a994esm908742pjl.32.2023.04.28.00.55.27
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Apr 2023 00:55:28 -0700 (PDT)
From: Patrik <pmoravek@gmail.com>
Content-Type: multipart/alternative;
 boundary="Apple-Mail=_9463C66F-2FE9-4F97-83A4-D915827F896B"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.500.231\))
Message-Id: <CAEE50A4-EE01-40E5-B31A-95DA26FE7B98@gmail.com>
Date: Fri, 28 Apr 2023 17:55:14 +1000
To: spice-devel@lists.freedesktop.org
X-Mailer: Apple Mail (2.3731.500.231)
X-Mailman-Approved-At: Fri, 28 Apr 2023 09:27:13 +0000
Subject: [Spice-devel] typo in code on How to Build page
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


--Apple-Mail=_9463C66F-2FE9-4F97-83A4-D915827F896B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi, just wanted to let you guys know there is a typo on this page: =
https://www.spice-space.org/osx-client.html


Currently is:

sudo xcode-select --switch /Applications/Xcode.app/ContentsDeveloper

Should be:

sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
How to build
The MacOSX client uses the jhbuild =
<https://wiki.gnome.org/action/show/Projects/Jhbuild> moduleset provided =
by the gtk-osx <http://www.gtk.org/download/macos.php> project. This =
repository <https://gitlab.freedesktop.org/spice/spice-jhbuild/tree/osx> =
contains an additional moduleset to build the needed SPICE modules. The =
OSX client is based on remote-viewer (as the Windows client).

Prerequisite
Before using it, you need to install XCode. I'm using XCode 4.3.3 for =
Lion. After installing it, I had to run the command below to setup =
everything as expected:

sudo xcode-select --switch /Applications/Xcode.app/ContentsDeveloper
If you want to build spice-gtk from git (the default moduleset is =
building it from tarballs), you also need the Perl module Text::CSV. To =
install it you can run:



thanks

Patrik=

--Apple-Mail=_9463C66F-2FE9-4F97-83A4-D915827F896B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"overflow-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;">Hi, just =
wanted to let you guys know there is a typo on this page:&nbsp;<a =
href=3D"https://www.spice-space.org/osx-client.html">https://www.spice-spa=
ce.org/osx-client.html</a><div><br><div><br></div><div>Currently =
is:<br><div><br><div>sudo xcode-select --switch =
/Applications/Xcode.app/ContentsDeveloper</div><div><br></div><div>Should =
be:</div><div><br></div><div>sudo xcode-select --switch =
/Applications/Xcode.app/Contents/Developer</div><div><h2 =
style=3D"box-sizing: border-box; font-family: Helvetica, Arial, =
sans-serif; font-weight: 500; line-height: 1.1; color: rgb(51, 51, 51); =
margin-top: 20px; margin-bottom: 10px; font-size: 30px; padding-top: =
0.5em; border-bottom-width: 2px; border-bottom-style: solid; =
border-bottom-color: silver; caret-color: rgb(51, 51, 51);">How to =
build</h2><p style=3D"box-sizing: border-box; margin: 0px 0px 10px; =
caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: =
Helvetica, Arial, sans-serif; font-size: 14px;">The MacOSX client uses =
the&nbsp;<a class=3D"reference external" =
href=3D"https://wiki.gnome.org/action/show/Projects/Jhbuild" =
style=3D"box-sizing: border-box; color: rgb(51, 122, 183); =
text-decoration: none;">jhbuild</a>&nbsp;moduleset provided by =
the&nbsp;<a class=3D"reference external" =
href=3D"http://www.gtk.org/download/macos.php" style=3D"box-sizing: =
border-box; color: rgb(51, 122, 183); text-decoration: =
none;">gtk-osx</a>&nbsp;project.&nbsp;<a class=3D"reference external" =
href=3D"https://gitlab.freedesktop.org/spice/spice-jhbuild/tree/osx" =
style=3D"box-sizing: border-box; color: rgb(51, 122, 183); =
text-decoration: none;">This repository</a>&nbsp;contains an additional =
moduleset to build the needed SPICE modules. The OSX client is based on =
remote-viewer (as the Windows client).</p><div class=3D"section" =
id=3D"prerequisite" style=3D"box-sizing: border-box; caret-color: =
rgb(51, 51, 51); font-family: Helvetica, Arial, sans-serif; font-size: =
14px;"><h3 style=3D"color: rgb(51, 51, 51); box-sizing: border-box; =
font-family: inherit; font-weight: 500; line-height: 1.1; margin-top: =
20px; margin-bottom: 10px; font-size: 24px; border-bottom-width: 2px; =
border-bottom-style: solid; border-bottom-color: =
silver;">Prerequisite</h3><p style=3D"color: rgb(51, 51, 51); =
box-sizing: border-box; margin: 0px 0px 10px;">Before using it, you need =
to install XCode. I'm using XCode 4.3.3 for Lion. After installing it, I =
had to run the command below to setup everything as expected:</p><div =
class=3D"highlight" style=3D"box-sizing: border-box;"><pre =
style=3D"box-sizing: border-box; overflow: auto; font-family: Menlo, =
Monaco, Consolas, &quot;Courier New&quot;, monospace; font-size: 13px; =
padding: 9.5px; margin-top: 0px; margin-bottom: 10px; line-height: =
1.428571; word-break: break-all; overflow-wrap: break-word; =
background-color: rgb(245, 245, 245); border: 1px solid rgb(204, 204, =
204); border-radius: 4px;"><font color=3D"#ff4013"><span =
style=3D"box-sizing: border-box;"></span>sudo xcode-select --switch =
/Applications/Xcode.app/ContentsDeveloper</font><font color=3D"#333333">
</font></pre></div><p style=3D"color: rgb(51, 51, 51); box-sizing: =
border-box; margin: 0px 0px 10px;">If you want to build spice-gtk from =
git (the default moduleset is building it from tarballs), you also need =
the Perl module Text::CSV. To install it you can run:</p><p =
style=3D"color: rgb(51, 51, 51); box-sizing: border-box; margin: 0px 0px =
10px;"><br></p><p style=3D"color: rgb(51, 51, 51); box-sizing: =
border-box; margin: 0px 0px 10px;">thanks</p><p style=3D"color: rgb(51, =
51, 51); box-sizing: border-box; margin: 0px 0px =
10px;">Patrik</p></div></div></div></div></div></body></html>=

--Apple-Mail=_9463C66F-2FE9-4F97-83A4-D915827F896B--
