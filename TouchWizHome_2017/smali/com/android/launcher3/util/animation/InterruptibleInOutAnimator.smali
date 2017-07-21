.class public Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;
.super Ljava/lang/Object;
.source "InterruptibleInOutAnimator.java"


# static fields
.field private static final IN:I = 0x1

.field private static final OUT:I = 0x2

.field private static final STOPPED:I


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mDirection:I

.field private mFirstRun:Z

.field private mOriginalDuration:J

.field private mOriginalFromValue:F

.field private mOriginalToValue:F

.field private mTag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/View;JFF)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->mFirstRun:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->mTag:Ljava/lang/Object;

    iput v1, p0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->mDirection:I

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput p4, v0, v1

    aput p5, v0, v2

    invoke-static {p1, v0}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    iput-wide p2, p0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->mOriginalDuration:J

    iput p4, p0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->mOriginalFromValue:F

    iput p5, p0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->mOriginalToValue:F

    iget-object v0, p0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator$1;-><init>(Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->mDirection:I

    return p1
.end method

.method private animate(I)V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    iget-object v6, p0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    if-ne p1, v13, :cond_0

    iget v5, p0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->mOriginalToValue:F

    :goto_0
    iget-boolean v6, p0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->mFirstRun:Z

    if-eqz v6, :cond_1

    iget v4, p0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->mOriginalFromValue:F

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->cancel()V

    iput p1, p0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->mDirection:I

    iget-wide v6, p0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->mOriginalDuration:J

    sub-long v2, v6, v0

    iget-object v6, p0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0x0

    iget-wide v10, p0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->mOriginalDuration:J

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v6, p0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v7, 0x2

    new-array v7, v7, [F

    aput v4, v7, v12

    aput v5, v7, v13

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v6, p0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v12, p0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->mFirstRun:Z

    return-void

    :cond_0
    iget v5, p0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->mOriginalFromValue:F

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_1
.end method


# virtual methods
.method public animateIn()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->animate(I)V

    return-void
.end method

.method public animateOut()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->animate(I)V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->mDirection:I

    return-void
.end method

.method public end()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->mDirection:I

    return-void
.end method

.method public getAnimator()Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public isStopped()Z
    .locals 1

    iget v0, p0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->mDirection:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->mTag:Ljava/lang/Object;

    return-void
.end method
