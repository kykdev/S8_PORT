.class public final Landroid/system/StructTimeval;
.super Ljava/lang/Object;
.source "StructTimeval.java"


# instance fields
.field public final tv_sec:J

.field public final tv_usec:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/system/StructTimeval;->tv_sec:J

    iput-wide p3, p0, Landroid/system/StructTimeval;->tv_usec:J

    return-void
.end method

.method public static fromMillis(J)Landroid/system/StructTimeval;
    .locals 8

    const-wide/16 v6, 0x3e8

    div-long v0, p0, v6

    mul-long v4, v0, v6

    sub-long v4, p0, v4

    mul-long v2, v4, v6

    new-instance v4, Landroid/system/StructTimeval;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/system/StructTimeval;-><init>(JJ)V

    return-object v4
.end method


# virtual methods
.method public toMillis()J
    .locals 6

    const-wide/16 v4, 0x3e8

    iget-wide v0, p0, Landroid/system/StructTimeval;->tv_sec:J

    mul-long/2addr v0, v4

    iget-wide v2, p0, Landroid/system/StructTimeval;->tv_usec:J

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
