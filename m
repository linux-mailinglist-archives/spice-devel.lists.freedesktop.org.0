Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE094FFE70
	for <lists+spice-devel@lfdr.de>; Wed, 13 Apr 2022 21:06:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C73210E205;
	Wed, 13 Apr 2022 19:06:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4985610FBA5
 for <spice-devel@lists.freedesktop.org>; Wed, 13 Apr 2022 07:06:38 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id lc2so1969365ejb.12
 for <spice-devel@lists.freedesktop.org>; Wed, 13 Apr 2022 00:06:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=q4KbE6pe7QqYX5zXw3cpuzeuM4lAqutY7p6wvTnxXNE=;
 b=nHPF8rVI4lLhFth2zurNxA2ObQ1pxYDC1XuXITkhPI9F2AMcT2av+Rbh5Jwj9vtngv
 tKmzwvh7JG8NW5B50QprkyjAIudOZBVVsV1+1K4CblEggjYJe3/A2HwpnTcaaqyJnx77
 PpK5jDOxChiliW2IijZvtnBFO58ZrzRZ+N/tZ/oImdeBs33+ByIeTdziIDalOx7FR5g0
 C0BnRT0UL5SOgGUL2zx47el57fE97JtVQVlu8uO6hqdqpX/Hteb3/6/gR2X5QXAi1Fw6
 LmWrArxgUmvE50LES7sWJZoqCf6scViz9umGVTcbVPkRsiIoTzAHZpS+mxgrpMWhtWBV
 +pFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=q4KbE6pe7QqYX5zXw3cpuzeuM4lAqutY7p6wvTnxXNE=;
 b=1shV20RfpcQ7hh54ZPS5zn43BItb1+bCgE8vzQrtmjnBkGZnv3FrnOLhDwVMIHsFfe
 yjmwk7v1G2lOYeQM4oBDkIwSWFmRHxVdzq8T322K8ADTafyUb8wT+qfABzdrlsAoZelQ
 NNNSyOsenLF38hpkCx6D8iUtyVOHxch44Fge5elXHDzwhIyC42TvAXSnco6U8PVY9lfJ
 DGsXo6jh7kGkRtpP9ZMZR8trw1pwQumhxY4mS4/t41wjtxq/zWfImOiLcTwqCAbq8ReE
 IGqCVkNUOAs64zPYXR4PJS63wE5oVWJN4eDtoHP7oS+FiIDAhTZ6vFtIPlmokDOgCLQQ
 Uaow==
X-Gm-Message-State: AOAM531JYo11PU/3YMTGca6i2wuGJeFbiDcyqoR5xIp0LqCn5hHK+Hgp
 RK6UCYgM5m0ZKwGyQYSCsEYMGCwThG+bqRhhoxC8ChEuabhD0mnxm7E=
X-Google-Smtp-Source: ABdhPJwWPNBTt4rNpUfjRTG/OjTNGbyDGCL3ABqQGlPJqzzpt7LWR1NYoAjpf2j0qaDkNg/ssJzRE8F4obytSJyNbDM=
X-Received: by 2002:a17:906:5796:b0:6e8:81b8:d709 with SMTP id
 k22-20020a170906579600b006e881b8d709mr13700525ejq.442.1649833596280; Wed, 13
 Apr 2022 00:06:36 -0700 (PDT)
MIME-Version: 1.0
From: Walter Mitty <waltermitty121906@gmail.com>
Date: Wed, 13 Apr 2022 15:06:24 +0800
Message-ID: <CAOgZG1z9a38rO71avvKvdbtpNBxxOBZQsVz4jiNFUMKrCFPELQ@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="00000000000071e3ed05dc83d119"
X-Mailman-Approved-At: Wed, 13 Apr 2022 19:06:49 +0000
Subject: [Spice-devel] Code confusion: the difference between
 video_stream_trace_update() and video_stream_maintenance()
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

--00000000000071e3ed05dc83d119
Content-Type: text/plain; charset="UTF-8"

Hello,
I am learning spice-server source code. And i'm confusing the 2 functions
in `video-stream.cpp`: video_stream_trace_update / video_stream_maintenance.

There is a todo about it.
Any suggestions please?

--00000000000071e3ed05dc83d119
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div>I am learning spice-server source code. And i&#=
39;m confusing the 2 functions in `video-stream.cpp`:=C2=A0<span style=3D"c=
olor:rgb(111,66,193);font-family:Menlo,Monaco,&quot;Courier New&quot;,monos=
pace;font-size:12px;white-space:pre">video_stream_trace_update / </span><sp=
an style=3D"color:rgb(111,66,193);font-family:Menlo,Monaco,&quot;Courier Ne=
w&quot;,monospace;font-size:12px;white-space:pre">video_stream_maintenance.=
 </span></div><div><font color=3D"#6f42c1" face=3D"Menlo, Monaco, Courier N=
ew, monospace"><span style=3D"font-size:12px;white-space:pre">There is a to=
do about it.</span></font></div><div>Any suggestions please?</div></div>

--00000000000071e3ed05dc83d119--
