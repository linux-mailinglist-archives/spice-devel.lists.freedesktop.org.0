Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E80513120D
	for <lists+spice-devel@lfdr.de>; Mon,  6 Jan 2020 13:20:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED9AB894FF;
	Mon,  6 Jan 2020 12:20:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59CCF894EB
 for <spice-devel@lists.freedesktop.org>; Mon,  6 Jan 2020 12:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578313228;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=x1z95jLnMQmp+EQQB4bm9l2ul8YIeIwChj/tJYYKKHU=;
 b=Mck1N2ELioZxLYVFcFH3pTSQ0T+pTGE9K8tSPh5Eb+XK9hahNnmmUxCv6eyqFF+knSfd2C
 RJqNniB8aznXrcwsRZAHEoBW4+IeC7qtJmFjN72rTgS/j05Wd4JcYZWfydm2yHTGyMyPt1
 BXZ66iw69OEu4Zz9VEY1XCAZFo9CWfI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-365-iuJ0w6RWN-SD4e4CX52r7Q-1; Mon, 06 Jan 2020 07:20:24 -0500
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CF4D6801E7B;
 Mon,  6 Jan 2020 12:20:23 +0000 (UTC)
Received: from lub.tlv (dhcp-4-107.tlv.redhat.com [10.35.4.107])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 36C3C858A2;
 Mon,  6 Jan 2020 12:20:23 +0000 (UTC)
To: Francois Gouget <fgouget@codeweavers.com>,
 Spice devel <spice-devel@lists.freedesktop.org>
References: <E1inPbw-00008t-EV@amboise>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <017be1e3-f365-6d88-e40c-692e94fcfac7@redhat.com>
Date: Mon, 6 Jan 2020 14:20:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <E1inPbw-00008t-EV@amboise>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MC-Unique: iuJ0w6RWN-SD4e4CX52r7Q-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Spice-devel] [PATCH client] channel-display: Fix wording of
 the deep_element_added_cb() documentation
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
> Signed-off-by: Francois Gouget <fgouget@codeweavers.com>

Ack.

Uri.

> ---
>   src/channel-display-gst.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/src/channel-display-gst.c b/src/channel-display-gst.c
> index 6fccf621..bd72625d 100644
> --- a/src/channel-display-gst.c
> +++ b/src/channel-display-gst.c
> @@ -469,7 +469,7 @@ sink_event_probe(GstPad *pad, GstPadProbeInfo *info, gpointer data)
>       return GST_PAD_PROBE_OK;
>   }
>   
> -/* This function is called to used to set a probe on the sink */
> +/* This function is used to set a probe on the sink */
>   static void
>   deep_element_added_cb(GstBin *pipeline, GstBin *bin, GstElement *element,
>                         SpiceGstDecoder *decoder)
> 

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
