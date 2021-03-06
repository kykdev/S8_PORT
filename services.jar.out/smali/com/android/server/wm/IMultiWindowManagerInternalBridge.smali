.class public interface abstract Lcom/android/server/wm/IMultiWindowManagerInternalBridge;
.super Ljava/lang/Object;
.source "IMultiWindowManagerInternalBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/IMultiWindowManagerInternalBridge$IMultiWindowPointerEventListener;,
        Lcom/android/server/wm/IMultiWindowManagerInternalBridge$MultiWindowHandler;
    }
.end annotation


# static fields
.field public static final LAYER_OFFSET_STACK_COLOR:I = 0x2

.field public static final SAMSUNG_MULTIWINDOW_DEFAULT_COLOR:I = -0xff6944


# virtual methods
.method public abstract addFreeformTaskToOpen(I)V
.end method

.method public abstract addGrantPermissionComponent(Ljava/lang/String;)V
.end method

.method public abstract addStackAdjustedForIme(ILcom/android/server/wm/TaskStack;)V
.end method

.method public abstract adjStackBoundsForSnapWindow()V
.end method

.method public abstract adjustBoundsForNaviBarForConfigChange(ILandroid/graphics/Rect;ILandroid/graphics/Rect;)V
.end method

.method public abstract adjustBoundsToMagnificationSpec(Landroid/graphics/Rect;)V
.end method

.method public abstract adjustDockedStackBoundAfterDisplaySizeChange(Landroid/graphics/Rect;IF)V
.end method

.method public abstract animateFreeformDimLayerLocked(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/DimLayerController$DimLayerState;)Z
.end method

.method public abstract appTokenDrawnLocked(Lcom/android/server/wm/AppWindowToken;)V
.end method

.method public abstract applyForceHidingAnimation(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract applyForceHidingPolicy(Lcom/android/server/wm/WindowState;)V
.end method

.method public abstract blinkMultiWindowDividerButton()V
.end method

.method public abstract canBeForceHiddenFloatingMultiWindow(Lcom/android/server/wm/WindowState;)Z
.end method

.method public abstract checkAppTransitionForForceHiding(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract checkIMEHeightChanged(Z)V
.end method

.method public abstract checkIfFullyAdjustedForIME(Lcom/android/server/wm/TaskStack;)V
.end method

.method public abstract checkRequestForceHidingApp(Lcom/android/server/wm/WindowState;)Z
.end method

.method public abstract clearFreeformTransit(Landroid/util/ArraySet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract clearSlideOriginalBounds()V
.end method

.method public abstract completeToggleSplitScreen()V
.end method

.method public abstract computeDragResizing(Lcom/android/server/wm/Task;)Z
.end method

.method public abstract createKeepVisibleAnimation()Landroid/view/animation/Animation;
.end method

.method public abstract drawFreeformRoundedDim(Lcom/android/server/wm/Task;Landroid/view/SurfaceControl;Landroid/graphics/Rect;I)V
.end method

.method public abstract ensureDockedResize(Landroid/graphics/Rect;Z)V
.end method

.method public abstract ensureDockedStackVisible()V
.end method

.method public abstract enterDockedTask(Lcom/android/server/wm/Task;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract enterFreeformTask(Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;)V
.end method

.method public abstract enterFreeformTaskIfNeededLocked(I)V
.end method

.method public abstract executeFakedRelaunchAnimationLocked(Lcom/android/server/wm/AppWindowToken;)V
.end method

.method public abstract exludedRegionFromFreefomTasksLocked(Landroid/graphics/Region;)V
.end method

.method public abstract findMaxVisibleAppWindow(Lcom/android/server/wm/AppWindowToken;)Lcom/android/server/wm/WindowState;
.end method

.method public abstract findMaxVisibleAppWindow(Lcom/android/server/wm/AppWindowToken;Z)Lcom/android/server/wm/WindowState;
.end method

.method public abstract forceHideIMEWhileDragging()V
.end method

.method public abstract getCurrentInputMethodClient()Lcom/android/server/wm/WindowState;
.end method

.method public abstract getDecorCaptionWindowHeight()I
.end method

.method public abstract getDockedStackVisibleForUserOrRelaunchingLocked(I)Lcom/android/server/wm/TaskStack;
.end method

.method public abstract getFreeformRelaunchAnimState()I
.end method

.method public abstract getFullScreenStackTopTaskBounds(Landroid/os/IBinder;)Landroid/graphics/Rect;
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract getImeTargetFreeformTaskId()I
.end method

.method public abstract getIndexOfFreeformStackLocked()I
.end method

.method public abstract getIndexOfFreeformStackLocked(Lcom/android/server/wm/DisplayContent;)I
.end method

.method public abstract getMiddleTargetDockedBounds(Landroid/graphics/Rect;)V
.end method

.method public abstract getMinimalDockedTaskBounds()Landroid/graphics/Rect;
.end method

.method public abstract getMinimizeContainerBounds()Landroid/graphics/Rect;
.end method

.method public abstract getMinimizeSoftInput()Z
.end method

.method public abstract getMultiWindowPointerEventListener(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/IMultiWindowManagerInternalBridge$IMultiWindowPointerEventListener;
.end method

.method public abstract getSnapTargetAspectRatioRect(Landroid/os/IBinder;)Landroid/graphics/Rect;
.end method

.method public abstract getSplitRelaunchAnimState()I
.end method

.method public abstract getSplitRelaunchClosingToken()Lcom/android/server/wm/AppWindowToken;
.end method

.method public abstract getStackBehindFreeformLocked()Lcom/android/server/wm/TaskStack;
.end method

.method public abstract getStackBehindFreeformLocked(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/TaskStack;
.end method

.method public abstract getStackIdsShowWhenLocked()I
.end method

.method public abstract getTopVisibleTaskLocked(I)Lcom/android/server/wm/Task;
.end method

.method public abstract getTopVisibleWindowLocked(I)Lcom/android/server/wm/WindowState;
.end method

.method public abstract getTouchExcludeRegionLocked(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Region;)V
.end method

.method public abstract handleScreenFreezeAnimationReady()I
.end method

.method public abstract hasDockedStack()Z
.end method

.method public abstract hasFakedRelaunchAnimTokensLocked(Lcom/android/server/wm/AppWindowToken;)Z
.end method

.method public abstract hasIMEHeightChanged()Z
.end method

.method public abstract hasRelaunchingAppWindowTokenLocked(Lcom/android/server/wm/Task;)Z
.end method

.method public abstract isAnimatingForMinimizedDockedStack(I)Z
.end method

.method public abstract isAppTaskTouchedLocked(Lcom/android/server/wm/DisplayContent;II)Z
.end method

.method public abstract isAutoResizingEnabled()Z
.end method

.method public abstract isBottomStackFullyAdjustedForIME()Z
.end method

.method public abstract isDividerDragging()Z
.end method

.method public abstract isEnsureDockedResizing()Z
.end method

.method public abstract isExpandedDockedStack()Z
.end method

.method public abstract isForceHidingFloatingMultiWindow()Z
.end method

.method public abstract isFreeformAlphaModeLocked(Lcom/android/server/wm/WindowState;)Z
.end method

.method public abstract isFreeformStackVisibleLocked()Z
.end method

.method public abstract isMouseConnectedForDesktopMode()Z
.end method

.method public abstract isOrientationChanging()Z
.end method

.method public abstract isSplitRelaunchOpeningToken(Landroid/os/IBinder;)Z
.end method

.method public abstract isStackAdjustedForIme(I)Z
.end method

.method public abstract isStatusBarVisible()Z
.end method

.method public abstract isUsingTaskPositioner()Z
.end method

.method public abstract loadMultiWindowTransitionLocked(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZZLandroid/view/animation/Animation;)Landroid/view/animation/Animation;
.end method

.method public abstract logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract logMultiWindowBehavior([Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract makeFinishing(Landroid/os/IBinder;)V
.end method

.method public abstract makeGhostFreeformLocked(Landroid/os/IBinder;I)V
.end method

.method public abstract moveDockedPopupWindowIfNeededLocked(Lcom/android/server/wm/WindowState;)Z
.end method

.method public abstract moveDockedPopupWindowLocked(Z)V
.end method

.method public abstract moveStackToBottomLocked(I)V
.end method

.method public abstract notifyApplyMinimizeFreeformPolicy(Landroid/os/IBinder;)V
.end method

.method public abstract notifyFreefromWindowAnimationEnd(IILandroid/graphics/Rect;)V
.end method

.method public abstract notifyLastDockTaskToBackTransitionFinishedLocked(Landroid/os/IBinder;)V
.end method

.method public abstract notifyMultiWindowAppTransitionFinishedLocked()V
.end method

.method public abstract notifyProcessKillByClosingFreeform(I)V
.end method

.method public abstract notifyScreenFreezeAnimationFinished()V
.end method

.method public abstract okToDisplay()Z
.end method

.method public abstract postApplyForceHidingPolicy()V
.end method

.method public abstract preApplyForceHidingPolicy()V
.end method

.method public abstract prepareAppTransitionIfNeeded(I)V
.end method

.method public abstract prepareLastDockTaskToBackToFullscreen(Landroid/os/IBinder;)V
.end method

.method public abstract prepareResizeAnimLocked()V
.end method

.method public abstract prepareSnapWindowAnimLocked()V
.end method

.method public abstract prepareSwapAnimLocked()V
.end method

.method public abstract prepareUnSnapByDockedToFullAnimLocked()V
.end method

.method public abstract prepareUnSnapByResizeAnimLocked()V
.end method

.method public abstract registerMultiWindowDividerPanelListener(Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;)V
.end method

.method public abstract registerMultiWindowFocusedFrameListener(Lcom/samsung/android/multiwindow/IMultiWindowFocusedFrameListener;)V
.end method

.method public abstract removePendingReplaceWindowLocked(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;)V
.end method

.method public abstract removeStackAdjustedForIme(I)V
.end method

.method public abstract reportMinimizeContainerBounds(Landroid/graphics/Rect;)V
.end method

.method public abstract resizeTaskWithRelaunchAnim(Landroid/view/IApplicationToken;Landroid/graphics/Rect;)V
.end method

.method public abstract rotationAnimationStateChangedLocked(Z)V
.end method

.method public abstract saveOriginalBoundsBeforeSliding(FFFFLandroid/graphics/Rect;)Z
.end method

.method public abstract setAutoResizingEnabled(Z)V
.end method

.method public abstract setCoolDownFreeformRequested(Z)V
.end method

.method public abstract setCurrentInputMethodClient(Landroid/os/IBinder;)V
.end method

.method public abstract setDexCompatEnabled(IZ)V
.end method

.method public abstract setDexCompatEnabled(Landroid/os/IBinder;Z)V
.end method

.method public abstract setDividerButtonsDimLayer(ZFI)V
.end method

.method public abstract setDockedStackDividerButtonsTouchRegion(Landroid/graphics/Rect;)V
.end method

.method public abstract setEnsureDockedResizing(Z)V
.end method

.method public abstract setForceHidingFloatingMultiWindow(Z)V
.end method

.method public abstract setFreeformRelaunchAnimState(Ljava/util/ArrayList;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setFreeformStackTemporaryVisibilityLocked(Z)V
.end method

.method public abstract setFreeformStackVisibilityLocked(Z)V
.end method

.method public abstract setFreeformTransit(II)V
.end method

.method public abstract setGrantPermissionComponents(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setHidden(II)V
.end method

.method public abstract setMinimizeSoftInput(Z)V
.end method

.method public abstract setMultiWindowManagerService(Lcom/android/server/am/IMultiWindowManagerServiceBridge;)V
.end method

.method public abstract setOrientationChanging(Z)V
.end method

.method public abstract setProcessKillAfterRemovingTaskLocked(I)V
.end method

.method public abstract setSlideMode(IZ)V
.end method

.method public abstract setSplitRelaunchAnimState(Landroid/os/IBinder;Landroid/os/IBinder;ILjava/lang/String;)V
.end method

.method public abstract setStackColor(II)V
.end method

.method public abstract setSupportFreeformDensity(IZ)V
.end method

.method public abstract setSystemService(Lcom/android/server/wm/WindowManagerService;)V
.end method

.method public abstract setTaskDimensions(IIIII)V
.end method

.method public abstract setTaskToSnapWindowTarget(IZ)Z
.end method

.method public abstract setTokensResizedInSplitLocked(Landroid/os/IBinder;)V
.end method

.method public abstract setUseFreeformBorder(Landroid/os/IBinder;Z)V
.end method

.method public abstract shouldForceHideIfNeeded(Lcom/android/server/wm/WindowState;ZZ)Z
.end method

.method public abstract shouldKeepVisibleAnimation(Lcom/android/server/wm/AppWindowToken;ZZ)Z
.end method

.method public abstract shouldKeepVisibleWhileNotDragResizing(Lcom/android/server/wm/WindowState;)Z
.end method

.method public abstract slideFreeformTask(IZI)Z
.end method

.method public abstract startDividerDragging()V
.end method

.method public abstract startResizingFreeformTask(III)V
.end method

.method public abstract stepAnimationLocked(J)Z
.end method

.method public abstract stopDividerDragging()V
.end method

.method public abstract unregisterMultiWindowDividerPanelListener(Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;)V
.end method

.method public abstract updateFreeformRoundedDim(Z)V
.end method

.method public abstract updateFreeformShadowLightLocationLocked(I)V
.end method

.method public abstract updateMouseConnectedForDesktopMode(Z)V
.end method

.method public abstract updateMultiWindowToastFrame(Lcom/android/server/wm/WindowState;)V
.end method

.method public abstract updateTaskPositionInTaskBar(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation
.end method
