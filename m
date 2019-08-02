Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99CA47F4ED
	for <lists+spice-devel@lfdr.de>; Fri,  2 Aug 2019 12:21:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FD736EDC5;
	Fri,  2 Aug 2019 10:21:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7560C6EDA8
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 10:21:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0E92F4ACDF
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 10:21:22 +0000 (UTC)
Received: from localhost (unknown [10.32.181.128])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AD79119722;
 Fri,  2 Aug 2019 10:21:21 +0000 (UTC)
Date: Fri, 2 Aug 2019 12:21:20 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190802102120.wbvwlnqgrruru7wq@wingsuit>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-13-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190530142254.28937-13-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Fri, 02 Aug 2019 10:21:22 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 13/13] red-channel-client:
 Add some comment on the flush code
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============0286474026=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0286474026==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wzkqdmoxybocdnyz"
Content-Disposition: inline


--wzkqdmoxybocdnyz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, May 30, 2019 at 03:22:54PM +0100, Frediano Ziglio wrote:
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  server/red-channel-client.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/server/red-channel-client.c b/server/red-channel-client.c
> index 3fd51d78b..337733d5d 100644
> --- a/server/red-channel-client.c
> +++ b/server/red-channel-client.c
> @@ -1319,6 +1319,9 @@ void red_channel_client_push(RedChannelClient *rcc)
>      /* prepare_pipe_add() will reenable WRITE events when the rcc->priv-=
>pipe is empty
>       * red_channel_client_ack_zero_messages_window() will reenable WRITE=
 events
>       * if we were waiting for acks to be received
> +     * If we don't remove WRITE if we are waiting for ack we will be keep
> +     * notified that we can write and we then exit (see pipe_item_get) a=
s we
> +     * are waiting for the ack consuming CPU in a tight loop
>       */
>      if ((red_channel_client_no_item_being_sent(rcc) && g_queue_is_empty(=
&rcc->priv->pipe)) ||
>          red_channel_client_waiting_for_ack(rcc)) {
> @@ -1326,6 +1329,9 @@ void red_channel_client_push(RedChannelClient *rcc)
>          /* channel has no pending data to send so now we can flush data =
in
>           * order to avoid data stall into buffers in case of manual
>           * flushing
> +         * We need to flush also in case of ack as it is possible
> +         * that for a long train of small messages the message that would
> +         * cause the client to send the ack is still in the queue

Acked-by: Victor Toso <victortoso@redhat.com>,
let me know if something is missing in this series

>           */
>          red_stream_flush(rcc->priv->stream);
>      }
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--wzkqdmoxybocdnyz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1EDqAACgkQl9kSPeN6
SE/Iag//Ux3NX9rEWP4OwJS5I8WYFknIIWl1fVqn5vT5XsVY3fFrJ4DgYfD3OvOM
o6q3uC6jldxYUl5Rcahk/iZrYk1fb/SHkbaqzFMGHjvQuBKMwhSKujcGo4slkIw9
fqfY/603vunTMGMUvQslJXXywHQ3abyiJuyv3rbW9/u+zkfo/2P4JVDh+fEIh+m1
VDBwyYuu+HWzC1/ePP05VHvYVQR0cqaZgrRzTrPBOPnpaQvHgD2LKdKLwHDQGSMT
VlvTS45txsogMBQMBiJ092uocD3rF1raCioSSf/8tjKPo6hv4ihemVbhxMd3fZ0+
G+G1bjsv5CsoXBn99WMTRYzm/5kTTMPGEBKh0uU/bPNyHJ8xEP5HWH/ojFPUtdJZ
Lh12kttnd9F0SP8otEQnEdCWo5Xj5Y2fEARZWuYC8OzO9LxafhJqBEP6+cemNNv9
rluOGSRgoja/n/ZLk6GjLlLfTOZODzYepxYdul6EAWynSxhEYRY7kQ2CQNJjGErf
lFIO6DfcJ7PVPl6myDbqqp9waEZX9U0obAoXP23+zFjS3LTr7qJYFwC5knjttpEd
IoMCd6o3RPmqz0WoidQMpAnmO0ww5HXI3gFTZzd6e/9jXcwRj9hLW8mKimSAvqs/
QTxogxLHtIefUMcObRrZTLqNOwcf2umzjogkwZ2tUvp+3s3ubcA=
=2AXT
-----END PGP SIGNATURE-----

--wzkqdmoxybocdnyz--

--===============0286474026==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0286474026==--
