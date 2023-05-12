Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE4DA700345
	for <lists+spice-devel@lfdr.de>; Fri, 12 May 2023 11:04:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5635410E647;
	Fri, 12 May 2023 09:03:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98BD310E647
 for <spice-devel@lists.freedesktop.org>; Fri, 12 May 2023 09:03:57 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id
 4fb4d7f45d1cf-50bcae898b2so17084065a12.0
 for <spice-devel@lists.freedesktop.org>; Fri, 12 May 2023 02:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683882235; x=1686474235;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=ETocV2n5zq5bRWRIxjtebfzJI2MYIrGUy03lFrG6Sjk=;
 b=PNNnwo3oeKQ3neg2e2W1PG9cQOCxVt53MFLW/raSBe1PiWLY1OffQuGVCSmKY7CukX
 XNPLXLlgXeS8gYGB+oWjK650cTIO2faPCRqHlkwN4Q2kvorjunvhXk3pOw16vmKjmyfZ
 9gCFEjIY9wWnlFpdknSBZvZCEsYnRkbWCRboXVvtz9el37ZGFL7/oz5T9X7bYds/VHSI
 q+EyJwysu4ZNOiekrN0HpOm7rseC+X+sldr3Q/Nb3FTVvvMXALK/OuKj3cNeXm83QAfs
 sFtpEm2OvD5cbkgl+zcv+li7CZQOxw1O8K2XoM/S/PaPcPtO9xc8FBLY3J/tWdlgxdAF
 RoxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683882235; x=1686474235;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ETocV2n5zq5bRWRIxjtebfzJI2MYIrGUy03lFrG6Sjk=;
 b=MuHxZbK+84NtzbvMeMTqJHQ1aMZxDCX3Aos7VAlIr/QsEtmoyL8MAWK2ldJJAtEdxn
 9gdkQC1Hgt31a8QV9O/Q0tmAAOcdGpyT+OQSk4tHNXlW/dJQlbD0FrL6XFqjXwl+eF/y
 yR6WvntyghQh6SncUuY5Nhg5p32sxGRVQjnyxVpwHOSr30AoxPXoEEwsqzlov8ZIyDXT
 3gQW6wSEA5FBHigyc1o45nKmOy+M/F9pMltCy1UpM3579F+nqjK0sd9qwy+7NOKzNIWD
 QgursFZL+ANmw+jqj9ALpvCKBcobZgQWkoGEwxKjbhdWAD86xoLtx9woV+yAoeY3J8jl
 tJXw==
X-Gm-Message-State: AC+VfDyQcPpQQRH62GMQYZMs5OJKk7SiBWJnCCRhV1CD/2EdVykxdyc4
 E7zhjcVwJPhDe0lUUHwHBn2cp0kkyZymHBpEjMqqSZMwgo0=
X-Google-Smtp-Source: ACHHUZ77RVe09qdMoKeOQnW/mnizDXlYKUjEIHvfI9cOEZFf2BNwY/3ASA9ntPRyGgeKTAy6do7Y0HRts/sWt0oCnxQ=
X-Received: by 2002:a17:906:974d:b0:94f:8aff:c8b3 with SMTP id
 o13-20020a170906974d00b0094f8affc8b3mr22955271ejy.28.1683882235191; Fri, 12
 May 2023 02:03:55 -0700 (PDT)
MIME-Version: 1.0
From: Ahmad Ismail <ismail783@gmail.com>
Date: Fri, 12 May 2023 15:03:43 +0600
Message-ID: <CAHAhJwK1qVwSzCMde7GqXb7jpAEm944ktJbww7Kbp=2k+g7ZOQ@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="00000000000078e65305fb7b62f2"
Subject: [Spice-devel] open remote-viewer so that "Share folder" is checked
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

--00000000000078e65305fb7b62f2
Content-Type: text/plain; charset="UTF-8"

I run the remote-viewer from a script like

remote-viewer --spice-shared-dir=/media/ismail/SSDWorking/_QEMU/VM_Share
spice://127.0.0.1:5911 > /dev/null 2>&1 &

After the viewer has opened, i have to go to File > Preferences and then
click the "Share folder" checkbox. Is there any option I can use so that
the "Share folder" checkbox will be already checked.

*Thanks and Best Regards,Ahmad Ismail*

--00000000000078e65305fb7b62f2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I run the remote-viewer from a script like</div><div>=
<br></div><div>remote-viewer --spice-shared-dir=3D/media/ismail/SSDWorking/=
_QEMU/VM_Share spice://<a href=3D"http://127.0.0.1:5911">127.0.0.1:5911</a>=
 &gt; /dev/null 2&gt;&amp;1 &amp;<br></div><div><br></div><div>After the vi=
ewer has opened, i have to go to File &gt; Preferences and then click the &=
quot;Share folder&quot; checkbox. Is there any option I can use so that the=
 &quot;Share folder&quot; checkbox will be already checked.</div><br clear=
=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"=
gmail_signature"><div dir=3D"ltr"><b style=3D"font-weight:normal"><p dir=3D=
"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span sty=
le=3D"font-size:10pt;font-family:Arial;color:rgb(0,0,0);background-color:tr=
ansparent;font-weight:400;font-style:normal;font-variant:normal;text-decora=
tion:none;vertical-align:baseline;white-space:pre-wrap">Thanks and Best Reg=
ards,</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;mar=
gin-bottom:0pt"><span style=3D"font-size:10pt;font-family:Arial;color:rgb(0=
,0,0);background-color:transparent;font-weight:400;font-style:normal;font-v=
ariant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-=
wrap">Ahmad Ismail</span></p></b></div></div></div></div>

--00000000000078e65305fb7b62f2--
