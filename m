Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B590492A17F
	for <lists+spice-devel@lfdr.de>; Mon,  8 Jul 2024 13:49:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00D6910E1F0;
	Mon,  8 Jul 2024 11:49:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="N0+e6DfW";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="ZQUQQW/W";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="hsWdN/eJ";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="nS1xDoPa";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B4BC10E1F0;
 Mon,  8 Jul 2024 11:49:06 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id EF93B1F44E;
 Mon,  8 Jul 2024 11:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1720439345; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=8GVr6Z5vRCBqWpN6hJFGfGrwH1KXRGCLyBRsvDh9JDo=;
 b=N0+e6DfWDH5BoCRF92UbeDh/vqcf7t4+I6AzaV3zMvwRv+7iqg4Jk9I7+dwSTttykeNiAq
 QA/gHGt3gN5ACYOcZsN5y5qQujg4LIfNunrawuxOMNCr2xAJlqjq1i00Kx6ruIfxV4BNP+
 sagmWsHnTKWunh6HWQemCAq8K0bgbPg=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1720439345;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=8GVr6Z5vRCBqWpN6hJFGfGrwH1KXRGCLyBRsvDh9JDo=;
 b=ZQUQQW/WUSPNR/WqRmg0U2P+O6l0qxhuWArUYUr7Ja4mTh29osznoCI8RrzOI2N9VIN/Xw
 aVjirX1SrbdUUpDA==
Authentication-Results: smtp-out2.suse.de;
 dkim=pass header.d=suse.de header.s=susede2_rsa header.b="hsWdN/eJ";
 dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=nS1xDoPa
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1720439344; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=8GVr6Z5vRCBqWpN6hJFGfGrwH1KXRGCLyBRsvDh9JDo=;
 b=hsWdN/eJQXSScz3CjxaOh/8MFv9csAiBb/jiF2P0gHrfXBen9tnP32W2v+nq6FSGlFU8c9
 mnHfHdNj7lFwf00z6VHQOWpablAvagJqlztI2k1OqgQtCjmTLeWGGEYgrjGgbhlklirDGZ
 D21JRQAVYwZi6Vsa6F1cZ8zija2zXTc=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1720439344;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=8GVr6Z5vRCBqWpN6hJFGfGrwH1KXRGCLyBRsvDh9JDo=;
 b=nS1xDoPaSUq0MCpw5VkVraV6NDVq3ceD3a9b9nU3AyY/bYvZoQnU5E9mSfT4mUiJDv2msP
 rDFjpVQ0pHStkSDQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 8D29D13A7F;
 Mon,  8 Jul 2024 11:49:04 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id iEwmITDSi2YLYgAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Mon, 08 Jul 2024 11:49:04 +0000
Message-ID: <0089d865-fe26-4d85-8aa8-ba11a63e0d85@suse.de>
Date: Mon, 8 Jul 2024 13:49:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/qxl: Pin buffer objects for internal mappings
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: airlied@redhat.com, kraxel@redhat.com, dmitry.osipenko@collabora.com,
 zack.rusin@broadcom.com, airlied@gmail.com, daniel@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 regressions@leemhuis.info, virtualization@lists.linux.dev,
 spice-devel@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 David Kaplan <david.kaplan@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
References: <20240702142034.32615-1-tzimmermann@suse.de>
 <096287bd-c882-4d9d-bd4d-19c2fa68b8ec@suse.de>
 <ZouqG20NkG5DdBC_@phenom.ffwll.local>
Content-Language: en-US
From: Thomas Zimmermann <tzimmermann@suse.de>
Autocrypt: addr=tzimmermann@suse.de; keydata=
 xsBNBFs50uABCADEHPidWt974CaxBVbrIBwqcq/WURinJ3+2WlIrKWspiP83vfZKaXhFYsdg
 XH47fDVbPPj+d6tQrw5lPQCyqjwrCPYnq3WlIBnGPJ4/jreTL6V+qfKRDlGLWFjZcsrPJGE0
 BeB5BbqP5erN1qylK9i3gPoQjXGhpBpQYwRrEyQyjuvk+Ev0K1Jc5tVDeJAuau3TGNgah4Yc
 hdHm3bkPjz9EErV85RwvImQ1dptvx6s7xzwXTgGAsaYZsL8WCwDaTuqFa1d1jjlaxg6+tZsB
 9GluwvIhSezPgnEmimZDkGnZRRSFiGP8yjqTjjWuf0bSj5rUnTGiyLyRZRNGcXmu6hjlABEB
 AAHNJ1Rob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPsLAjgQTAQgAOAIb
 AwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgBYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJftODH
 AAoJEGgNwR1TC3ojx1wH/0hKGWugiqDgLNXLRD/4TfHBEKmxIrmfu9Z5t7vwUKfwhFL6hqvo
 lXPJJKQpQ2z8+X2vZm/slsLn7J1yjrOsoJhKABDi+3QWWSGkaGwRJAdPVVyJMfJRNNNIKwVb
 U6B1BkX2XDKDGffF4TxlOpSQzdtNI/9gleOoUA8+jy8knnDYzjBNOZqLG2FuTdicBXblz0Mf
 vg41gd9kCwYXDnD91rJU8tzylXv03E75NCaTxTM+FBXPmsAVYQ4GYhhgFt8S2UWMoaaABLDe
 7l5FdnLdDEcbmd8uLU2CaG4W2cLrUaI4jz2XbkcPQkqTQ3EB67hYkjiEE6Zy3ggOitiQGcqp
 j//OwE0EWznS4AEIAMYmP4M/V+T5RY5at/g7rUdNsLhWv1APYrh9RQefODYHrNRHUE9eosYb
 T6XMryR9hT8XlGOYRwKWwiQBoWSDiTMo/Xi29jUnn4BXfI2px2DTXwc22LKtLAgTRjP+qbU6
 3Y0xnQN29UGDbYgyyK51DW3H0If2a3JNsheAAK+Xc9baj0LGIc8T9uiEWHBnCH+RdhgATnWW
 GKdDegUR5BkDfDg5O/FISymJBHx2Dyoklv5g4BzkgqTqwmaYzsl8UxZKvbaxq0zbehDda8lv
 hFXodNFMAgTLJlLuDYOGLK2AwbrS3Sp0AEbkpdJBb44qVlGm5bApZouHeJ/+n+7r12+lqdsA
 EQEAAcLAdgQYAQgAIAIbDBYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJftOH6AAoJEGgNwR1T
 C3ojVSkIALpAPkIJPQoURPb1VWjh34l0HlglmYHvZszJWTXYwavHR8+k6Baa6H7ufXNQtThR
 yIxJrQLW6rV5lm7TjhffEhxVCn37+cg0zZ3j7zIsSS0rx/aMwi6VhFJA5hfn3T0TtrijKP4A
 SAQO9xD1Zk9/61JWk8OysuIh7MXkl0fxbRKWE93XeQBhIJHQfnc+YBLprdnxR446Sh8Wn/2D
 Ya8cavuWf2zrB6cZurs048xe0UbSW5AOSo4V9M0jzYI4nZqTmPxYyXbm30Kvmz0rYVRaitYJ
 4kyYYMhuULvrJDMjZRvaNe52tkKAvMevcGdt38H4KSVXAylqyQOW5zvPc4/sq9c=
In-Reply-To: <ZouqG20NkG5DdBC_@phenom.ffwll.local>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-4.50 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 NEURAL_HAM_LONG(-1.00)[-1.000];
 R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 XM_UA_NO_VERSION(0.01)[]; MX_GOOD(-0.01)[];
 RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:97:from]; 
 RCVD_VIA_SMTP_AUTH(0.00)[]; RCPT_COUNT_TWELVE(0.00)[15];
 RCVD_TLS_ALL(0.00)[]; MIME_TRACE(0.00)[0:+]; ARC_NA(0.00)[];
 FREEMAIL_ENVRCPT(0.00)[gmail.com];
 FUZZY_BLOCKED(0.00)[rspamd.com]; TO_DN_SOME(0.00)[];
 FROM_EQ_ENVFROM(0.00)[]; FROM_HAS_DN(0.00)[];
 FREEMAIL_CC(0.00)[redhat.com,collabora.com,broadcom.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,leemhuis.info,lists.linux.dev,lists.freedesktop.org,amd.com];
 MID_RHS_MATCH_FROM(0.00)[]; RCVD_COUNT_TWO(0.00)[2];
 TO_MATCH_ENVRCPT_ALL(0.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:email,suse.de:dkim,imap1.dmz-prg2.suse.org:helo,imap1.dmz-prg2.suse.org:rdns];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 DKIM_TRACE(0.00)[suse.de:+]
X-Rspamd-Action: no action
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Rspamd-Queue-Id: EF93B1F44E
X-Spam-Flag: NO
X-Spam-Score: -4.50
X-Spam-Level: 
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

Hi

Am 08.07.24 um 10:58 schrieb Daniel Vetter:
> On Mon, Jul 08, 2024 at 10:09:44AM +0200, Thomas Zimmermann wrote:
>> Hi,
>>
>> ping for a review. This is a bugfix for a serious problem.
> I tried to look around whether there's any place where we could WARN_ON if
> we create a vmap but it's not pinned. But there's lots of places where we
> want the vmap only for the duration of the dma_resv locked section, so
> really can't do that. And your patch removes the unlocked vmap
> implementation, which would be the only place really.

Yeah, we often don't want to pin for a vmap. The driver should hold the 
reservation lock while vmap-ing a buffer. That's why I suggested adding 
a local-map interface that creates and removes mappings within the same 
function. It's something for a separate patchset.

>
> Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

Thanks.

Best regards
Thomas


>
>> Best regards
>> Thomas
>>
>> Am 02.07.24 um 16:20 schrieb Thomas Zimmermann:
>>> Add qxl_bo_pin_and_vmap() that pins and vmaps a buffer object in one
>>> step. Update callers of the regular qxl_bo_vmap(). Fixes a bug where
>>> qxl accesses an unpinned buffer object while it is being moved; such
>>> as with the monitor-description BO. An typical error is shown below.
>>>
>>> [    4.303586] [drm:drm_atomic_helper_commit_planes] *ERROR* head 1 wrong: 65376256x16777216+0+0
>>> [    4.586883] [drm:drm_atomic_helper_commit_planes] *ERROR* head 1 wrong: 65376256x16777216+0+0
>>> [    4.904036] [drm:drm_atomic_helper_commit_planes] *ERROR* head 1 wrong: 65335296x16777216+0+0
>>> [    5.374347] [drm:qxl_release_from_id_locked] *ERROR* failed to find id in release_idr
>>>
>>> Commit b33651a5c98d ("drm/qxl: Do not pin buffer objects for vmap")
>>> removed the implicit pin operation from qxl's vmap code. This is the
>>> correct behavior for GEM and PRIME interfaces, but the pin is still
>>> needed for qxl internal operation.
>>>
>>> Also add a corresponding function qxl_bo_vunmap_and_unpin() and remove
>>> the old qxl_bo_vmap() helpers.
>>>
>>> Future directions: BOs should not be pinned or vmapped unnecessarily.
>>> The pin-and-vmap operation should be removed from the driver and a
>>> temporary mapping should be established with a vmap_local-like helper.
>>> See the client helper drm_client_buffer_vmap_local() for semantics.
>>>
>>> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
>>> Fixes: b33651a5c98d ("drm/qxl: Do not pin buffer objects for vmap")
>>> Reported-by: David Kaplan <david.kaplan@amd.com>
>>> Closes: https://lore.kernel.org/dri-devel/ab0fb17d-0f96-4ee6-8b21-65d02bb02655@suse.de/
>>> Tested-by: David Kaplan <david.kaplan@amd.com>
>>> Cc: Thomas Zimmermann <tzimmermann@suse.de>
>>> Cc: Dmitry Osipenko <dmitry.osipenko@collabora.com>
>>> Cc: Christian König <christian.koenig@amd.com>
>>> Cc: Zack Rusin <zack.rusin@broadcom.com>
>>> Cc: Dave Airlie <airlied@redhat.com>
>>> Cc: Gerd Hoffmann <kraxel@redhat.com>
>>> Cc: virtualization@lists.linux.dev
>>> Cc: spice-devel@lists.freedesktop.org
>>> ---
>>>    drivers/gpu/drm/qxl/qxl_display.c | 14 +++++++-------
>>>    drivers/gpu/drm/qxl/qxl_object.c  | 11 +++++++++--
>>>    drivers/gpu/drm/qxl/qxl_object.h  |  4 ++--
>>>    3 files changed, 18 insertions(+), 11 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/qxl/qxl_display.c b/drivers/gpu/drm/qxl/qxl_display.c
>>> index 86a5dea710c0..bc24af08dfcd 100644
>>> --- a/drivers/gpu/drm/qxl/qxl_display.c
>>> +++ b/drivers/gpu/drm/qxl/qxl_display.c
>>> @@ -584,11 +584,11 @@ static struct qxl_bo *qxl_create_cursor(struct qxl_device *qdev,
>>>    	if (ret)
>>>    		goto err;
>>> -	ret = qxl_bo_vmap(cursor_bo, &cursor_map);
>>> +	ret = qxl_bo_pin_and_vmap(cursor_bo, &cursor_map);
>>>    	if (ret)
>>>    		goto err_unref;
>>> -	ret = qxl_bo_vmap(user_bo, &user_map);
>>> +	ret = qxl_bo_pin_and_vmap(user_bo, &user_map);
>>>    	if (ret)
>>>    		goto err_unmap;
>>> @@ -614,12 +614,12 @@ static struct qxl_bo *qxl_create_cursor(struct qxl_device *qdev,
>>>    		       user_map.vaddr, size);
>>>    	}
>>> -	qxl_bo_vunmap(user_bo);
>>> -	qxl_bo_vunmap(cursor_bo);
>>> +	qxl_bo_vunmap_and_unpin(user_bo);
>>> +	qxl_bo_vunmap_and_unpin(cursor_bo);
>>>    	return cursor_bo;
>>>    err_unmap:
>>> -	qxl_bo_vunmap(cursor_bo);
>>> +	qxl_bo_vunmap_and_unpin(cursor_bo);
>>>    err_unref:
>>>    	qxl_bo_unpin(cursor_bo);
>>>    	qxl_bo_unref(&cursor_bo);
>>> @@ -1205,7 +1205,7 @@ int qxl_create_monitors_object(struct qxl_device *qdev)
>>>    	}
>>>    	qdev->monitors_config_bo = gem_to_qxl_bo(gobj);
>>> -	ret = qxl_bo_vmap(qdev->monitors_config_bo, &map);
>>> +	ret = qxl_bo_pin_and_vmap(qdev->monitors_config_bo, &map);
>>>    	if (ret)
>>>    		return ret;
>>> @@ -1236,7 +1236,7 @@ int qxl_destroy_monitors_object(struct qxl_device *qdev)
>>>    	qdev->monitors_config = NULL;
>>>    	qdev->ram_header->monitors_config = 0;
>>> -	ret = qxl_bo_vunmap(qdev->monitors_config_bo);
>>> +	ret = qxl_bo_vunmap_and_unpin(qdev->monitors_config_bo);
>>>    	if (ret)
>>>    		return ret;
>>> diff --git a/drivers/gpu/drm/qxl/qxl_object.c b/drivers/gpu/drm/qxl/qxl_object.c
>>> index 5893e27a7ae5..cb1b7c2580ae 100644
>>> --- a/drivers/gpu/drm/qxl/qxl_object.c
>>> +++ b/drivers/gpu/drm/qxl/qxl_object.c
>>> @@ -182,7 +182,7 @@ int qxl_bo_vmap_locked(struct qxl_bo *bo, struct iosys_map *map)
>>>    	return 0;
>>>    }
>>> -int qxl_bo_vmap(struct qxl_bo *bo, struct iosys_map *map)
>>> +int qxl_bo_pin_and_vmap(struct qxl_bo *bo, struct iosys_map *map)
>>>    {
>>>    	int r;
>>> @@ -190,7 +190,13 @@ int qxl_bo_vmap(struct qxl_bo *bo, struct iosys_map *map)
>>>    	if (r)
>>>    		return r;
>>> +	r = qxl_bo_pin_locked(bo);
>>> +	if (r)
>>> +		return r;
>>> +
>>>    	r = qxl_bo_vmap_locked(bo, map);
>>> +	if (r)
>>> +		qxl_bo_unpin_locked(bo);
>>>    	qxl_bo_unreserve(bo);
>>>    	return r;
>>>    }
>>> @@ -241,7 +247,7 @@ void qxl_bo_vunmap_locked(struct qxl_bo *bo)
>>>    	ttm_bo_vunmap(&bo->tbo, &bo->map);
>>>    }
>>> -int qxl_bo_vunmap(struct qxl_bo *bo)
>>> +int qxl_bo_vunmap_and_unpin(struct qxl_bo *bo)
>>>    {
>>>    	int r;
>>> @@ -250,6 +256,7 @@ int qxl_bo_vunmap(struct qxl_bo *bo)
>>>    		return r;
>>>    	qxl_bo_vunmap_locked(bo);
>>> +	qxl_bo_unpin_locked(bo);
>>>    	qxl_bo_unreserve(bo);
>>>    	return 0;
>>>    }
>>> diff --git a/drivers/gpu/drm/qxl/qxl_object.h b/drivers/gpu/drm/qxl/qxl_object.h
>>> index 1cf5bc759101..875f63221074 100644
>>> --- a/drivers/gpu/drm/qxl/qxl_object.h
>>> +++ b/drivers/gpu/drm/qxl/qxl_object.h
>>> @@ -59,9 +59,9 @@ extern int qxl_bo_create(struct qxl_device *qdev,
>>>    			 u32 priority,
>>>    			 struct qxl_surface *surf,
>>>    			 struct qxl_bo **bo_ptr);
>>> -int qxl_bo_vmap(struct qxl_bo *bo, struct iosys_map *map);
>>> +int qxl_bo_pin_and_vmap(struct qxl_bo *bo, struct iosys_map *map);
>>>    int qxl_bo_vmap_locked(struct qxl_bo *bo, struct iosys_map *map);
>>> -int qxl_bo_vunmap(struct qxl_bo *bo);
>>> +int qxl_bo_vunmap_and_unpin(struct qxl_bo *bo);
>>>    void qxl_bo_vunmap_locked(struct qxl_bo *bo);
>>>    void *qxl_bo_kmap_atomic_page(struct qxl_device *qdev, struct qxl_bo *bo, int page_offset);
>>>    void qxl_bo_kunmap_atomic_page(struct qxl_device *qdev, struct qxl_bo *bo, void *map);
>> -- 
>> --
>> Thomas Zimmermann
>> Graphics Driver Developer
>> SUSE Software Solutions Germany GmbH
>> Frankenstrasse 146, 90461 Nuernberg, Germany
>> GF: Ivo Totev, Andrew Myers, Andrew McDonald, Boudien Moerman
>> HRB 36809 (AG Nuernberg)
>>

-- 
--
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstrasse 146, 90461 Nuernberg, Germany
GF: Ivo Totev, Andrew Myers, Andrew McDonald, Boudien Moerman
HRB 36809 (AG Nuernberg)

