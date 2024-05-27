Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 879318D05D5
	for <lists+spice-devel@lfdr.de>; Mon, 27 May 2024 17:20:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC6A610EB63;
	Mon, 27 May 2024 15:20:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="PuOMnZnz";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0269E10EB63
 for <spice-devel@lists.freedesktop.org>; Mon, 27 May 2024 15:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1716823199;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=9KxSTUQ1NnUa35woXBEfaNcAXZIEpGQS+4xRQta0TUs=;
 b=PuOMnZnzGr09LBDN4ZULzjclTohxpZ/D0OteBRDceGpdZLwd7Ntq4xfblmanNOkYgA3Sxo
 BocRg0TQR+USGajLOUwe/MktZNeLOWRk8HCPrR8wHpGAPoT1lu/fOfUYru4B2bZ8wO6FZt
 /3AZ2INgDOd9Rhz6qF3ucTnx+6RlHEo=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-561-ZwUvN4BMN2yITiV0L5P9gQ-1; Mon, 27 May 2024 11:19:54 -0400
X-MC-Unique: ZwUvN4BMN2yITiV0L5P9gQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7D6C285A58C;
 Mon, 27 May 2024 15:19:54 +0000 (UTC)
Received: from localhost (unknown [10.45.224.179])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DD60941D;
 Mon, 27 May 2024 15:19:53 +0000 (UTC)
Date: Mon, 27 May 2024 17:19:52 +0200
From: Victor Toso <victortoso@redhat.com>
To: Michael Scherle <michael.scherle@rz.uni-freiburg.de>
Cc: Frediano Ziglio <freddy77@gmail.com>, spice-devel@lists.freedesktop.org, 
 "dirk.von.suchodoletz@rz.uni-freiburg.de"
 <dirk.von.suchodoletz@rz.uni-freiburg.de>
Subject: Re: High delay of video-streams
Message-ID: <jgs46gtlnammisxpmxg5suavqcc2lz3tjplvc4kb4gsrdhhb6e@zb4rifwhrh3p>
References: <31bdee77-ac54-4da4-bb8f-fbc00882070d@rz.uni-freiburg.de>
 <03544c6b-b8b4-441a-b0aa-9d6a629c9794@rz.uni-freiburg.de>
 <CAHt6W4cOrnTZhEAjyfQY3Mf5Y93ynNNeM8Y2+3bCLHvDhXLzfw@mail.gmail.com>
 <267f038a-3d8f-4d7f-bb13-e77c4ea69558@rz.uni-freiburg.de>
 <CAHt6W4eOY0GfTBiVfjC2ksQGxqTBWouxo3Wnfeu5Urtikgu9GQ@mail.gmail.com>
 <18fdc646-f2ca-44e8-b329-4d82b7d56071@rz.uni-freiburg.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="gemmcc4konsayrwq"
Content-Disposition: inline
In-Reply-To: <18fdc646-f2ca-44e8-b329-4d82b7d56071@rz.uni-freiburg.de>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.1
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


--gemmcc4konsayrwq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Apr 16, 2024 at 12:59:50PM GMT, Michael Scherle wrote:
> Hello,
>=20
> Thanks for your changesets, they definitely reduce the delay significantly
> (to a similar level as our provosoric fixes, but yours are much cleaner).
>=20
> On the client side (spice-gtk) I looked at the problem with the high
> decoding time (2 frames buffering) and was able to find a simple fix with
> the help of the gstreamer community:
>=20
> ---
>  src/channel-display-priv.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/src/channel-display-priv.h b/src/channel-display-priv.h
> index 1a7590a..a2af1a7 100644
> --- a/src/channel-display-priv.h
> +++ b/src/channel-display-priv.h
> @@ -177,7 +177,7 @@ static const struct {
>       * (hardcoded in spice-server), let's add it here to avoid the warni=
ng.
>       */
>      { SPICE_DISPLAY_CAP_CODEC_H264, "h264",
> -      "h264parse ! avdec_h264", "video/x-h264,stream-format=3Dbyte-strea=
m" },
> +      "h264parse ! avdec_h264",
> "video/x-h264,stream-format=3Dbyte-stream,alignment=3Dau" },
>=20
>      /* SPICE_VIDEO_CODEC_TYPE_VP9 */
>      { SPICE_DISPLAY_CAP_CODEC_VP9, "vp9",
> @@ -185,7 +185,7 @@ static const struct {
>=20
>      /* SPICE_DISPLAY_CAP_CODEC_H265 */
>      { SPICE_DISPLAY_CAP_CODEC_H265, "h265",
> -      "h265parse ! avdec_h265", "video/x-h265,stream-format=3Dbyte-strea=
m" },
> +      "h265parse ! avdec_h265",
> "video/x-h265,stream-format=3Dbyte-stream,alignment=3Dau" },

jfyi, this was discussed in the past. It depends how spice server
was configured too, no? I'm not sure, it has been awhile. What I
mean is, what/who is doing h264 encoding. We had a
spice-streaming-agent that wrapped guest's GPU h264 encoding and
sent to the client, with the same protocol.... depending how it
is configured, the stream-format was important I think. Again,
not 100% sure.

>=20
>  };
>=20
> --=20
> 2.40.1
>=20
> However, this change should probably still be tested on different setups.
> Since I don't know whether they are always au aligned, I should probably
> find out about that.
>=20
> Also I have made other experiments, such as removing decoding_queue in
> channel-display-gst.c and adding the SpiceGstFrame to the metadata of the
> gstBuffer instead, as well as completely ignoring the display time of a
> frame and instead displaying them immediately. With that i got down to
> 60-80ms delay.

If you send patches about this one, feel free to tag me. This
looks cool.
=20
> Do you know if your changes or similar ones that reduce the
> delay will go upstream soon?
>=20
> While looking through the source code, I found
> SPICE_KEYPRESS_DELAY, which is not mentioned anywhere. Is this
> the only use to save some network traffic? Is there any reason
> not to always set this to 0 in today's network environments?
> (And maybe set the default to 0?)

Introduced in c03e002152dc0c, commit log says:

 > widget: add keypress-delay property
 >
 > The delay before the press event is sent to the server if the key is
 > kept pressed. If the key is released within that time, that delay is
 > ignored and a single key-press-release event will be sent.

Introduced in 2012. I'm pretty sure there were reasons for it.
Not sure if worth to remove it.

Cheers,
Victor

> Michael
>=20
> On 03.04.24 21:22, Frediano Ziglio wrote:
> > Frediano
> >=20
> > Il giorno mar 2 apr 2024 alle ore 15:27 Michael Scherle
> > <michael.scherle@rz.uni-freiburg.de> ha scritto:
> > >=20
> > > Hi Frediano,
> > >=20
> > > thank you very much for your detailed answer.
> > >=20
> > >=20
> > > On 02.04.24 14:13, Frediano Ziglio wrote:
> > >=20
> > > > Really short explanation: Lipsync.
> > > >=20
> > > > Less cryptic explanation: video streaming was added much time ago w=
hen
> > > > desktops used 2D graphic drawings, like lines, fillings, strings and
> > > > so on. At that time networks were more unreliable, latency bigger, =
and
> > > > with high probability a continuous bitblt on the same big area was a
> > > > video playing. So the idea of detecting the video playing and
> > > > optimizing to sync audio and video was a good idea.
> > >=20
> > > ok this explains a lot.
> > >=20
> > > > Now starts my opinionated ideas. The idea of continuous bitblt being
> > > > only a video stream is wrong, nowadays desktops do use large bitblt
> > > > for everything, or better they use 3D cards a lot and compose the
> > > > various windows on the screen which appears to us as just bitblt,
> > > > often contiguous. So the delay should just be removed optimizing for
> > > > real time video streaming. As you realize the algorithm also keeps
> > > > increasing the delay for every glitch found which is not improving =
the
> > > > user experience. I have different changesets removing entirely all
> > > > these delays (it's possible to get this just by changing the server
> > > > part), the result is much less delay, the audio/video sync (watchin=
g a
> > > > movie) is, with nowadays networks, acceptable.
> > >=20
> > >=20
> > > Would it be possible to get your changesets, so that I could try them
> > > out? I would be interested to know how this can be implemented with o=
nly
> > > server-side changes. A dirty idea I had (and tried) would be to set t=
he
> > > mm_time to the past so that the client displays the image immediately,
> > > but that would not be a good fix in my opinion.
> > >=20
> >=20
> > That's the commit
> > https://cgit.freedesktop.org/~fziglio/spice-server/commit/?h=3Dnvidia&i=
d=3Deaaec7be80a9d402f425f7571bb27a082ebf739a.
> >=20
> > > I would rather consider it reasonable that the server timestamps the
> > > frames (and perhaps the sound) with the encoding time and that the
> > > client itself calculates when it wants to display them (from the diff=
s).
> > > So the client could decide if it wants to display the images directly=
 or
> > > add some delay to compensate for network jitter (or lipsync) or maybe
> > > even implement something like v-sync. These would of course be breaki=
ng
> > > changes that would require changes to the client and server and would
> > > make them incompatible with older versions. If this could not be done
> > > directly, due to compatibility reasons, maybe this could be implement=
ed
> > > in a separate low latency mode or something like that (which both ser=
ver
> > > and client needs to support).
> > >=20
> >=20
> > I suppose the negative time you though is something like
> > https://cgit.freedesktop.org/~fziglio/spice-server/commit/?h=3Dnvidia&i=
d=3D4a1a2a20505bc453f30573a0d453a9dfa1d97e7c
> > (which improve the previous).
> >=20
> > > Even with above ideas applied, for spice-gtk, I have noticed a high
> > > decode delay. The gstreamer pipeline always seems to keep at least 2
> > > frames in the pipeline (regardless of the frame rate) which increases
> > > the delay further. Have you also noticed this? I'm currently looking
> > > into the reason for this.
> > >=20
> > > When testing stuff out we saw that Sunshine/Moonlight performed very
> > > well in generating  a low delay and high QoE. That is kind of our
> > > benchmark for remote access to strive for :)
> > >=20
> > > Greetings
> > > Michael
> > >=20
> >=20
> > Frediano
> >=20
> > > > >=20
> > > > > On 15.03.24 14:08, Michael Scherle wrote:
> > > > > > Hello spice developers,
> > > > > >=20
> > > > > > we are trying to develop an Open Source virtual desktop infrast=
ructure
> > > > > > to be deployed at multiple German universities as described, by=
 my
> > > > > > colleagues, in the paper which I have put in the attachment. The
> > > > > > solution based on openstack, qemu, spice... Our plan is also to=
 have VM
> > > > > > instances with virtual GPUs (SR-IOV). Due to the resulting requ=
irements,
> > > > > > it is necessary to transmit the image data as a video stream.
> > > > > > We have seen Vivek Kasireddy recent work on spice which solves =
exactly
> > > > > > this problem. However, when we tested it, we noticed a very hig=
h input
> > > > > > to display delay (400 ms+ but only if the image data is transfe=
rred as
> > > > > > video-stream). However, the problem seems to be a more general =
spice
> > > > > > problem or is there something wrong with our setup or are there=
 special
> > > > > > parameters that we are missing?
> > > > > >=20
> > > > > > Our setup:
> > > > > >=20
> > > > > > QEMU: https://gitlab.freedesktop.org/Vivek/qemu/-/commits/spice=
_gl_on_v2
> > > > > > Spice:
> > > > > > https://gitlab.freedesktop.org/Vivek/spice/-/commits/encode_dma=
buf_v6
> > > > > > virt-viewer
> > > > > > Intel HW decoder/encoder (but same with sw)
> > > > > >=20
> > > > > > I have looked into what is causing the delay and have noticed t=
hat
> > > > > > encoding only takes about 3-4ms. In general, the image seems to=
 reach
> > > > > > the client in less than 15ms.
> > > > > > The main problem seems to be that gstreamer gets a very high
> > > > > > margin(https://gitlab.freedesktop.org/spice/spice-gtk/-/blob/ma=
ster/src/channel-display.c?ref_type=3Dheads#L1773) and therefore waits a lo=
ng time before starting decoding. And the reason for the high margin seems =
to be the bad mm_time_offset https://gitlab.freedesktop.org/spice/spice-gtk=
/-/blob/master/src/spice-session.c?ref_type=3Dheads#L2418 which is used to =
offset the server time to the client time (with some margin). And this vari=
able is set by the spice server to initially 400 ms https://gitlab.freedesk=
top.org/spice/spice/-/blob/master/server/reds.cpp?ref_type=3Dheads#L3062 an=
d gets updated with the latency https://gitlab.freedesktop.org/spice/spice/=
-/blob/master/server/reds.cpp?ref_type=3Dheads#L2614 (but only increased). =
I still need to see how this latency is calculated.
> > > > > >=20
> > > > > > Am I missing something or is this design not intended for trans=
mitting
> > > > > > interactive content via video stream?
> > > > > > Temporarily overwriting the margin and tweaking parameter setti=
ngs on
> > > > > > the msdkh264dec brought the delay to about 80-100ms, which is n=
ot yet
> > > > > > optimal but usable. To see what is technical possible on my set=
up, I
> > > > > > made a comparison using moonlight/sunshine which resulted in an=
 delay of
> > > > > > 20-40ms.
> > > > > >=20
> > > > > > Our goal is to achieve some round trip time similar to the
> > > > > > moonlight/sunshine scenario to achieve a properly usable desktop
> > > > > > experience.
> > > > > >=20
> > > > > > Greetings
> > > > > > Michael
> > > > >=20
> > > > > Greetings
> > > > > Michael
>=20

--gemmcc4konsayrwq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmZUpJgACgkQl9kSPeN6
SE+DcA//dSVNpMDClDSFcu4YxlHPN3wTHNy4HqYsvGCWY7wqXpPxEFZpwv2O1B9+
KQEYfN+zH/cLWMGJBRt1InJ//c/PYhFxjQ//a0vOEYYjWC/frHoDBY9Jd85+iVjw
aGkdJIKTBjiSRJ5n9MBeOpGXLfiL+4fmQlWiDnYUQO/mWDPbprrSTnsHob2sPp22
rlO/oDvezLEfII03/8Lm4pc9Etjkw1DctRS6SG2wf1z/j77RW40XneeCuth2097/
cjFPFAG1KO7JVEVJB24s+KzFyT90QVpM9VgEzN7L2ibgkJplQrk2eHgISHfSbqoS
dpRVgqPl/vxYX5Tx7kY+HezAvJx5z6bUDXi1iorX+b1NdkxmfIV/66Fhv9LVwDLA
uLNX6CU4GO7TJoBJcRH2R/Bw+CmxBI2w8PBEOoSAACq1KRd0Uk1KqSNVQZigp6ws
PgM35WrA/odlksI8XQj4YPFHKeagq/1SngRUI/19TFuuqLSz0H3dFpOOjupp8MfP
85pupYXFFWqWC0SdcIZGwl+FzScidv+eNp3AQIKdJ0qK2xTMpzSHX7WYicM3cVXx
dtWS75+CblCt161bR6kM1CRI3nF8G2m0umx+PoNLOxRmUZ/vXxnKXxvS07VMaTrw
W/d5TkqjmpiTwpCvAhYHTE5uS2cL+ox+Xn4Uoyornaj1lIGERPo=
=Coqq
-----END PGP SIGNATURE-----

--gemmcc4konsayrwq--

