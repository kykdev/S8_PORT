.class public final Landroid/system/PacketSocketAddress;
.super Ljava/net/SocketAddress;
.source "PacketSocketAddress.java"


# instance fields
.field public sll_addr:[B

.field public sll_hatype:S

.field public sll_ifindex:I

.field public sll_pkttype:B

.field public sll_protocol:S


# direct methods
.method public constructor <init>(I[B)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, v1

    move v4, v1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/system/PacketSocketAddress;-><init>(SISB[B)V

    return-void
.end method

.method public constructor <init>(SI)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/system/PacketSocketAddress;-><init>(SISB[B)V

    return-void
.end method

.method public constructor <init>(SISB[B)V
    .locals 0

    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    iput-short p1, p0, Landroid/system/PacketSocketAddress;->sll_protocol:S

    iput p2, p0, Landroid/system/PacketSocketAddress;->sll_ifindex:I

    iput-short p3, p0, Landroid/system/PacketSocketAddress;->sll_hatype:S

    iput-byte p4, p0, Landroid/system/PacketSocketAddress;->sll_pkttype:B

    iput-object p5, p0, Landroid/system/PacketSocketAddress;->sll_addr:[B

    return-void
.end method
