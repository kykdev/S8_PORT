.class public interface abstract Lcom/samsung/android/view/IWindowStateBridge;
.super Ljava/lang/Object;
.source "IWindowStateBridge.java"


# virtual methods
.method public abstract applyAspectRatio(Landroid/graphics/Rect;)Z
.end method

.method public abstract applyBlurEffect()V
.end method

.method public abstract applyNavbarAlwaysEnabled(I)I
.end method

.method public abstract configureReducedScreenSpec()V
.end method

.method public abstract disableHideSViewCoverOnce(Z)V
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
.end method

.method public abstract getAspectRatio()F
.end method

.method public abstract getAspectRatioFrame()Landroid/graphics/Rect;
.end method

.method public abstract getCoverMode()I
.end method

.method public abstract getDisplayId()I
.end method

.method public abstract getReducedScreenScaleSpecLocked()Landroid/view/MagnificationSpec;
.end method

.method public abstract getReducedSideTouchArea()I
.end method

.method public abstract getSystemUiVisibility()I
.end method

.method public abstract hasFixedOrientation()Z
.end method

.method public abstract hasMoved()Z
.end method

.method public abstract initPackageConfigurations()V
.end method

.method public abstract isAspectRatioWindow()Z
.end method

.method public abstract isBackgroundSurfaceNeeded()Z
.end method

.method public abstract isConventionalMode()Z
.end method

.method public abstract isDexCompatMode()Z
.end method

.method public abstract isFixedOrientation()Z
.end method

.method public abstract isHideBySViewCover()Z
.end method

.method public abstract isHomeTask()Z
.end method

.method public abstract isNonImmersiveWindow()Z
.end method

.method public abstract isOnScreen()Z
.end method

.method public abstract resetEffects()V
.end method

.method public abstract setHideBySViewCover(Z)V
.end method

.method public abstract setOwner(Ljava/lang/Object;)V
.end method

.method public abstract setSystemUiVisibility(I)V
.end method

.method public abstract willBeHideSViewCoverOnce()Z
.end method
