Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D5D12DF22
	for <lists+spice-devel@lfdr.de>; Wed,  1 Jan 2020 15:30:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62DFD8991E;
	Wed,  1 Jan 2020 14:30:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B015A89B4D
 for <spice-devel@lists.freedesktop.org>; Wed,  1 Jan 2020 14:30:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1577889050;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UsiBkHi1/ObWkP8clLrKeW6H6Edo6wp75MWyF3FAakM=;
 b=YBFWuSilWWh2pDXNkStJDXBtU+4FK2VQgdijQjRM5yo/5Mt4tRcXMfgGmdr6liawLYTReG
 dVIzGoOhNNUNbAPPxDSjSJOZgHZHeExiQi1mETwtq63VgblHG1HsakXrv1HnmuTwsQpwPl
 jxAsMJYhZDVYNDVbPQPt9lIFNRUjy3M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-395-Eqtcie6SPp6xAb555GYciw-1; Wed, 01 Jan 2020 09:30:49 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3E2C38024CC;
 Wed,  1 Jan 2020 14:30:48 +0000 (UTC)
Received: from lub.tlv (dhcp-4-107.tlv.redhat.com [10.35.4.107])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 978411001DD7;
 Wed,  1 Jan 2020 14:30:47 +0000 (UTC)
To: franklin zhou <codeit@live.com>,
 "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
References: <MN2PR06MB5966CD81F9EB406EA5198012B3520@MN2PR06MB5966.namprd06.prod.outlook.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <bfcd9937-4637-cba6-f438-c2cc6757cefd@redhat.com>
Date: Wed, 1 Jan 2020 16:30:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <MN2PR06MB5966CD81F9EB406EA5198012B3520@MN2PR06MB5966.namprd06.prod.outlook.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: Eqtcie6SPp6xAb555GYciw-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Spice-devel] after enable streaming agent ,
 but the mouse does not work in spice-gtk streaming window
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On 12/19/19 5:49 AM, franklin zhou wrote:
> hi, all,

Hi,

> =

> I try=A0streaming agent, after enable,
> =

> when start spicy at client side, it will popup two windows, one is =

> origin,=A0=A0the other one is for guest streaming agent,
> =

> the origin window mouse is ok, but at the other one (for streaming =

> agent) mouse not work,
> Is this a bug?

What graphic cards does the VM have ?

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
