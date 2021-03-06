.class public Lcom/android/keyguard/sec/opentheme/common/Sprite;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/opentheme/common/Sprite$SimpleModifier;
    }
.end annotation


# static fields
.field private static final MAX_MODIFIERS_SZIE:I = 0x5


# instance fields
.field public currentFrame:I

.field public frameSize:I

.field public height:F

.field private mAngle:F

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mIsMoved:Z

.field private mIsRotated:Z

.field private mModifierCount:I

.field private mModifiers:[Lcom/android/keyguard/sec/opentheme/common/SpriteModifier;

.field private mMoveDuration:J

.field private mMoveEndX:F

.field private mMoveEndY:F

.field private mMoveStartTime:J

.field private mMoveStartX:F

.field private mMoveStartY:F

.field private mPivotX:F

.field private mPivotY:F

.field private mScale:F

.field public visible:Z

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->visible:Z

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/keyguard/sec/opentheme/common/SpriteModifier;

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mModifiers:[Lcom/android/keyguard/sec/opentheme/common/SpriteModifier;

    iput p1, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->x:F

    iput p2, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->y:F

    iput p3, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->width:F

    iput p4, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->height:F

    return-void
.end method

.method private onMoveTo()V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mMoveStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget-wide v2, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mMoveDuration:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    iget v0, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mMoveStartX:F

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mMoveEndX:F

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mMoveStartX:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->x:F

    iget v0, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mMoveStartY:F

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mMoveEndY:F

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mMoveStartY:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->y:F

    return-void
.end method


# virtual methods
.method public addModifier(Lcom/android/keyguard/sec/opentheme/common/SpriteModifier;)Z
    .locals 3

    iget v0, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mModifierCount:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mModifiers:[Lcom/android/keyguard/sec/opentheme/common/SpriteModifier;

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mModifierCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mModifierCount:I

    aput-object p1, v0, v1

    invoke-virtual {p1, p0}, Lcom/android/keyguard/sec/opentheme/common/SpriteModifier;->onCreate(Lcom/android/keyguard/sec/opentheme/common/Sprite;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->visible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->x:F

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mIsRotated:Z

    if-nez v0, :cond_1

    :goto_0
    iget v0, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mScale:F

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mScale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget v0, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->width:F

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->height:F

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->currentFrame:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->width:F

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mAngle:F

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mPivotX:F

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mPivotY:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public moveTo(FFJ)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mIsMoved:Z

    iget v0, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->x:F

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mMoveStartX:F

    iget v0, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->y:F

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mMoveStartY:F

    iput p1, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mMoveEndX:F

    iput p2, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mMoveEndY:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mMoveStartTime:J

    iput-wide p3, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mMoveDuration:J

    return-void
.end method

.method public onUpdate()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mModifierCount:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mModifiers:[Lcom/android/keyguard/sec/opentheme/common/SpriteModifier;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/android/keyguard/sec/opentheme/common/SpriteModifier;->onUpdate(Lcom/android/keyguard/sec/opentheme/common/Sprite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setBitmap(Landroid/content/Context;IIF)V
    .locals 1

    invoke-static {p1, p2}, Lcom/android/keyguard/sec/opentheme/common/OpenThemeUtil;->loadBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/keyguard/sec/opentheme/common/Sprite;->setBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IF)V

    return-void
.end method

.method public setBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IF)V
    .locals 1

    iput p3, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->frameSize:I

    iput p4, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mScale:F

    iput-object p2, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/2addr v0, p3

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->width:F

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->height:F

    return-void
.end method

.method public setRotation(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/keyguard/sec/opentheme/common/Sprite;->setRotation(FFF)V

    return-void
.end method

.method public setRotation(FFF)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mIsRotated:Z

    iput p1, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mAngle:F

    iput p2, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mPivotX:F

    iput p3, p0, Lcom/android/keyguard/sec/opentheme/common/Sprite;->mPivotY:F

    return-void
.end method
