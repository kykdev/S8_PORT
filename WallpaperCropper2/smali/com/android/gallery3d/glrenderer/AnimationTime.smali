.class public Lcom/android/gallery3d/glrenderer/AnimationTime;
.super Ljava/lang/Object;
.source "AnimationTime.java"


# static fields
.field private static volatile sTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()J
    .locals 2

    sget-wide v0, Lcom/android/gallery3d/glrenderer/AnimationTime;->sTime:J

    return-wide v0
.end method

.method public static startTime()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/gallery3d/glrenderer/AnimationTime;->sTime:J

    sget-wide v0, Lcom/android/gallery3d/glrenderer/AnimationTime;->sTime:J

    return-wide v0
.end method

.method public static update()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/gallery3d/glrenderer/AnimationTime;->sTime:J

    return-void
.end method
