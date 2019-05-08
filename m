Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B4D17370
	for <lists+spice-devel@lfdr.de>; Wed,  8 May 2019 10:15:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA64989226;
	Wed,  8 May 2019 08:15:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from nologin.es (mail.nologin.es [217.75.227.232])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6547189226
 for <spice-devel@lists.freedesktop.org>; Wed,  8 May 2019 08:15:48 +0000 (UTC)
Received: from [62.81.190.65] (account javier.celaya@flexvdi.com HELO javidev)
 by nologin.es (CommuniGate Pro SMTP 6.2.12)
 with ESMTPSA id 33798920; Wed, 08 May 2019 10:15:45 +0200
Message-ID: <f579b661517652235ff44ba2a7a1d987e1df779b.camel@flexvdi.com>
From: Javier Celaya <javier.celaya@flexvdi.com>
To: Victor Toso <victortoso@redhat.com>
Date: Wed, 08 May 2019 10:15:45 +0200
In-Reply-To: <20190508064700.nmvxo7mtndnt3in5@toolbox>
References: <20190503165200.24328-1-javier.celaya@flexvdi.com>
 <20190506103744.rib7kipxs3wdtq6x@toolbox>
 <255653fe8d85310904ffdf7ae4f401cbc1364361.camel@flexvdi.com>
 <20190508064700.nmvxo7mtndnt3in5@toolbox>
Organization: flexVDI
User-Agent: Evolution 3.32.1 (3.32.1-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Spice-devel] [Spice-Gtk] SpiceSession: Create webdav even with
 NULL shared_dir
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
Cc: spice-devel@lists.freedesktop.org, devel@flexvdi.com
Content-Type: multipart/mixed; boundary="===============0416602173=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0416602173==
Content-Type: multipart/alternative; boundary="=-C/SMzpVNBZstKqNCRa5m"


--=-C/SMzpVNBZstKqNCRa5m
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
El mi=C3=A9, 08-05-2019 a las 06:47 +0000, Victor Toso escribi=C3=B3:
> Hi,
> On Mon, May 06, 2019 at 04:06:45PM +0200, Javier Celaya wrote:
> > HiEl lun, 06-05-2019 a las 10:37 +0000, Victor Toso escribi=C3=B3:
> > > Hi,On Fri, May 03, 2019 at 06:52:00PM +0200, Javier Celaya wrote:
> > > > A phodav server created with a NULL shared dir is valid
> > > > andresultsin an error answer to all requests of the webdav
> > > > channel,instead ofsilently ignoring them.This is better than
> > > > just returning NULLfromspice_session_get_webdav_server
> > > > because:a) it crasheschannel_webdav.c:start_client.
> > >=20
> > > Can you give some steps on how to reproduce? I was trying
> > > withremote-viewer on F29 guest earlier and couldn't.
> >=20
> > You cannot just try an existing client, this problem happened as we
> > aredeveloping our new client for flexVDI. You will have to modify
> > some ofthe source code for remote-viewer to see it.The thing is, if
> > you do not set the shared-dir property of theSpiceSession object,
> > it default to the XDG public directory. Thishappens if you do not
> > pass the "shared-dir" command line option, forinstance. But how do
> > I say "I do not want to share any directory withthe guest"?
>=20
> With remote-viewer, only when the user toggle 'Share folder'
> thechannel-webdav would connect, that is, you would see in the logs:
>  > GSpice-DEBUG: 05:55:47.703: ../src/spice-channel.c:2707 webdav-
> 11:0: Open coroutine starting 0x55a774a10a90 > GSpice-DEBUG:
> 05:55:47.703: ../src/spice-channel.c:2544 webdav-11:0: Started
> background coroutine 0x55a774a100d0 > GSpice-DEBUG: 05:55:47.703:
> ../src/spice-session.c:2246 webdav-11:0: Using plain text, port 5900
> > GSpice-DEBUG: 05:55:47.704: ../src/spice-session.c:2177 open host
> pasta.usersys.redhat.com:5900 > GSpice-DEBUG: 05:55:47.704:
> ../src/spice-session.c:2099 webdav-11:0: connecting 0x7f2c4bfffa40...
> > GSpice-DEBUG: 05:55:47.729: ../src/spice-session.c:2083 webdav-
> 11:0: connect ready > GSpice-DEBUG: 05:55:47.730: ../src/spice-
> channel.c:1367 webdav-11:0: channel type 11 id 0 num common caps 1
> num caps 0 > GSpice-DEBUG: 05:55:47.767: ../src/spice-channel.c:1391
> webdav-11:0: Peer version: 2:2 > GSpice-DEBUG: 05:55:47.768:
> ../src/spice-channel.c:1947 webdav-11:0: spice_channel_recv_link_msg:
> 2 caps > GSpice-DEBUG: 05:55:47.768: ../src/spice-channel.c:1961
> webdav-11:0: got remote common caps:
> virt-viewer-session has a bool property that's false by default,for
> sharing the folder. When this turns true,virt-viewer-session-spice
> would then spice_channel_connect() thechannel.
> Does it make sense to your client to only connect to thechannel-
> webdav only if you want to share something?
> > I can set the shared-dir property to a file, or a non-
> > existingdirectory, and the guest just complaints when I try to
> > accessit through webdavd. However, this does not seem a
> > goodsolution...Setting the property to NULL, on the other hand,
> > seems areasonable value for "share nothing", but it
> > makesspice_session_get_webdav_server return NULL and
> > start_clientcrashes.
>=20
> I don't strong disagree that NULL is interesting to say "Nothingto
> share" but if you have nothing to share, you might as wellignore the
> channel? Similar is playback/record audio, in case youdon't have a
> sound card in your client you might as well ignoredit or if you don't
> have usb devices (i guess this is harder thansound card!) you might
> ignore channel-usbredir too.
> > Unless I missed something and there is some way of makingremote-
> > viewer share nothing... then we can just use that way.
> > > > b) even if it did not crash, access to the shared dir from
> > > > theguest   would fail by timeout instead of immediately
> > > > notifying ofan error.
> > >=20
> > > Is that on windows as guest?
> >=20
> > Yes, I tested it on Windows as guest. I tried to fix a) by
> > justreturning early from start_client if
> > spice_session_get_webdav_serverreturned NULL, but then all requests
> > made by spice-webdavd are silentlyignored. There is a webdav
> > channel but no webdav server... so I imaginespice-webdavd on Linux
> > will get the same result.
> > > I spent some time looking at the code, found small issue andadded
> > > achecks on start_client(). Still, I don't see why weshould accept
> > > awebdav server running on NULL instead of only ina valid folder
> > > butI'm also interested in fixing (a) and (b) ifpossible.
> >=20
> > As I explained before (maybe that should go in the commitmessage
> > too) I wanted a way of sharing no directory at all.Passing NULL as
> > shared- dir property seems like a good value,but you tell me if
> > there is a better way.Best regards
>=20
> Well, having the possibility of crash needs a fix either way butlet
> me know if what I said before works for you.

Not connecting the webdav channel works for us, thank you. The crash I
mentioned should be fixed with the patch you sent recently.
Thanks for your help
> Cheers,
> > > Cheers,
> > > > --- src/spice-session.c | 4 ---- 1 file changed, 4 deletions(-
> > > > )diff --git a/src/spice-session.c b/src/spice-
> > > > session.cindex04ba124..cbcd8c4 100644--- a/src/spice-
> > > > session.c+++ b/src/spice-session.c@@ -2813,10 +2813,6 @@
> > > > PhodavServer*spice_session_get_webdav_server(SpiceSession
> > > > *session)     staticGMutex mutex;      const gchar *shared_dir
> > > > =3Dspice_session_get_shared_dir(session);-    if (shared_dir =3D=3D
> > > > NULL){-        SPICE_DEBUG("No shared dir set, not creating
> > > > webdavserver");-        return
> > > > NULL;-    }      g_mutex_lock(&mutex); --
> > > > 2.20.1_______________________________________________Spice-
> > > > devel mailing listSpice-devel@lists.freedesktop.org
> > > > https://lists.freedesktop.org/mailman/listinfo/spice-devel
> > --=20
> >=20
> >=20
> >=20
> > =20
> >=20
> >=20
> >=20
> >=20
> >                                                             Javier
> > Celaya Alastru=C3=A9                     Chief Technology
> > Officer                                      =20
> > javier.celaya@flexvdi.com
> >                                   +34696969959                    =20
> >     j_celaya                                  Legal Information and
> > Privacy Policy                                            Pol=C3=ADtica
> > de confidencialidad            Este mensaje y los ficheros anexos
> > son confidenciales dirigi=C3=A9ndose exclusivamente al destinatario
> > mencionado en el encabezamiento. Si usted ha recibido este correo
> > por error, tenga la amabilidad de eliminarlo de su sistema y no
> > divulgar el contenido a terceros. Los datos personales facilitados
> > por usted o por terceros ser=C3=A1n tratados por FLEXIBLE SOFTWARE
> > SOLUTIONS S.L.U. con la finalidad de gestionar y mantener los
> > contactos y relaciones que se produzcan como consecuencia de la
> > relaci=C3=B3n que mantiene con FLEXIBLE SOFTWARE SOLUTIONS S.L.U.
> > Normalmente, la base jur=C3=ADdica que legitima este tratamiento, ser=
=C3=A1
> > su consentimiento, el inter=C3=A9s leg=C3=ADtimo o la necesidad para
> > gestionar una relaci=C3=B3n contractual o similar. El plazo de
> > conservaci=C3=B3n de sus datos vendr=C3=A1 determinado por la relaci=C3=
=B3n que
> > mantiene con nosotros. Para m=C3=A1s informaci=C3=B3n al respecto, o pa=
ra
> > ejercer sus derechos de acceso, rectificaci=C3=B3n, supresi=C3=B3n,
> > oposici=C3=B3n, limitaci=C3=B3n o portabilidad, dirija una comunicaci=
=C3=B3n por
> > escrito a FLEXIBLE SOFTWARE SOLUTIONS S.L.U: Avenida de Ranillas
> > 1D, Planta 3, Oficina 3G, Zaragoza o al correo electr=C3=B3nico=20
> > pdo@flexvdi.com. En caso de considerar vulnerado su derecho a la
> > protecci=C3=B3n de datos personales, podr=C3=A1 interponer una reclamac=
i=C3=B3n
> > ante la Agencia Espa=C3=B1ola de Protecci=C3=B3n de Datos
> > (www.agpd.es).            =20
--=20




=20





             =20
             =20
         =20
         =20
            Javier Celaya Alastru=C3=A9
         =20
           Chief Technology Officer
     =20
     =20
       =20
          =20
        javier.celaya@flexvdi.com
       =20
       =20
         =20
        +34696969959=20
     =20
         =20
        j_celaya
       =20
       =20
         =20
        Legal Information and Privacy Policy
         =20
     =20
   =20
   =20
       =20
            Pol=C3=ADtica de confidencialidad
            Este mensaje y los ficheros anexos son confidenciales dirigi=C3=
=A9ndose exclusivamente al destinatario mencionado en el encabezamiento. Si=
 usted ha recibido este correo por error, tenga la amabilidad de eliminarlo=
 de su sistema y no divulgar el contenido a terceros. Los datos personales =
facilitados por usted o por terceros ser=C3=A1n tratados por FLEXIBLE SOFTW=
ARE SOLUTIONS S.L.U. con la finalidad de gestionar y mantener los contactos=
 y relaciones que se produzcan como consecuencia de la relaci=C3=B3n que ma=
ntiene con FLEXIBLE SOFTWARE SOLUTIONS S.L.U. Normalmente, la base jur=C3=
=ADdica que legitima este tratamiento, ser=C3=A1 su consentimiento, el inte=
r=C3=A9s leg=C3=ADtimo o la necesidad para gestionar una relaci=C3=B3n cont=
ractual o similar. El plazo de conservaci=C3=B3n de sus datos vendr=C3=A1 d=
eterminado por la relaci=C3=B3n que mantiene con nosotros. Para m=C3=A1s in=
formaci=C3=B3n al respecto, o para ejercer sus derechos de acceso, rectific=
aci=C3=B3n, supresi=C3=B3n, oposici=C3=B3n, limitaci=C3=B3n o portabilidad,=
 dirija una comunicaci=C3=B3n por escrito a FLEXIBLE SOFTWARE SOLUTIONS S.L=
.U: Avenida de Ranillas 1D, Planta 3, Oficina 3G, Zaragoza o al correo elec=
tr=C3=B3nico pdo@flexvdi.com. En caso de considerar vulnerado su derecho a =
la protecci=C3=B3n de datos personales, podr=C3=A1 interponer una reclamaci=
=C3=B3n ante la Agencia Espa=C3=B1ola de Protecci=C3=B3n de Datos (www.agpd=
.es).=20
       =20
   =20


--=-C/SMzpVNBZstKqNCRa5m
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr"><head></head><body style=3D"text-align:left; direction:lt=
r;"><div>Hi,</div><div><br></div><div>El mi=C3=A9, 08-05-2019 a las 06:47 +=
0000, Victor Toso escribi=C3=B3:</div><blockquote type=3D"cite" style=3D"ma=
rgin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex"><pre>Hi,</=
pre><pre><br></pre><pre>On Mon, May 06, 2019 at 04:06:45PM +0200, Javier Ce=
laya wrote:</pre><blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; bord=
er-left:2px #729fcf solid;padding-left:1ex"><pre>Hi</pre><pre>El lun, 06-05=
-2019 a las 10:37 +0000, Victor Toso escribi=C3=B3:</pre><blockquote type=
=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding=
-left:1ex"><pre>Hi,</pre><pre>On Fri, May 03, 2019 at 06:52:00PM +0200, Jav=
ier Celaya wrote:</pre><blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex=
; border-left:2px #729fcf solid;padding-left:1ex"><pre>A phodav server crea=
ted with a NULL shared dir is valid andresults</pre><pre>in an error answer=
 to all requests of the webdav channel,instead of</pre><pre>silently ignori=
ng them.</pre><pre>This is better than just returning NULL</pre><pre>fromsp=
ice_session_get_webdav_server because:a) it crashes</pre><pre>channel_webda=
v.c:start_client.</pre></blockquote><pre><br></pre><pre>Can you give some s=
teps on how to reproduce? I was trying withremote-</pre><pre>viewer on F29 =
guest earlier and couldn't.</pre></blockquote><pre><br></pre><pre>You canno=
t just try an existing client, this problem happened as we are</pre><pre>de=
veloping our new client for flexVDI. You will have to modify some of</pre><=
pre>the source code for remote-viewer to see it.</pre><pre>The thing is, if=
 you do not set the shared-dir property of the</pre><pre>SpiceSession objec=
t, it default to the XDG public directory. This</pre><pre>happens if you do=
 not pass the "shared-dir" command line option, for</pre><pre>instance. But=
 how do I say "I do not want to share any directory with</pre><pre>the gues=
t"?</pre></blockquote><pre><br></pre><pre>With remote-viewer, only when the=
 user toggle 'Share folder' the</pre><pre>channel-webdav would connect, tha=
t is, you would see in the logs:</pre><pre><br></pre><pre> &gt; GSpice-DEBU=
G: 05:55:47.703: ../src/spice-channel.c:2707 webdav-11:0: Open coroutine st=
arting 0x55a774a10a90</pre><pre> &gt; GSpice-DEBUG: 05:55:47.703: ../src/sp=
ice-channel.c:2544 webdav-11:0: Started background coroutine 0x55a774a100d0=
</pre><pre> &gt; GSpice-DEBUG: 05:55:47.703: ../src/spice-session.c:2246 we=
bdav-11:0: Using plain text, port 5900</pre><pre> &gt; GSpice-DEBUG: 05:55:=
47.704: ../src/spice-session.c:2177 open host pasta.usersys.redhat.com:5900=
</pre><pre> &gt; GSpice-DEBUG: 05:55:47.704: ../src/spice-session.c:2099 we=
bdav-11:0: connecting 0x7f2c4bfffa40...</pre><pre> &gt; GSpice-DEBUG: 05:55=
:47.729: ../src/spice-session.c:2083 webdav-11:0: connect ready</pre><pre> =
&gt; GSpice-DEBUG: 05:55:47.730: ../src/spice-channel.c:1367 webdav-11:0: c=
hannel type 11 id 0 num common caps 1 num caps 0</pre><pre> &gt; GSpice-DEB=
UG: 05:55:47.767: ../src/spice-channel.c:1391 webdav-11:0: Peer version: 2:=
2</pre><pre> &gt; GSpice-DEBUG: 05:55:47.768: ../src/spice-channel.c:1947 w=
ebdav-11:0: spice_channel_recv_link_msg: 2 caps</pre><pre> &gt; GSpice-DEBU=
G: 05:55:47.768: ../src/spice-channel.c:1961 webdav-11:0: got remote common=
 caps:</pre><pre><br></pre><pre>virt-viewer-session has a bool property tha=
t's false by default,</pre><pre>for sharing the folder. When this turns tru=
e,</pre><pre>virt-viewer-session-spice would then spice_channel_connect() t=
he</pre><pre>channel.</pre><pre><br></pre><pre>Does it make sense to your c=
lient to only connect to the</pre><pre>channel-webdav only if you want to s=
hare something?</pre><pre><br></pre><blockquote type=3D"cite" style=3D"marg=
in:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex"><pre>I can s=
et the shared-dir property to a file, or a non- existing</pre><pre>director=
y, and the guest just complaints when I try to access</pre><pre>it through =
webdavd. However, this does not seem a good</pre><pre>solution...</pre><pre=
>Setting the property to NULL, on the other hand, seems a</pre><pre>reasona=
ble value for "share nothing", but it makes</pre><pre>spice_session_get_web=
dav_server return NULL and start_client</pre><pre>crashes.</pre></blockquot=
e><pre><br></pre><pre>I don't strong disagree that NULL is interesting to s=
ay "Nothing</pre><pre>to share" but if you have nothing to share, you might=
 as well</pre><pre>ignore the channel? Similar is playback/record audio, in=
 case you</pre><pre>don't have a sound card in your client you might as wel=
l ignored</pre><pre>it or if you don't have usb devices (i guess this is ha=
rder than</pre><pre>sound card!) you might ignore channel-usbredir too.</pr=
e><pre><br></pre><blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; bord=
er-left:2px #729fcf solid;padding-left:1ex"><pre>Unless I missed something =
and there is some way of making</pre><pre>remote-viewer share nothing... th=
en we can just use that way.</pre><blockquote type=3D"cite" style=3D"margin=
:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex"><blockquote ty=
pe=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;paddi=
ng-left:1ex"><pre>b) even if it did not crash, access to the shared dir fro=
m the</pre><pre>guest   would fail by timeout instead of immediately notify=
ing of</pre><pre>an error.</pre></blockquote><pre><br></pre><pre>Is that on=
 windows as guest?</pre></blockquote><pre><br></pre><pre>Yes, I tested it o=
n Windows as guest. I tried to fix a) by just</pre><pre>returning early fro=
m start_client if spice_session_get_webdav_server</pre><pre>returned NULL, =
but then all requests made by spice-webdavd are silently</pre><pre>ignored.=
 There is a webdav channel but no webdav server... so I imagine</pre><pre>s=
pice-webdavd on Linux will get the same result.</pre></blockquote><pre><br>=
</pre><blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px=
 #729fcf solid;padding-left:1ex"><blockquote type=3D"cite" style=3D"margin:=
0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex"><pre>I spent so=
me time looking at the code, found small issue andadded a</pre><pre>checks =
on start_client(). Still, I don't see why weshould accept a</pre><pre>webda=
v server running on NULL instead of only ina valid folder but</pre><pre>I'm=
 also interested in fixing (a) and (b) ifpossible.</pre></blockquote><pre><=
br></pre><pre>As I explained before (maybe that should go in the commit</pr=
e><pre>message too) I wanted a way of sharing no directory at all.</pre><pr=
e>Passing NULL as shared- dir property seems like a good value,</pre><pre>b=
ut you tell me if there is a better way.</pre><pre>Best regards</pre></bloc=
kquote><pre><br></pre><pre>Well, having the possibility of crash needs a fi=
x either way but</pre><pre>let me know if what I said before works for you.=
</pre></blockquote><div><br></div><div>Not connecting the webdav channel wo=
rks for us, thank you. The crash I mentioned should be fixed with the patch=
 you sent recently.</div><div><br></div><div>Thanks for your help</div><div=
><br></div><blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-lef=
t:2px #729fcf solid;padding-left:1ex"><pre><br></pre><pre>Cheers,</pre><pre=
><br></pre><blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-lef=
t:2px #729fcf solid;padding-left:1ex"><blockquote type=3D"cite" style=3D"ma=
rgin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex"><pre>Cheer=
s,</pre><blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2=
px #729fcf solid;padding-left:1ex"><pre>--- src/spice-session.c | 4 ---- 1 =
file changed, 4 deletions(-)</pre><pre>diff --git a/src/spice-session.c b/s=
rc/spice-session.cindex</pre><pre>04ba124..cbcd8c4 100644--- a/src/spice-se=
ssion.c+++ b/src/spice-</pre><pre>session.c@@ -2813,10 +2813,6 @@ PhodavSer=
ver*</pre><pre>spice_session_get_webdav_server(SpiceSession *session)     s=
tatic</pre><pre>GMutex mutex;      const gchar *shared_dir =3D</pre><pre>sp=
ice_session_get_shared_dir(session);-    if (shared_dir =3D=3D NULL)</pre><=
pre>{-        SPICE_DEBUG("No shared dir set, not creating webdav</pre><pre=
>server");-        return NULL;-    }      g_mutex_lock(&amp;mutex); --</pr=
e><pre>2.20.1</pre><pre>_______________________________________________Spic=
e-devel mailing </pre><a href=3D"mailto:listSpice-devel@lists.freedesktop.o=
rg"><pre>listSpice-devel@lists.freedesktop.org</pre></a><pre><br></pre><a h=
ref=3D"https://lists.freedesktop.org/mailman/listinfo/spice-devel"><pre>htt=
ps://lists.freedesktop.org/mailman/listinfo/spice-devel</pre></a><pre><br><=
/pre></blockquote></blockquote><pre>-- </pre><pre><br></pre><pre><br></pre>=
<pre><br></pre><pre><br></pre><pre> </pre><pre><br></pre><pre><br></pre><pr=
e><br></pre><pre><br></pre><pre><br></pre><pre>              </pre><pre>   =
           </pre><pre>          </pre><pre>          </pre><pre>           =
 Javier Celaya Alastru=C3=A9</pre><pre>          </pre><pre>           Chie=
f Technology Officer</pre><pre>      </pre><pre>      </pre><pre>        </=
pre><pre>           </pre><pre>        </pre><a href=3D"mailto:javier.celay=
a@flexvdi.com"><pre>javier.celaya@flexvdi.com</pre></a><pre><br></pre><pre>=
        </pre><pre>        </pre><pre>          </pre><pre>        +3469696=
9959 </pre><pre>      </pre><pre>          </pre><pre>        j_celaya</pre=
><pre>        </pre><pre>        </pre><pre>          </pre><pre>        Le=
gal Information and Privacy Policy</pre><pre>          </pre><pre>      </p=
re><pre>    </pre><pre>    </pre><pre>        </pre><pre>            Pol=C3=
=ADtica de confidencialidad</pre><pre>            Este mensaje y los ficher=
os anexos son confidenciales dirigi=C3=A9ndose exclusivamente al destinatar=
io mencionado en el encabezamiento. Si usted ha recibido este correo por er=
ror, tenga la amabilidad de eliminarlo de su sistema y no divulgar el conte=
nido a terceros. Los datos personales facilitados por usted o por terceros =
ser=C3=A1n tratados por FLEXIBLE SOFTWARE SOLUTIONS S.L.U. con la finalidad=
 de gestionar y mantener los contactos y relaciones que se produzcan como c=
onsecuencia de la relaci=C3=B3n que mantiene con FLEXIBLE SOFTWARE SOLUTION=
S S.L.U. Normalmente, la base jur=C3=ADdica que legitima este tratamiento, =
ser=C3=A1 su consentimiento, el inter=C3=A9s leg=C3=ADtimo o la necesidad p=
ara gestionar una relaci=C3=B3n contractual o similar. El plazo de conserva=
ci=C3=B3n de sus datos vendr=C3=A1 determinado por la relaci=C3=B3n que man=
tiene con nosotros. Para m=C3=A1s informaci=C3=B3n al respecto, o para ejer=
cer sus derechos de acceso, rectificaci=C3=B3n, supresi=C3=B3n, oposici=C3=
=B3n, limitaci=C3=B3n o portabilidad, dirija una comunicaci=C3=B3n por escr=
ito a FLEXIBLE SOFTWARE SOLUTIONS S.L.U: Avenida de Ranillas 1D, Planta 3, =
Oficina 3G, Zaragoza o al correo electr=C3=B3nico </pre><a href=3D"mailto:p=
do@flexvdi.com"><pre>pdo@flexvdi.com</pre></a><pre>. En caso de considerar =
vulnerado su derecho a la protecci=C3=B3n de datos personales, podr=C3=A1 i=
nterponer una reclamaci=C3=B3n ante la Agencia Espa=C3=B1ola de Protecci=C3=
=B3n de Datos (</pre><a href=3D"http://www.agpd.es"><pre>www.agpd.es</pre><=
/a><pre>). </pre><pre>        </pre><pre>    </pre><pre><br></pre></blockqu=
ote></blockquote><div><span><pre>-- <br></pre>


<br>=20
<br>

<table id=3D"sig" width=3D"480" cellspacing=3D"0" cellpadding=3D"0" border-=
spacing=3D"0" style=3D"width:480px;margin:0;padding:0;"><tbody><tr><td text=
-align=3D"right" style=3D"border-right:2px solid #4a4b4a;padding-right:10px=
;" valign=3D"top">
<p style=3D"padding: 0px; text-align: right;">
              <a href=3D"http://www.flexvdi.com" title=3D"flexVDI"><img src=
=3D"https://www.flexvdi.com/signature/logo.flexvdi.png" moz-do-not-send=3D"=
true" alt=3D"flexVDI" border=3D"0" height=3D"45" width=3D"151">
              </a>
          </p>
          <p style=3D"padding: 5px 10px 0px 0px; font-size: 15px; font-weig=
ht: bold; color: rgb(62, 93, 107); line-height: 17px; height: 17px; text-al=
ign: right;">
            <span style=3D"float:right">Javier Celaya Alastru=C3=A9</span>
          </p>
           <p style=3D"padding: 0px 10px 0px 0px; font-size: 13px; font-sty=
le: italic; color: rgb(0, 161, 193); line-height: 17px; height: 17px; text-=
align: right;">Chief Technology Officer</p>
      </td>
      <td style=3D"padding-left:18px;display:block;">
        <p style=3D"padding: 5px 0px 0px;">
           <img src=3D"https://flexvdi.com/signature/mail.png" moz-do-not-s=
end=3D"true" style=3D"margin:1px 7px 0 0;" alt=3D"email" align=3D"left" hei=
ght=3D"17" width=3D"17">
        <a href=3D"mailto:javier.celaya@flexvdi.com" style=3D"font-size:14p=
x;color:#727272;line-height:17px;height:17px;">javier.celaya@flexvdi.com</a=
>
        </p>
        <p style=3D"padding: 5px 0px 0px;">
          <img src=3D"https://flexvdi.com/signature/phone.png" moz-do-not-s=
end=3D"true" style=3D"margin:0 7px 0 0;" alt=3D"Phone" align=3D"left" heigh=
t=3D"17" width=3D"17">
        <span style=3D"font-size:14px;color:#727272;line-height:17px;height=
:17px;">+34696969959</span>=20
      </p>
        <p style=3D"padding: 5px 0px 0px;"> <img src=3D"https://flexvdi.com=
/signature/skype.png" moz-do-not-send=3D"true" style=3D"margin:0 7px 0 0;" =
alt=3D"Skype" align=3D"left" height=3D"17" width=3D"17">=20
        <span style=3D"font-size:14px;color:#727272;line-height:17px;height=
:17px;">j_celaya</span>
        </p>
        <p style=3D"padding: 5px 0px 0px;">
          <img src=3D"https://flexvdi.com/signature/legal.png" moz-do-not-s=
end=3D"true" style=3D"margin:0 7px 0 0;" alt=3D"Legal" align=3D"left" heigh=
t=3D"17" width=3D"17">
        <a href=3D"https://flexvdi.com/es/legal" style=3D"font-size:14px;fo=
nt-style:italic;color:#727272;line-height:17px;height:17px;">Legal Informat=
ion and Privacy Policy</a>
          </p>
      </td>
    </tr>
    <tr>
        <td colspan=3D"2" height=3D"300">
            <p style=3D"font-family:Helvetica,Arial;font-size:14px;font-sty=
le:italic;color:#313131;text-align: center; font-weight: bold">Pol=C3=ADtic=
a de confidencialidad</p>
            <p style=3D"font-family:Helvetica,Arial;font-size:10px;font-sty=
le:italic;color:#313131;text-align: justify">Este mensaje y los ficheros an=
exos son confidenciales dirigi=C3=A9ndose exclusivamente al destinatario me=
ncionado en el encabezamiento. Si usted ha recibido este correo por error, =
tenga la amabilidad de eliminarlo de su sistema y no divulgar el contenido =
a terceros. Los datos personales facilitados por usted o por terceros ser=
=C3=A1n tratados por FLEXIBLE SOFTWARE SOLUTIONS S.L.U. con la finalidad de=
 gestionar y mantener los contactos y relaciones que se produzcan como cons=
ecuencia de la relaci=C3=B3n que mantiene con FLEXIBLE SOFTWARE SOLUTIONS S=
.L.U. Normalmente, la base jur=C3=ADdica que legitima este tratamiento, ser=
=C3=A1 su consentimiento, el inter=C3=A9s leg=C3=ADtimo o la necesidad para=
 gestionar una relaci=C3=B3n contractual o similar. El plazo de conservaci=
=C3=B3n de sus datos vendr=C3=A1 determinado por la relaci=C3=B3n que manti=
ene con nosotros. Para m=C3=A1s informaci=C3=B3n al respecto, o para ejerce=
r sus derechos de acceso, rectificaci=C3=B3n, supresi=C3=B3n, oposici=C3=B3=
n, limitaci=C3=B3n o portabilidad, dirija una comunicaci=C3=B3n por escrito=
 a FLEXIBLE SOFTWARE SOLUTIONS S.L.U: Avenida de Ranillas 1D, Planta 3, Ofi=
cina 3G, Zaragoza o al correo electr=C3=B3nico <a href=3D"mailto:pdo@flexvd=
i.com" style=3D"color:#313131">pdo@flexvdi.com</a>. En caso de considerar v=
ulnerado su derecho a la protecci=C3=B3n de datos personales, podr=C3=A1 in=
terponer una reclamaci=C3=B3n ante la Agencia Espa=C3=B1ola de Protecci=C3=
=B3n de Datos (<a href=3D"http://www.agpd.es" style=3D"color:#313131">www.a=
gpd.es</a>). </p>
        </td>
    </tr>
</tbody></table></span></div></body></html>

--=-C/SMzpVNBZstKqNCRa5m--


--===============0416602173==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0416602173==--

