Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5ED1BA35D
	for <lists+spice-devel@lfdr.de>; Mon, 27 Apr 2020 14:12:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E21E46E2D7;
	Mon, 27 Apr 2020 12:12:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF70A6E2D5
 for <spice-devel@lists.freedesktop.org>; Mon, 27 Apr 2020 12:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587989524;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=H/UKpACIX4aU2ZXZIC25UNCDgOXMqBzcrmySPpwXisc=;
 b=evN3Dpe+eW6MJEJuFlEmGbgx+Zg6ie7oeHR8AK8TOzgEHkwR3WBejiZjKOAM/14DDYoicP
 4dUmfOKBwqOr0pFFe9rRO5MmCWsBtvH+N+bgXAdha01VXCAiU3vhQ+pfG+lLZvAEkjLC+R
 wqsDfCzxNbJLTi8Mcv2z4HqfTXZYzTE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-347-SMJGHkChOY2iSXAbWTCsUA-1; Mon, 27 Apr 2020 08:12:02 -0400
X-MC-Unique: SMJGHkChOY2iSXAbWTCsUA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 75B161005510;
 Mon, 27 Apr 2020 12:12:01 +0000 (UTC)
Received: from lub.tlv (unknown [10.35.206.205])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 99F2210013A1;
 Mon, 27 Apr 2020 12:12:00 +0000 (UTC)
To: Tomasz Chmielewski <mangoo@wpkg.org>, spice-devel@lists.freedesktop.org
References: <ac5afbf39f86a67d33ae3c73eecc814e@virtall.com>
 <316cfa9cdf39418f9436489c7418ca20@wpkg.org>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <e8a05f08-f340-7b85-38ea-20a7cb765dfd@redhat.com>
Date: Mon, 27 Apr 2020 15:11:57 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <316cfa9cdf39418f9436489c7418ca20@wpkg.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] spice X session?
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

On 4/27/20 6:17 AM, Tomasz Chmielewski wrote:
> Is it possible to configure a spice X session?
> 
> So that X session is available remotely?
> 
> 
> Tomasz

Hi Tomasz,

There are two Spice projects that do that: x11spice and Xspice.

Uri.

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
