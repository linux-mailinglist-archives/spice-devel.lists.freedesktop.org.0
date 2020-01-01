Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0326012DF2F
	for <lists+spice-devel@lfdr.de>; Wed,  1 Jan 2020 15:49:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22A9789BA3;
	Wed,  1 Jan 2020 14:49:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ECAC89B8F
 for <spice-devel@lists.freedesktop.org>; Wed,  1 Jan 2020 14:49:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1577890169;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=NmVhfI84RTnq2srDv0eTipd+CHNt31YYnAK8zUGNjv4=;
 b=djMTvbO7/+rbmevY5ko7lxJiW9fPfhiglewqH72ueuhqO3jEpOMLFczMPu5tL6XxxhHroy
 XfWQAzvw4SgMLafUIw/kW89ycHSGWsDlCMRE+xTFe3EtP3VBMk6O5zlLvS7papohW13y9B
 5lq76z3CpEMxVeDeJJSbuqFgE++q9tg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-166-I3k8ZjjxMJW1_BX9yIEsVg-1; Wed, 01 Jan 2020 09:49:26 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6596A2F29;
 Wed,  1 Jan 2020 14:49:25 +0000 (UTC)
Received: from lub.tlv (dhcp-4-107.tlv.redhat.com [10.35.4.107])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C82CD7BFB0;
 Wed,  1 Jan 2020 14:49:24 +0000 (UTC)
To: franklin zhou <codeit@live.com>,
 "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
References: <MN2PR06MB59667E5D641FCF397D0D0B8AB32A0@MN2PR06MB5966.namprd06.prod.outlook.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <dab14789-b519-6cd0-5a3f-2c337a7376c8@redhat.com>
Date: Wed, 1 Jan 2020 16:49:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <MN2PR06MB59667E5D641FCF397D0D0B8AB32A0@MN2PR06MB5966.namprd06.prod.outlook.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MC-Unique: I3k8ZjjxMJW1_BX9yIEsVg-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Spice-devel] cannot drag file from guest to client.
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

On 12/27/19 4:49 AM, franklin zhou wrote:
> I tried drag file from guest to client, but it cannot success, only drag =

> file from client to guest is ok. is it a bug or need some setting?


It (file-transfer, currently) only works from client to guest.


> =

> =

> =

> client:=A0 window10, ubuntu18.04
> =

> guest: windows10, windows7, ubuntu18.04
> =

> =

> =

> =

> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel
> =


_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
