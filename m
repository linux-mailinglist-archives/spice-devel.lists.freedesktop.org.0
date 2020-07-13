Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AEFA21D076
	for <lists+spice-devel@lfdr.de>; Mon, 13 Jul 2020 09:31:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86AFA6E250;
	Mon, 13 Jul 2020 07:31:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDF5C6E250
 for <spice-devel@lists.freedesktop.org>; Mon, 13 Jul 2020 07:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594625513;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ku/GAiQJ/3EORiM1Q8I8pM15B9M8pS+n2n0oKpX6xwk=;
 b=WEBcEc+ZtBt3kHvsMzACvwRT5Gtlhpdd2/J/K9GMaX6Y/yNr3T9Vvvm8IQxGwVPDbenABh
 mbgHQIWn53N3m/BJeHLDAIa6B6vhU7B3ODMv2ve7I34DbOLobg7vmb6VC8BB49v0pvyEDC
 VZtla2CnZKDz4l7YbacO8+N8ea4AIao=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-451-4kmHLdSSNnisXNIjWfDSLA-1; Mon, 13 Jul 2020 03:31:51 -0400
X-MC-Unique: 4kmHLdSSNnisXNIjWfDSLA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C3D4A8064AA;
 Mon, 13 Jul 2020 07:31:50 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-115-89.ams2.redhat.com
 [10.36.115.89])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 982352E021;
 Mon, 13 Jul 2020 07:31:49 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id B21529AB2; Mon, 13 Jul 2020 09:31:48 +0200 (CEST)
Date: Mon, 13 Jul 2020 09:31:48 +0200
From: Gerd Hoffmann <kraxel@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <20200713073148.3w63nucg5z23kzlm@sirius.home.kraxel.org>
References: <20200712080107.175-1-yuri.benditovich@daynix.com>
MIME-Version: 1.0
In-Reply-To: <20200712080107.175-1-yuri.benditovich@daynix.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Subject: Re: [Spice-devel] [PATCH 1/2] qxl-wddm-dod: fix behavior on v5
 device
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
Cc: yan@daynix.com, spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

  Hi,

> @@ -4795,7 +4796,8 @@ NTSTATUS QxlDevice::HWClose(void)
>  {
>      PAGED_CODE();
>      QxlClose();
> -    if (m_bUefiMode)
> +    /* QXL device rev 5+ requires explicit reset to switch to VGA mode */
> +    if (m_bUefiMode || m_pQxlDod->Revision() > 4)
>      {
>          DbgPrint(TRACE_LEVEL_INFORMATION, ("%s: Resetting the device\n", __FUNCTION__));
>          WRITE_PORT_UCHAR((PUCHAR)(m_IoBase + QXL_IO_RESET), 0);

I'm wondering why this is conditional in the first place?
Isn't it a good idea to reset the device on close no matter what?

take care,
  Gerd

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
