.class public final Landroid/icu/util/DateInterval;
.super Ljava/lang/Object;
.source "DateInterval.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final fromDate:J

.field private final toDate:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/icu/util/DateInterval;->fromDate:J

    iput-wide p3, p0, Landroid/icu/util/DateInterval;->toDate:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/icu/util/DateInterval;

    if-eqz v2, :cond_1

    move-object v0, p1

    nop

    nop

    iget-wide v2, p0, Landroid/icu/util/DateInterval;->fromDate:J

    iget-wide v4, v0, Landroid/icu/util/DateInterval;->fromDate:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Landroid/icu/util/DateInterval;->toDate:J

    iget-wide v4, v0, Landroid/icu/util/DateInterval;->toDate:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public getFromDate()J
    .locals 2

    iget-wide v0, p0, Landroid/icu/util/DateInterval;->fromDate:J

    return-wide v0
.end method

.method public getToDate()J
    .locals 2

    iget-wide v0, p0, Landroid/icu/util/DateInterval;->toDate:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Landroid/icu/util/DateInterval;->fromDate:J

    iget-wide v2, p0, Landroid/icu/util/DateInterval;->toDate:J

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Landroid/icu/util/DateInterval;->fromDate:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/icu/util/DateInterval;->toDate:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
