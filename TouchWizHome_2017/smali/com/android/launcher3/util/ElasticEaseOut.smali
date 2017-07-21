.class public final Lcom/android/launcher3/util/ElasticEaseOut;
.super Ljava/lang/Object;
.source "ElasticEaseOut.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mAmplitude:F

.field private mPeriod:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/util/ElasticEaseOut;->mAmplitude:F

    iput p2, p0, Lcom/android/launcher3/util/ElasticEaseOut;->mPeriod:F

    return-void
.end method

.method private out(FFF)F
    .locals 10

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpl-float v3, p1, v1

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    cmpl-float v3, p1, v2

    if-ltz v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    cmpl-float v3, p3, v1

    if-nez v3, :cond_2

    const p3, 0x3e99999a    # 0.3f

    :cond_2
    cmpl-float v1, p2, v1

    if-eqz v1, :cond_3

    cmpg-float v1, p2, v2

    if-gez v1, :cond_4

    :cond_3
    const/high16 p2, 0x3f800000    # 1.0f

    const/high16 v1, 0x40800000    # 4.0f

    div-float v0, p3, v1

    :goto_1
    float-to-double v2, p2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const/high16 v1, -0x3ee00000    # -10.0f

    mul-float/2addr v1, p1

    float-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-float v1, p1, v0

    float-to-double v4, v1

    mul-double/2addr v4, v8

    float-to-double v6, p3

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    double-to-float v1, v2

    goto :goto_0

    :cond_4
    float-to-double v4, p3

    div-double/2addr v4, v8

    div-float v1, v2, p2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-float v0, v2

    goto :goto_1
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    iget v0, p0, Lcom/android/launcher3/util/ElasticEaseOut;->mAmplitude:F

    iget v1, p0, Lcom/android/launcher3/util/ElasticEaseOut;->mPeriod:F

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/util/ElasticEaseOut;->out(FFF)F

    move-result v0

    return v0
.end method
