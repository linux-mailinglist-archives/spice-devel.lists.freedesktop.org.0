Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1A81311E7
	for <lists+spice-devel@lfdr.de>; Mon,  6 Jan 2020 13:19:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 016616E290;
	Mon,  6 Jan 2020 12:19:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CFCF6E290
 for <spice-devel@lists.freedesktop.org>; Mon,  6 Jan 2020 12:19:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578313190;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=m5P/ahvDvs0R0pB0+qr6vQqiqsKm309QwUyeavRGTm0=;
 b=fmwGWnHPotchhbo58Eris9lMI3EYVYSGcsWypbup+zmYZkDvlzAVh8dbkx0daYHi2TP0Bz
 hlxMaEopuW+Rhhmagzswn88tQlBh38wL/Lpw67+jNTV62eI6cRaQyn36vK8EPVWe1ujgAt
 SHOrt3s3ggXnLOJQNTJdzkppE0Ds/PA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-34-yg_cw0NbME2OqnMZ-fJ7aw-1; Mon, 06 Jan 2020 07:19:48 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BD3CC800D4C;
 Mon,  6 Jan 2020 12:19:47 +0000 (UTC)
Received: from lub.tlv (dhcp-4-107.tlv.redhat.com [10.35.4.107])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2335410842A9;
 Mon,  6 Jan 2020 12:19:46 +0000 (UTC)
To: Francois Gouget <fgouget@codeweavers.com>,
 Spice devel <spice-devel@lists.freedesktop.org>
References: <E1inPbd-0008WF-8I@amboise>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <d6f680a2-09f5-fbc0-131e-0e04ebf306eb@redhat.com>
Date: Mon, 6 Jan 2020 14:19:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <E1inPbd-0008WF-8I@amboise>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: yg_cw0NbME2OqnMZ-fJ7aw-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Spice-devel] [PATCH client] build: Avoid line continuation for
 compatibility with older Meson
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
Reply-To: uril@redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On 1/3/20 6:15 PM, Francois Gouget wrote:
> This fixes building spice-gtk on Debian 10.
> 
> Signed-off-by: Francois Gouget <fgouget@codeweavers.com>

Ack.

Maybe mention the issue below in the commit log.

Uri.

> ---
> 
> See https://github.com/mesonbuild/meson/issues/4720
> 
>   tests/meson.build | 5 ++---
>   1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/tests/meson.build b/tests/meson.build
> index 57bd2cc5..bc5be5fd 100644
> --- a/tests/meson.build
> +++ b/tests/meson.build
> @@ -23,9 +23,8 @@ endif
>   
>   # create a static library from a shared one extracting all objects
>   # this allows to rewrite part of it if necessary for mocking
> -test_lib = \
> -  static_library('test-lib',
> -                 objects : spice_client_glib_lib.extract_all_objects())
> +test_lib = static_library('test-lib',
> +                          objects : spice_client_glib_lib.extract_all_objects())
>   
>   foreach src : tests_sources
>     name = 'test-@0@'.format(src).split('.')[0]
> 

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
