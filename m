Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C99FD91D0A0
	for <lists+spice-devel@lfdr.de>; Sun, 30 Jun 2024 10:39:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60EB810E16A;
	Sun, 30 Jun 2024 08:39:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=web.de header.i=markus.elfring@web.de header.b="IaWHuWjJ";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 339 seconds by postgrey-1.36 at gabe;
 Wed, 26 Jun 2024 12:24:00 UTC
Received: from mout.web.de (mout.web.de [212.227.15.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5D5D10E890
 for <spice-devel@lists.freedesktop.org>; Wed, 26 Jun 2024 12:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
 s=s29768273; t=1719404637; x=1720009437; i=markus.elfring@web.de;
 bh=yUPAIAof3AkzY+BmPwggZrxS5owZtdhbXK8kkUOSg5c=;
 h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
 cc:content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=IaWHuWjJnz7kkIsujgGDqcvwxq22avt6C+b/l0Vp11UHi/tFJMZCOPhnxYJNQ1tQ
 drOHmsWM5QVRks4s1x6Kq5uIHqO2uOO7zWgnR1Kl195H7WHVInxc27wx/Yc3siM3M
 36q5Bm5crjVJj8LMQ2g8GPd6y+JXCHVU53o0WEa1yMNQFGmcuu7LsOFzsEUude2JK
 lZi98z2nUb8XkEtkhZIg1GRya4+hu7YsRCHUd5AIlzwkmWqHIn95E1icFyQ+NuBQ9
 Rr40xyB+6xO6RkeK8vG645QIpeGQu+fSTgNVcDdUofaGIoFI+Y6Fh5UEWvjAuPG2+
 dDFU+EAtm5kHZlS2cA==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.91.95]) by smtp.web.de (mrweb006
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1N30ZN-1sSSoc3rPZ-00sdVt; Wed, 26
 Jun 2024 14:18:07 +0200
Message-ID: <7efdcd35-7511-491a-a0b2-c500ebb2256d@web.de>
Date: Wed, 26 Jun 2024 14:18:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ma Ke <make24@iscas.ac.cn>, dri-devel@lists.freedesktop.org,
 spice-devel@lists.freedesktop.org, virtualization@lists.linux.dev,
 Daniel Vetter <daniel@ffwll.ch>, Dave Airlie <airlied@redhat.com>,
 Gerd Hoffmann <kraxel@redhat.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>
Cc: LKML <linux-kernel@vger.kernel.org>, David Airlie <airlied@gmail.com>
References: <20240626064024.2811255-1-make24@iscas.ac.cn>
Subject: Re: [PATCH] drm/qxl: fix null pointer dereference in qxl_add_mode
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20240626064024.2811255-1-make24@iscas.ac.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:C60OHFSjUuj7c1Ny1z+3dfhRyGU9CgYduGDl5Y0uOjNWFaNRIBg
 pZn9Q1V4E276IQizd99IZn+VBG3/z4MThrqGn+8Zf43SzQz9WiXCEuvVJq53xuWJGmsubrO
 A+k/2CYu4mODi/iGDVY6OwkP55j6PQzl9r/vRNqwosZBvTUXyQcRdzvzfXq0RKHg/Y6SccJ
 tIoZ/gnAkHy1336uFBbig==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:I8twAM058Rk=;rrOcLwYwN3pTp4XRxQsqhHYe/DW
 ZUOgW+sdm1wx2IOnxh1b8Y/9Cw/qshTLur+I7zshFBKY0gElkeiYYEApAcKiHWOsCDqxU94uE
 t48ISTUsIwkXZV6c6drN8Z/WW21PsBAG7wao+afz5jplmy1G4tJL5tXFZ9in1R+7nR/nsfb48
 GYosK0+SaiQqxHW42jAfQd3DE8/jAOoDYpyStskarcLDf5fn3O3+yMse3QE5J4RbMkFZfvJt/
 Lt/JoZOWaECPdzlQYoSxOgPDF1G9H+7C+UG5loa6yyNMK8uZEC/gxa2VMxFPsGAmEdDiwuZnk
 sYUDAlsMc9jhN5p6g3jHtHLNRrDUaJjbcQyah1BS+mQQffQSi/8SpAqWpWGI3ATTkrrHF01N7
 HzYA3QNSBl7bIK72DenWSIP8Yo9bGeoP3gSMnS50ZX9tS6vbnrtwbhr94pjr5WAU6+8VqVSQK
 NB/YQENB6swUzkClm4Z+5Vqe9aVE2IWmBGeTmVMaJPVfVX6cClo2uvTUz7a61ZEY4yNjsdS3C
 yjp3pRG4uk0GEsjlxUR0O0NknAQlgPL6o55SxKJut9LuFMEmlUc6It1yPxvHW+bez2fu5onax
 Dd4k1iQcavO4kYUjQlbdtp4ND+SxfEG+0HEGOKk0NEhX+/25f96y+zW2UMpUUoawHRYBFCVJL
 FRulIYMwmwG8jcj4FECphEJ1JH6w0bFlRAM8I8NwSG4lHVF/Z96ukFR/at31XWxACzWaodNfv
 DT2L0CMAoDcaU10Fxfavy227XiKbzSRrlWamOUkt50u+1Z+8+FcNNIJCWeM5CrNM8xVnWeiwj
 v7MeJz3bfe+IoeB9NwXaLWiM4lPKQ/dYiD9kvBhMZYRek=
X-Mailman-Approved-At: Sun, 30 Jun 2024 08:39:25 +0000
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

> In qxl_add_mode(), the return value of drm_cvt_mode() is assigned to mod=
e,
> which will lead to a possible NULL pointer dereference on failure of
> drm_cvt_mode(). Add a check to avoid npd.

1. Can a wording approach (like the following) be a better change descript=
ion?

   A null pointer is stored in the local variable =E2=80=9Cmode=E2=80=9D a=
fter a call
   of the function =E2=80=9Cdrm_cvt_mode=E2=80=9D failed. This pointer was=
 used
   in subsequent statements where an undesirable dereference
   will be performed then.
   Thus add a corresponding return value check.


2. Would you like to add any tags (like =E2=80=9CFixes=E2=80=9D and =E2=80=
=9CCc=E2=80=9D) accordingly?


3. How do you think about to append parentheses to the function name
   in the summary phrase?


Regards,
Markus
