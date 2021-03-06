.class public Lcom/android/launcher3/allapps/controller/AppsController;
.super Lcom/android/launcher3/common/stage/Stage;
.source "AppsController.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
.implements Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;
.implements Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;
.implements Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;
.implements Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockActionCallback;
.implements Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/controller/AppsController$ViewType;
    }
.end annotation


# static fields
.field private static final APPS_ORGANIZE_APPS_ALERT:Ljava/lang/String; = "AppsController.OrganizeAppsAlert"

.field private static final APPS_VIEW_TYPE:Ljava/lang/String; = "AppsController.ViewType"

.field static final DEBUG_APPS_CONTROLLER:Z = true

.field public static final EXIT_DRAG_STATE_DELAY:I = 0x64

.field private static final FACTOR_INTERVAL:I = 0x2

.field private static final FACTOR_VALID_DECIMAL_PLACE:I = 0x2

.field public static final KEY_REPOSITION_BY:Ljava/lang/String; = "KEY_REPOSITION_BY"

.field public static final KEY_TARGET_GRID_SIZE:Ljava/lang/String; = "KEY_CHANGE_GRID_SIZE"

.field private static final MAP_NO_RECURSE:Z = false

.field private static final MAP_RECURSE:Z = true

.field public static final REPOSITION_CONFIGURATION:I = 0x3

.field public static final REPOSITION_GRIDBY:I = 0x1

.field public static final REPOSITION_NONE:I = -0x1

.field public static final REPOSITION_TIDEUP:I = 0x2

.field public static final REPOSITION_VIEWBY:I = 0x0

.field public static final STATE_DRAG:I = 0x1

.field public static final STATE_GRID:I = 0x5

.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_SEARCH:I = 0x3

.field public static final STATE_SELECT:I = 0x2

.field public static final STATE_TIDY:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Launcher.AppsController"


# instance fields
.field private mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

.field private mApplyTideUpPage:Z

.field private mAppsAlphaRatio:F

.field private mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

.field private mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

.field private mAppsFocusListener:Lcom/android/launcher3/allapps/controller/AppsFocusListener;

.field private mAppsPageIndicatorView:Landroid/view/View;

.field private mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

.field private mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

.field private mAppsSearch:Lcom/android/launcher3/allapps/view/AppsSearch;

.field private mAppsShrinkFactor:F

.field private mAppsSlipY:I

.field private mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

.field private mDataListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

.field private mDownwardFadeOutEnd:I

.field private mDownwardFadeOutStart:I

.field private mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

.field private mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

.field private mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

.field private mExitDragStateHandler:Landroid/os/Handler;

.field private mFadeOutRange:F

.field private mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

.field private mFromSetting:Z

.field private mHwLayerPageIndexWhileTray:I

.field private mIsResumed:Z

.field private mLoggingRunnable:Ljava/lang/Runnable;

.field private mMoveToHomeApproachingEnd:I

.field private mMoveToHomeApproachingStart:I

.field private mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

.field private mPageIndicatorScaleRatio:F

.field private mPageIndicatorShrinkFactor:F

.field private mPageSnapMovingRatioOnApps:F

.field private mRemoveInProgress:Z

.field private mReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

.field private mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

.field private mState:I

.field private mTrayBorderLimit:I

.field private mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

.field private mUpwardFadeOutEnd:I

.field private mUpwardFadeOutStart:I

.field private mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/launcher3/common/stage/Stage;-><init>()V

    iput v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mExitDragStateHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mApplyTideUpPage:Z

    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mFromSetting:Z

    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mIsResumed:Z

    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mRemoveInProgress:Z

    new-instance v0, Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-direct {v0}, Lcom/android/launcher3/util/event/ScrollDeterminator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mHwLayerPageIndexWhileTray:I

    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsController$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/controller/AppsController$1;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLoggingRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsController$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/controller/AppsController$2;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDataListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/view/AppsPagedView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/AppsScreenGridPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher3/allapps/controller/AppsController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLoggingRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/common/drag/DragManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/launcher3/allapps/controller/AppsController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mRemoveInProgress:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/common/stage/StageManager;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/launcher3/allapps/controller/AppsController;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByGrid([I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/common/stage/StageManager;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/controller/AppsController$ViewType;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/controller/AppsReorderController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/launcher3/allapps/controller/AppsController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mApplyTideUpPage:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/common/tray/TrayManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/view/AppsSearch;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearch:Lcom/android/launcher3/allapps/view/AppsSearch;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/controller/AppsDragController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method private applySetViewType()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->setAdapter(Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    sget-object v1, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "AZBT"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->getNormalizer()Lcom/android/launcher3/allapps/controller/Normalizer;

    move-result-object v0

    invoke-direct {p0, v0, v6, v6}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByNormalizer(Lcom/android/launcher3/allapps/controller/Normalizer;IZ)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    sget-object v1, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->CUSTOM_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->reloadAllItemsFromDB(Z)V

    goto :goto_0
.end method

.method private closeOrganizeAppsConfirmDialog()V
    .locals 3

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/OrganizeAppsConfirmDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    return-void
.end method

.method private closeViewTypeDialog()V
    .locals 3

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/AppsViewTypeDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    return-void
.end method

.method private createFolder()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getCheckedAppsViewList()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getTargetView(Ljava/util/ArrayList;)Landroid/view/View;

    move-result-object v13

    if-nez v13, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v12, :cond_7

    const-string v16, "Launcher.AppsController"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Create folder with target item\'s position. target item is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v12, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v16

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0d0031

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    :goto_1
    iget-wide v0, v12, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v14, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Lcom/android/launcher3/allapps/controller/AppsController;->removeCheckedAppView(Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v8, v13}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Lcom/android/launcher3/allapps/controller/AppsDragController;->addFolder(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/item/IconInfo;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher3/allapps/controller/AppsController;->removeCheckedAppViewFromFolder(Ljava/util/ArrayList;)V

    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->addItems(Ljava/util/ArrayList;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v16

    if-eqz v16, :cond_6

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByNormalizer(Z)V

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v14, v0

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->removeEmptyPagesAndUpdateAllItemsInfo()Z

    move v10, v14

    new-instance v9, Lcom/android/launcher3/allapps/controller/AppsController$20;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v10}, Lcom/android/launcher3/allapps/controller/AppsController$20;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;I)V

    new-instance v16, Landroid/os/Handler;

    invoke-direct/range {v16 .. v16}, Landroid/os/Handler;-><init>()V

    new-instance v17, Lcom/android/launcher3/allapps/controller/AppsController$21;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9, v4}, Lcom/android/launcher3/allapps/controller/AppsController$21;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;Ljava/lang/Runnable;Lcom/android/launcher3/folder/view/FolderIconView;)V

    int-to-long v0, v3

    move-wide/from16 v18, v0

    invoke-virtual/range {v16 .. v19}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_7
    const-string v16, "Launcher.AppsController"

    const-string v17, "onClickCreateFolder : app info is null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getFirstMatch(Lcom/android/launcher3/common/base/item/ItemOperator;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    new-array v0, v1, [Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    new-instance v2, Lcom/android/launcher3/allapps/controller/AppsController$17;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher3/allapps/controller/AppsController$17;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;Lcom/android/launcher3/common/base/item/ItemOperator;[Landroid/view/View;)V

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V

    aget-object v1, v0, v3

    return-object v1
.end method

.method private getTargetView(Ljava/util/ArrayList;)Landroid/view/View;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    :goto_0
    if-ltz v2, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {p0, v6}, Lcom/android/launcher3/allapps/controller/AppsController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v3, 0x0

    :cond_0
    if-eqz v3, :cond_3

    const/4 v1, -0x1

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v4

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v5

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v2

    :goto_1
    if-ge v2, v5, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->findFirstEmptyCell(I)I

    move-result v1

    if-ltz v1, :cond_5

    move v4, v2

    :cond_1
    const/4 v8, -0x1

    if-ne v1, v8, :cond_2

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->createAppsPage()Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    :cond_2
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v8, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v0, v8}, Lcom/android/launcher3/allapps/controller/AppsController;->createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    int-to-long v8, v4

    iput-wide v8, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPageChildCount()I

    move-result v8

    iput v8, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/android/launcher3/common/base/item/ItemInfo;->setChecked(Z)V

    invoke-virtual {p0, v7, v6}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    :cond_3
    return-object v7

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getViewTypeFromSharedPreference(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "AppsController.ViewType"

    sget-object v2, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->CUSTOM_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initAdapterProvider()V
    .locals 4

    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDataListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    return-void
.end method

.method private initAppSearchBar()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/allapps/view/AppsSearch;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/allapps/view/AppsSearch;-><init>(Landroid/view/View;Lcom/android/launcher3/allapps/controller/AppsController;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearch:Lcom/android/launcher3/allapps/view/AppsSearch;

    return-void
.end method

.method private initAppsPagedView()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f110024

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/view/AppsPagedView;

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setup(Lcom/android/launcher3/common/drag/DragManager;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setListener(Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateBackgroundAndPaddings()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setScrollDeterminator(Lcom/android/launcher3/util/event/ScrollDeterminator;)V

    return-void
.end method

.method private initBackground()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->setBackgroundImageAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    const v1, 0x7f020004

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->setBackgroundImage(I)V

    return-void
.end method

.method private initContainerView()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v3, 0x7f1100b2

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/view/AppsContainer;

    iput-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/allapps/view/AppsContainer;->bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/view/AppsContainer;->setTrayManager(Lcom/android/launcher3/common/tray/TrayManager;)V

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/view/AppsContainer;->setVisibility(I)V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsContainer;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    iget v3, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {v2, v4, v1, v3, v4}, Lcom/android/launcher3/allapps/view/AppsContainer;->setPadding(IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    iget v3, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {v2, v4, v1, v4, v3}, Lcom/android/launcher3/allapps/view/AppsContainer;->setPadding(IIII)V

    goto :goto_0
.end method

.method private initDragController()V
    .locals 3

    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsDragController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/view/AppsPagedView;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setup(Lcom/android/launcher3/common/view/DragLayer;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setListener(Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setReorderListener(Lcom/android/launcher3/allapps/AppsReorderListener;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->addDragListener(Lcom/android/launcher3/common/drag/DragManager$DragListener;)V

    return-void
.end method

.method private initPageIndicator()V
    .locals 6

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v5, 0x7f110025

    invoke-virtual {v4, v5}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsContainer;->removeView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v4}, Lcom/android/launcher3/common/view/DragLayer;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v4}, Lcom/android/launcher3/common/view/DragLayer;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/view/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v0

    :cond_0
    new-instance v2, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    invoke-direct {v2, v3}, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x51

    iput v4, v2, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    invoke-virtual {v4, v5, v1, v2}, Lcom/android/launcher3/common/view/DragLayer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initReorderController()V
    .locals 3

    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/allapps/controller/AppsReorderController;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/view/AppsPagedView;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->setListener(Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;)V

    return-void
.end method

.method private initScreenGridPanel()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f11002e

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->initScreenGridTopContainer()V

    return-void
.end method

.method private initTrayResources()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0190

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSlipY:I

    const v1, 0x7f0a0191

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayBorderLimit:I

    const v1, 0x7f0a00f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMoveToHomeApproachingStart:I

    const v1, 0x7f0a00ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMoveToHomeApproachingEnd:I

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x7f10000a

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mPageSnapMovingRatioOnApps:F

    const v1, 0x7f100003

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsShrinkFactor:F

    const/high16 v1, 0x7f100000

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAlphaRatio:F

    const v1, 0x7f100002

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mPageIndicatorShrinkFactor:F

    const v1, 0x7f100001

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mPageIndicatorScaleRatio:F

    const v1, 0x7f0a0196

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutStart:I

    iput v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutEnd:I

    iget v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutStart:I

    neg-int v1, v1

    iput v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDownwardFadeOutStart:I

    iput v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDownwardFadeOutEnd:I

    iget v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutEnd:I

    iget v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mFadeOutRange:F

    return-void
.end method

.method private isDragLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mRemoveInProgress:Z

    return v0
.end method

.method private removeAppsItem(Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    :goto_0
    instance-of v0, p2, Lcom/android/launcher3/common/drag/DropTarget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    check-cast p2, Lcom/android/launcher3/common/drag/DropTarget;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "Launcher.AppsController"

    const-string v1, "mDragInfo.cell has null parent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeCheckedAppView(Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private removeCheckedAppViewFromFolder(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v10, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-wide v10, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-wide v10, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    const-wide/16 v12, 0x0

    cmp-long v9, v0, v12

    if-lez v9, :cond_2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/launcher3/folder/FolderInfo;->remove(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_3
    const-string v9, "Launcher.AppsController"

    const-string v11, "folder iconview is null"

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    return-void
.end method

.method private repositionByConfiguration()V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x2

    new-array v3, v4, [I

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v4, v3}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentAppsGridSize(Landroid/content/Context;[I)V

    aget v0, v3, v6

    const/4 v4, 0x1

    aget v1, v3, v4

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setAppsCurrentGrid(II)V

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->getNormalizer()Lcom/android/launcher3/allapps/controller/Normalizer;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {p0, v4, v5, v6}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByNormalizer(Lcom/android/launcher3/allapps/controller/Normalizer;IZ)V

    return-void
.end method

.method private repositionByGrid([I)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    aget v0, p1, v7

    aget v1, p1, v8

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setAppsCurrentGrid(II)V

    const/4 v4, 0x2

    new-array v3, v4, [I

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v4, v3}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentAppsGridSize(Landroid/content/Context;[I)V

    const-string v4, "Launcher.AppsController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "repositionByGrid for preview, current cellX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cellY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", savedGridX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", savedGridY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget v4, v3, v7

    if-ne v4, v0, :cond_1

    aget v4, v3, v8

    if-ne v4, v1, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v4, v7}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->reloadAllItemsFromDB(Z)V

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->onChangeScreenGrid(II)V

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->getNormalizer()Lcom/android/launcher3/allapps/controller/Normalizer;

    move-result-object v4

    invoke-direct {p0, v4, v8, v7}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByNormalizer(Lcom/android/launcher3/allapps/controller/Normalizer;IZ)V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    sget-object v5, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v4, v7}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->reloadAllItemsFromDB(Z)V

    goto :goto_0
.end method

.method private repositionByNormalizer(Lcom/android/launcher3/allapps/controller/Normalizer;IZ)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/controller/Normalizer",
            "<",
            "Ljava/lang/Object;",
            ">;IZ)V"
        }
    .end annotation

    const-string v14, "Launcher.AppsController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "repositionByNormalizer start : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v14}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v11

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v14, v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getPageChildCount()I

    move-result v2

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v2, :cond_1

    invoke-virtual {v3, v10}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v13

    instance-of v14, v13, Lcom/android/launcher3/common/view/Removable;

    if-eqz v14, :cond_0

    move-object v14, v13

    check-cast v14, Lcom/android/launcher3/common/view/Removable;

    invoke-interface {v14}, Lcom/android/launcher3/common/view/Removable;->isMarkToRemove()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v14, :cond_0

    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v8, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    const-string v14, "Launcher.AppsController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "reposition - makeViewList : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v4

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " , "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " , "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " , "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " , "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v14}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v15}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v14, v15}, Lcom/android/launcher3/allapps/controller/Normalizer;->normalize(Ljava/util/ArrayList;II)I

    const-string v14, "Launcher.AppsController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "reposition - normalize: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v4

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_3
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/folder/FolderInfo;

    if-nez p2, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    sget-object v16, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->CUSTOM_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-object/from16 v0, v16

    if-eq v14, v0, :cond_5

    const/4 v14, 0x1

    :goto_3
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v17, v0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v14, v0, v1}, Lcom/android/launcher3/folder/FolderInfo;->setAlphabeticalOrder(ZZLandroid/content/Context;)V

    :cond_4
    const/4 v14, 0x3

    move/from16 v0, p2

    if-eq v0, v14, :cond_3

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    instance-of v14, v13, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v14, :cond_3

    check-cast v13, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v13}, Lcom/android/launcher3/folder/view/FolderIconView;->applyStyle()V

    goto :goto_2

    :cond_5
    const/4 v14, 0x0

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->rearrangeAllViews(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v14}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeEmptyScreen()Z

    const-string v14, "Launcher.AppsController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "repositionByNormalizer end "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v4

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private repositionByTypeUpPages()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->setStateAndUpdateLock(IZ)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->getNormalizer()Lcom/android/launcher3/allapps/controller/Normalizer;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByNormalizer(Lcom/android/launcher3/allapps/controller/Normalizer;IZ)V

    return-void
.end method

.method private restoreScreenGrid(IZ)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsController$24;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher3/allapps/controller/AppsController$24;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;Z)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private saveViewTypeSharefPref()V
    .locals 5

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "AppsController.ViewType"

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setViewTypeFromSharedPreference(Landroid/content/Context;Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)V
    .locals 4

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "AppsController.ViewType"

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private startBounceAnimationForSearchedApp(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    invoke-direct {v0, p1}, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->animate()V

    goto :goto_0
.end method

.method private startSettingActivity(Z)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mFromSetting:Z

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->startHomeSettingActivity()V

    const/16 v0, 0x96

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->restoreScreenGrid(IZ)V

    return-void
.end method

.method private updateAppsViewByTrayPosition(FZ)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    const/4 v14, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v13, v0, v14, v1}, Lcom/android/launcher3/allapps/view/AppsContainer;->setDrawBoundaryY(FZZ)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v13}, Lcom/android/launcher3/allapps/view/AppsContainer;->getHeight()I

    move-result v13

    int-to-float v13, v13

    add-float v5, p1, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mDownwardFadeOutEnd:I

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutEnd:I

    if-nez v13, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v13}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingRange()I

    move-result v13

    int-to-float v13, v13

    const v14, 0x3f666666    # 0.9f

    mul-float/2addr v13, v14

    float-to-int v7, v13

    neg-int v13, v7

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mDownwardFadeOutEnd:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutEnd:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutEnd:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutStart:I

    sub-int/2addr v13, v14

    int-to-float v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mFadeOutRange:F

    :cond_1
    const/4 v13, 0x0

    cmpl-float v13, p1, v13

    if-lez v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v13}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingRange()I

    move-result v13

    int-to-float v13, v13

    sub-float v11, p1, v13

    move v10, v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mDownwardFadeOutStart:I

    int-to-float v13, v13

    cmpl-float v13, v11, v13

    if-ltz v13, :cond_4

    const/high16 v6, 0x3f800000    # 1.0f

    :goto_0
    const/4 v13, 0x2

    const/4 v14, 0x2

    invoke-static {v6, v13, v14}, Lcom/android/launcher3/Utilities;->simplifyDecimalFraction(FII)F

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAlphaRatio:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v13, v2}, Lcom/android/launcher3/allapps/view/AppsContainer;->setAlpha(F)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsShrinkFactor:F

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsShrinkFactor:F

    sub-float/2addr v14, v15

    mul-float/2addr v14, v6

    add-float v9, v13, v14

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher3/allapps/controller/AppsController;->getBackgroundImageAlphaForState(I)F

    move-result v13

    mul-float/2addr v13, v6

    float-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v4, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v13, v9}, Lcom/android/launcher3/allapps/view/AppsContainer;->setScaleX(F)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v13, v9}, Lcom/android/launcher3/allapps/view/AppsContainer;->setScaleY(F)V

    if-nez p2, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v13, v4}, Lcom/android/launcher3/common/view/DragLayer;->setBackgroundImageAlpha(F)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mPageIndicatorShrinkFactor:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mPageIndicatorShrinkFactor:F

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v17, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mPageIndicatorScaleRatio:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    sub-float v16, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(FF)F

    move-result v15

    mul-float/2addr v14, v15

    add-float v8, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    invoke-virtual {v13, v8}, Landroid/view/View;->setScaleX(F)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    invoke-virtual {v13, v8}, Landroid/view/View;->setScaleY(F)V

    :cond_3
    :goto_1
    const/4 v13, 0x0

    cmpl-float v13, v11, v13

    if-eqz v13, :cond_a

    const/4 v12, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v13, v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateOnlyCurrentPage(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v13, v11}, Lcom/android/launcher3/allapps/view/AppsContainer;->setTranslationY(F)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearch:Lcom/android/launcher3/allapps/view/AppsSearch;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/launcher3/allapps/view/AppsSearch;->changeColorAndBackground(Z)V

    return-void

    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mDownwardFadeOutEnd:I

    int-to-float v13, v13

    cmpl-float v13, v11, v13

    if-ltz v13, :cond_5

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mDownwardFadeOutEnd:I

    int-to-float v14, v14

    sub-float v14, v11, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mFadeOutRange:F

    div-float/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v6

    goto/16 :goto_0

    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v13}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingRange()I

    move-result v13

    int-to-float v13, v13

    add-float v11, p1, v13

    move v10, v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutStart:I

    int-to-float v13, v13

    cmpg-float v13, v11, v13

    if-gtz v13, :cond_7

    const/high16 v6, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutEnd:I

    int-to-float v13, v13

    cmpg-float v13, v11, v13

    if-gtz v13, :cond_8

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutEnd:I

    int-to-float v14, v14

    sub-float/2addr v14, v11

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mFadeOutRange:F

    div-float/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v6

    goto/16 :goto_0

    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mMoveToHomeApproachingStart:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSlipY:I

    int-to-float v13, v13

    int-to-float v14, v3

    sub-float v14, v5, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v15}, Lcom/android/launcher3/allapps/view/AppsContainer;->getHeight()I

    move-result v15

    sub-int/2addr v15, v3

    int-to-float v15, v15

    div-float/2addr v14, v15

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    mul-float v11, v13, v14

    move v10, v11

    goto/16 :goto_1

    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_2
.end method


# virtual methods
.method public addFolder(Lcom/android/launcher3/common/base/view/CellLayout;JIII)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 16

    new-instance v3, Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {v3}, Lcom/android/launcher3/folder/FolderInfo;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v6, 0x7f090186

    invoke-virtual {v2, v6}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v3, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    const-wide/16 v4, -0x66

    move/from16 v0, p6

    iput v0, v3, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    :try_start_0
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/launcher3/folder/FolderInfo;->id:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v6, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/allapps/controller/AppsController;->addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)J

    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/android/launcher3/folder/FolderInfo;->mDirty:Z

    iput-wide v4, v3, Lcom/android/launcher3/folder/FolderInfo;->container:J

    move-wide/from16 v0, p2

    iput-wide v0, v3, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    move/from16 v0, p4

    iput v0, v3, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    move/from16 v0, p5

    iput v0, v3, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v12, 0x2

    move-object/from16 v7, p1

    move-object v8, v3

    move-object/from16 v9, p0

    move-object/from16 v11, p0

    invoke-static/range {v6 .. v12}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsFocusListener:Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    invoke-virtual {v14, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsFocusListener:Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    invoke-virtual {v14, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    return-object v14

    :catch_0
    move-exception v13

    const-string v2, "Launcher.AppsController"

    const-string v6, "generate new item id for created folder is failed."

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p0

    move-wide/from16 v6, p2

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/allapps/controller/AppsController;->addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)J

    goto :goto_1
.end method

.method public addFolderChildItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;J)J
    .locals 2

    iput-wide p2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    return-void
.end method

.method public addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)J
    .locals 2

    iput-wide p2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iput-wide p4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput p6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput p7, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJI)V
    .locals 2

    iput-wide p2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iput p6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iput-wide p4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    return-void
.end method

.method public addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V
    .locals 10

    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    :cond_0
    invoke-virtual/range {p0 .. p7}, Lcom/android/launcher3/allapps/controller/AppsController;->addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)J

    move-result-wide v2

    instance-of v5, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v5, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/launcher3/allapps/controller/AppsController;->addFolderChildItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;J)J

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v5, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual/range {p0 .. p8}, Lcom/android/launcher3/allapps/controller/AppsController;->modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    goto :goto_1
.end method

.method public addOrMoveItems(Ljava/util/ArrayList;JJ)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;JJ)V"
        }
    .end annotation

    const-string v15, "Launcher.AppsController"

    const-string v16, "addOrMoveItems"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher3/allapps/controller/AppsController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v16

    if-nez v16, :cond_0

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v15, v11}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCellsAndViews(Ljava/util/ArrayList;)V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    iget-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    cmp-long v15, v2, p2

    if-eqz v15, :cond_5

    const-wide/16 v18, 0x0

    cmp-long v15, v2, v18

    if-lez v15, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_5

    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v5, v8}, Lcom/android/launcher3/folder/FolderInfo;->remove(Ljava/util/ArrayList;)V

    :cond_5
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    move-wide/from16 v0, p2

    iput-wide v0, v6, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    move-wide/from16 v0, p4

    iput-wide v0, v6, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v6, Lcom/android/launcher3/common/base/item/IconInfo;->mDirty:Z

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const-string v17, "container"

    iget-wide v0, v6, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v17, "rank"

    iget v0, v6, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v17, "cellX"

    iget v0, v6, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v17, "cellY"

    iget v0, v6, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v17, "screen"

    iget-wide v0, v6, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v17, "hidden"

    iget v0, v6, Lcom/android/launcher3/common/base/item/IconInfo;->hidden:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_6
    const-string v15, "Launcher.AppsController"

    const-string v17, "folder iconview is null"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v4, v12}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v15

    sget-object v16, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_8

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByNormalizer(Z)V

    :goto_4
    return-void

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->removeEmptyPagesAndUpdateAllItemsInfo()Z

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    goto :goto_4
.end method

.method public applyOrCancelTideUpPages()V
    .locals 5

    const v3, 0x7f09019e

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v1, v4, v4}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->setStateAndUpdateLock(IZ)V

    iget-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mApplyTideUpPage:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setCurrentPage(I)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->reloadAllItemsFromDB(Z)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->getNormalizer()Lcom/android/launcher3/allapps/controller/Normalizer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v4}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByNormalizer(Lcom/android/launcher3/allapps/controller/Normalizer;IZ)V

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090108

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    iput-boolean v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mApplyTideUpPage:Z

    return-void

    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090107

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public applyScreenGrid()V
    .locals 6

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Lcom/android/launcher3/common/stage/StageManager;->moveToOverHome(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    iget-object v3, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v0

    iget-object v3, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v1

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3, v0, v1}, Lcom/android/launcher3/util/ScreenGridUtilities;->storeAppsGridLayoutPreference(Landroid/content/Context;II)V

    const-string v3, "Launcher.AppsController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyGrid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    sget-object v4, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    return-void
.end method

.method public approachBorderOnDrag(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isRunningAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/common/tray/TrayManager;->approachBorderOnDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;F)V

    :cond_0
    return-void
.end method

.method public canMoveTray()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelChangeScreenGrid()V
    .locals 2

    const-string v0, "Launcher.AppsController"

    const-string v1, "cancelChangeScreenGrid for preview"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->startSettingActivity(Z)V

    return-void
.end method

.method public changeScreenGrid(ZII)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    iget-object v4, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v4

    if-ne v4, p2, :cond_0

    iget-object v4, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v4

    if-ne v4, p3, :cond_0

    :goto_0
    return v2

    :cond_0
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    const-string v4, "KEY_REPOSITION_BY"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "KEY_CHANGE_GRID_SIZE"

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput p2, v5, v2

    aput p3, v5, v3

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean p1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    iget v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    iget v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    move v2, v3

    goto :goto_0
.end method

.method public changeState(IZ)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZZ)Z

    move-result v0

    return v0
.end method

.method changeState(IZZ)Z
    .locals 4

    if-nez p3, :cond_0

    iget v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    if-ne v1, p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const-string v1, "Launcher.AppsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", animated : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    iput-boolean p2, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    iget v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public chooseViewType()V
    .locals 3

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/allapps/controller/AppsController$7;

    invoke-direct {v2, p0}, Lcom/android/launcher3/allapps/controller/AppsController$7;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/allapps/AppsViewTypeDialog;->createAndShow(Lcom/android/launcher3/allapps/controller/AppsController$ViewType;Landroid/app/FragmentManager;Lcom/android/launcher3/allapps/AppsViewTypeDialog$OnViewTypeChagnedListener;)V

    return-void
.end method

.method public createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 8

    iget v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object v2, p3

    check-cast v2, Lcom/android/launcher3/common/view/IconView;

    move-object v3, p1

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsFocusListener:Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    move-object v1, p2

    move-object v5, p0

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/allapps/AppsUtils;->createAppIcon(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/launcher3/common/view/IconView;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/allapps/controller/AppsFocusListener;)Landroid/view/View;

    move-result-object v7

    :goto_0
    return-object v7

    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v6, 0x2

    move-object v1, p2

    move-object v3, p0

    move-object v5, p0

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v7

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsFocusListener:Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    invoke-virtual {v7, v0}, Lcom/android/launcher3/folder/view/FolderIconView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsFocusListener:Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    invoke-virtual {v7, v0}, Lcom/android/launcher3/folder/view/FolderIconView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public deferToBind()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    if-eq v1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->needDefferToBind(Lcom/android/launcher3/common/drag/DragManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteFolder(Lcom/android/launcher3/folder/FolderInfo;)V
    .locals 14

    iget-object v7, p1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->removeAppsItem(Lcom/android/launcher3/common/base/item/ItemInfo;Z)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->deleteItemFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "DTAF"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_0

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/IconInfo;

    const-wide/16 v2, -0x66

    iput-wide v2, v11, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v2, -0x1

    iput-wide v2, v11, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    const/4 v1, -0x1

    iput v1, v11, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/android/launcher3/common/base/item/IconInfo;->mDirty:Z

    invoke-virtual {p0, v11}, Lcom/android/launcher3/allapps/controller/AppsController;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->normalizeWithExtraItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->rearrangeAllViews(Z)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v12, v2, v3}, Lcom/android/launcher3/allapps/controller/AppsController;->createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v12}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    :cond_1
    new-instance v9, Lcom/android/launcher3/allapps/DragAppIcon;

    invoke-direct {v9}, Lcom/android/launcher3/allapps/DragAppIcon;-><init>()V

    iget-wide v2, p1, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    iput-wide v2, v9, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    iget v1, p1, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    iput v1, v9, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v1, v9}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCell(Lcom/android/launcher3/allapps/DragAppIcon;)V

    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addItemToLastPosition(Lcom/android/launcher3/common/base/item/IconInfo;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->removeEmptyPagesAndUpdateAllItemsInfo()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    :cond_3
    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsController$14;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/controller/AppsController$14;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v13, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method public deleteItemFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    return-void
.end method

.method public determineStageChange(IFFFI)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    cmpl-float v5, p2, v6

    if-lez v5, :cond_1

    move v1, v3

    :goto_0
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingRange()I

    move-result v0

    :goto_1
    cmpl-float v5, p2, v6

    if-nez v5, :cond_3

    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v4

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f09019d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f09010c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v1, :cond_b

    const-string v3, "3"

    :goto_3
    invoke-virtual {v4, v5, v6, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v2

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/Utilities;->getFullScreenHeight(Landroid/app/Activity;)I

    move-result v0

    goto :goto_1

    :cond_3
    cmpl-float v5, p2, v6

    if-lez v5, :cond_7

    cmpl-float v5, p3, p4

    if-lez v5, :cond_4

    if-gez p1, :cond_4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, p5, :cond_5

    :cond_4
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, p5, :cond_6

    int-to-float v5, v0

    iget v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mPageSnapMovingRatioOnApps:F

    mul-float/2addr v5, v6

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_6

    :cond_5
    move v2, v3

    :goto_4
    goto :goto_2

    :cond_6
    move v2, v4

    goto :goto_4

    :cond_7
    cmpg-float v5, p3, p4

    if-gez v5, :cond_8

    if-lez p1, :cond_8

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, p5, :cond_9

    :cond_8
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, p5, :cond_a

    neg-float v5, p2

    int-to-float v6, v0

    iget v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mPageSnapMovingRatioOnApps:F

    mul-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_a

    :cond_9
    move v2, v3

    :goto_5
    goto :goto_2

    :cond_a
    move v2, v4

    goto :goto_5

    :cond_b
    const-string v3, "4"

    goto :goto_3
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/common/stage/Stage;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    :sswitch_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearch:Lcom/android/launcher3/allapps/view/AppsSearch;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsSearch;->showPopupMenu()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearch:Lcom/android/launcher3/allapps/view/AppsSearch;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsSearch;->launchSfinder()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearch:Lcom/android/launcher3/allapps/view/AppsSearch;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsSearch;->launchSfinder()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x52 -> :sswitch_0
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isTidyState()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f090084

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v2, 0x1

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isGridState()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0900ae

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public exitDragStateDelayed()V
    .locals 1

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->exitDragStateDelayed(I)V

    return-void
.end method

.method public exitDragStateDelayed(I)V
    .locals 4

    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mExitDragStateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsController$8;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/controller/AppsController$8;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public findFirstEmptyCell(I)I
    .locals 12

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v0

    new-array v4, v0, [Z

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherModel;->getAppsModel()Lcom/android/launcher3/allapps/model/AppsModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/model/AppsModel;->getTopLevelItemsInApps()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v8, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    int-to-long v10, p1

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    iget v5, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    if-ltz v5, :cond_0

    if-ge v5, v0, :cond_0

    const/4 v7, 0x1

    aput-boolean v7, v4, v5

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    array-length v6, v4

    if-ge v1, v6, :cond_3

    aget-boolean v6, v4, v1

    if-nez v6, :cond_2

    :goto_2
    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    goto :goto_2
.end method

.method public findSearchedApp(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher3/LauncherModel;->getAppsModel()Lcom/android/launcher3/allapps/model/AppsModel;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher3/allapps/model/AppsModel;->getTopLevelItemsInApps()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-wide v14, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v13, v14

    invoke-virtual {v12, v13}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v9

    if-eqz v9, :cond_0

    iget v12, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-nez v12, :cond_2

    iget-object v12, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v6}, Lcom/android/launcher3/common/base/item/ItemInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-wide v12, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v12, v12

    invoke-virtual {v11, v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(I)V

    iget v11, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v12

    rem-int/2addr v11, v12

    iget v12, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v13}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v13

    div-int/2addr v12, v13

    invoke-virtual {v9, v11, v12}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/launcher3/allapps/controller/AppsController;->startBounceAnimationForSearchedApp(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v12, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    move-object v4, v6

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v12, v4, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v13, v5, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v5}, Lcom/android/launcher3/common/base/item/IconInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    iget v11, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v12

    rem-int/2addr v11, v12

    iget v12, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v13}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v13

    div-int/2addr v12, v13

    invoke-virtual {v9, v11, v12}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v10

    move-object v3, v10

    check-cast v3, Lcom/android/launcher3/folder/view/FolderIconView;

    new-instance v2, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v2}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    const-string v11, "KEY_FOLDER_ICON_VIEW"

    invoke-virtual {v2, v11, v3}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v11, "KEY_FOLDER_ICON_APPSEARCHED"

    invoke-virtual {v2, v11, v5}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-wide v12, v4, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    long-to-int v12, v12

    invoke-virtual {v11, v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(I)V

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    new-instance v11, Lcom/android/launcher3/allapps/controller/AppsController$23;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v2}, Lcom/android/launcher3/allapps/controller/AppsController$23;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;Lcom/android/launcher3/common/stage/StageEntry;)V

    const-wide/16 v12, 0x3e8

    invoke-virtual {v8, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public getApproachingEndPoint()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMoveToHomeApproachingEnd:I

    return v0
.end method

.method public getApproachingStartPoint()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMoveToHomeApproachingStart:I

    return v0
.end method

.method public getAppsIconByItemId(J)Landroid/view/View;
    .locals 1

    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsController$18;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/allapps/controller/AppsController$18;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;J)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getFirstMatch(Lcom/android/launcher3/common/base/item/ItemOperator;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getAppsPageIndicatorView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    return-object v0
.end method

.method public getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    return-object v0
.end method

.method public getAppsScreenGridPanel()Lcom/android/launcher3/allapps/AppsScreenGridPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    return-object v0
.end method

.method public getAppsSearchBarView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearch:Lcom/android/launcher3/allapps/view/AppsSearch;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsSearch;->getAppsSearchBarView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getAppsSearchView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearch:Lcom/android/launcher3/allapps/view/AppsSearch;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsSearch;->getContainerView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getBackgroundBlurAmountForState(I)F
    .locals 1

    invoke-static {}, Lcom/android/launcher3/util/BlurUtils;->getMaxBlurAmount()F

    move-result v0

    return v0
.end method

.method protected getBackgroundDimAlphaForState(I)F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getBackgroundImageAlphaForState(I)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    return-object v0
.end method

.method public getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    return-object v0
.end method

.method public getDropTarget()Lcom/android/launcher3/common/drag/DropTarget;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    return-object v0
.end method

.method public getFolderIconView(Lcom/android/launcher3/folder/FolderInfo;)Landroid/view/View;
    .locals 2

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getInternalState()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    return v0
.end method

.method getLauncher()Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method public getLocationInfoFromDB(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 3

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->getAppsModel()Lcom/android/launcher3/allapps/model/AppsModel;

    move-result-object v0

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/model/AppsModel;->reloadPositionFromDB(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getOrganizeAppsAlertEnable()Z
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "AppsController.OrganizeAppsAlert"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v0

    goto :goto_0
.end method

.method public getReorderController()Lcom/android/launcher3/allapps/controller/AppsReorderController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    return v0
.end method

.method public getTidyUpContainerView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f110028

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTrayBgBlurAmount()F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getBackgroundBlurAmountForState(I)F

    move-result v0

    return v0
.end method

.method public getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    .locals 1

    sget-object v0, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Underground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    return-object v0
.end method

.method public getTrayScale()F
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsContainer;->getScaleY()F

    move-result v0

    return v0
.end method

.method public getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    return-object v0
.end method

.method public hideViewTypeDialog()V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->closeViewTypeDialog()V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    return-void
.end method

.method public initBounceAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    :cond_0
    return-void
.end method

.method public initStageView()V
    .locals 6

    const v5, 0x7f0200d8

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewTypeFromSharedPreference(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->valueOf(Ljava/lang/String;)Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->initContainerView()V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->initBackground()V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->initAppsPagedView()V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->initReorderController()V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->initDragController()V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->initTrayResources()V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->initAppSearchBar()V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->initAdapterProvider()V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->initPageIndicator()V

    new-instance v2, Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-direct {v2, v3, p0, v4}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/controller/AppsController;Lcom/android/launcher3/common/tray/TrayManager;)V

    iput-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMultiSelect()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addMultiSelectCallbacks(Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;)V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v3, 0x7f11002a

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/android/launcher3/allapps/controller/AppsController$3;

    invoke-direct {v2, p0}, Lcom/android/launcher3/allapps/controller/AppsController$3;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->setTextViewDescription(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v3, 0x7f110029

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/allapps/controller/AppsController$4;

    invoke-direct {v2, p0}, Lcom/android/launcher3/allapps/controller/AppsController$4;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->setTextViewDescription(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isEnableBtnBg(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->initScreenGridPanel()V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->searchSettingCheck()V

    invoke-super {p0}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    return-void
.end method

.method public isAlphabeticalMode()Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    sget-object v1, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAppsLoading()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGridState()Z
    .locals 2

    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 4

    iget-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v2, -0x66

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMovingOnBlock()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->isMovingOnBlock()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverBlurSlop(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->getCountTouchMove()I

    move-result v0

    if-le v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectState()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwitchingState()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/StageManager;->isRunningAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isSwithchingInternalState()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwithchingInternalState()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isRunningStateChangeAnimation()Z

    move-result v0

    return v0
.end method

.method public isTidyState()Z
    .locals 2

    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVerticalScroll()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->isVerticalScroll()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisibleGridPanel()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V
    .locals 10

    iget v9, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/allapps/controller/AppsController;->modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIIII)V

    return-void
.end method

.method public modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIIII)V
    .locals 4

    iput-wide p2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iput p8, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iput p6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput p7, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput-wide p4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput p9, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "container"

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "rank"

    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "cellX"

    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "cellY"

    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "screen"

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "hidden"

    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    return-void
.end method

.method public modifyItemsInDb(Ljava/util/ArrayList;JI)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;JI)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-wide p2, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    int-to-long v6, p4

    iput-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "container"

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "cellX"

    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "cellY"

    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "rank"

    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "screen"

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5, v6, v0, p1}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public moveItemFromFolder(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 8

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    if-nez v2, :cond_0

    const-string v3, "Launcher.AppsController"

    const-string v4, "Adapter doesn\'t have an folder which extract item."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v2, p1}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v3

    if-eqz v3, :cond_2

    const-wide/16 v4, -0x66

    iput-wide v4, p1, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v4, -0x1

    iput-wide v4, p1, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    const/4 v3, -0x1

    iput v3, p1, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/launcher3/common/base/item/IconInfo;->mDirty:Z

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, v6}, Lcom/android/launcher3/allapps/controller/AppsController;->normalizeWithExtraItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->rearrangeAllViews(Z)V

    invoke-virtual {p0, p1, v6, v6}, Lcom/android/launcher3/allapps/controller/AppsController;->createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    :cond_1
    :goto_1
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/launcher3/allapps/controller/AppsController$15;

    invoke-direct {v4, p0, p1}, Lcom/android/launcher3/allapps/controller/AppsController$15;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;Lcom/android/launcher3/common/base/item/IconInfo;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addItemToLastPosition(Lcom/android/launcher3/common/base/item/IconInfo;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->removeEmptyPagesAndUpdateAllItemsInfo()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    goto :goto_1
.end method

.method public moveOutItemsFromLockedFolder(Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/folder/FolderInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v12

    if-nez v12, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v5, 0x0

    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    iget-wide v12, v6, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    const-wide/16 v14, -0x1

    cmp-long v12, v12, v14

    if-nez v12, :cond_2

    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v12

    iput-wide v12, v6, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    :cond_2
    const-wide/16 v12, -0x66

    iput-wide v12, v6, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v8

    long-to-int v3, v10

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v8, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v12, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v13}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v14}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountY()I

    move-result v14

    mul-int/2addr v13, v14

    if-ge v12, v13, :cond_4

    const/4 v4, 0x1

    :cond_3
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ge v12, v13, :cond_5

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    iput v12, v6, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    iput v12, v6, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    iput-wide v12, v6, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    iput v12, v6, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/allapps/controller/AppsController;->removeAppsItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    :goto_2
    iget-wide v12, v6, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    long-to-int v7, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v12, v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/CellLayout;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v2, v12}, Lcom/android/launcher3/allapps/controller/AppsController;->createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v6}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher3/allapps/controller/AppsController;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_6

    int-to-long v12, v3

    iput-wide v12, v6, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v12, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v12

    iput v12, v6, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->createAppsPage()Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    int-to-long v12, v8

    iput-wide v12, v6, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    const/4 v12, 0x0

    iput v12, v6, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    goto :goto_2
.end method

.method public normalizeWithExtraItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v9}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_2

    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v9, v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getPageChildCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v9, v8, Lcom/android/launcher3/common/view/Removable;

    if-eqz v9, :cond_0

    move-object v9, v8

    check-cast v9, Lcom/android/launcher3/common/view/Removable;

    invoke-interface {v9}, Lcom/android/launcher3/common/view/Removable;->isMarkToRemove()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v9}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->getNormalizer()Lcom/android/launcher3/allapps/controller/Normalizer;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v10}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v10

    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v11}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v11

    invoke-virtual {v9, v5, v10, v11}, Lcom/android/launcher3/allapps/controller/Normalizer;->normalize(Ljava/util/ArrayList;II)I

    return-void
.end method

.method public notifyCapture(Z)V
    .locals 0

    return-void
.end method

.method public notifyControllerItemsChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByNormalizer(Z)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mFromSetting:Z

    if-eqz v3, :cond_0

    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->startSettingActivity(Z)V

    :goto_0
    return v1

    :cond_0
    iget v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-virtual {p0, v2, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->startSettingActivity(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    const v3, 0x7f09019d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f09010c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0
.end method

.method public onBadgeBindingCompleted(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsController$19;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/allapps/controller/AppsController$19;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->updateBadgeItems(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onChangeSelectMode(ZZ)V
    .locals 6

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0, v4, p2}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    sget-object v0, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/Talk;->postSay(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->clearCheckedApps()V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addCheckedApp(Landroid/view/View;Lcom/android/launcher3/common/drag/DragSource;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeCheckedApp(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->isRunningAnimation()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v4}, Lcom/android/launcher3/common/tray/TrayManager;->isMoving()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isTidyState()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->initBounceAnimation()V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v4, :cond_3

    instance-of v4, v1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v4, :cond_0

    :cond_3
    iget v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    instance-of v2, p1, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/Launcher;->onClickFolderIcon(Landroid/view/View;)V

    :cond_4
    :goto_1
    move v2, v3

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/Launcher;->startAppShortcutOrInfoActivity(Landroid/view/View;)V

    instance-of v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v2, :cond_4

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->sendGSIMLog(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_1

    :pswitch_1
    move v2, v3

    goto :goto_0

    :pswitch_2
    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, p1}, Lcom/android/launcher3/Launcher;->startAppShortcutOrInfoActivity(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearch:Lcom/android/launcher3/allapps/view/AppsSearch;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/allapps/view/AppsSearch;->updateRecentApp(Lcom/android/launcher3/common/base/item/IconInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->sendGSIMLog(Lcom/android/launcher3/common/base/item/IconInfo;)V

    invoke-virtual {p0, v2, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    move v2, v3

    goto :goto_0

    :pswitch_3
    instance-of v2, p1, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v2

    if-eqz v2, :cond_6

    check-cast p1, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderIconView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->toggle()V

    :goto_2
    move v2, v3

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/Launcher;->onClickFolderIcon(Landroid/view/View;)V

    goto :goto_2

    :cond_7
    check-cast p1, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {p1}, Lcom/android/launcher3/common/view/IconView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->toggle()V

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901a0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    const-string v6, "0"

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onClickMultiSelectPanel(I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZZ)Z

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->createFolder()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChangedIfNeeded(Z)V
    .locals 8

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNavigationBar()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsContainer;->getPaddingTop()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    iget v5, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {v4, v6, v3, v5, v6}, Lcom/android/launcher3/allapps/view/AppsContainer;->setPadding(IIII)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByConfiguration()V

    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearch:Lcom/android/launcher3/allapps/view/AppsSearch;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsSearch;->onConfigurationChangedIfNeeded()V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->onConfigurationChangedIfNeeded()V

    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->onConfigurationChangedIfNeeded(Z)V

    const-string v4, "Launcher.AppsController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onConfigurationChangedIfNeeded consumed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    iget v5, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {v4, v6, v3, v6, v5}, Lcom/android/launcher3/allapps/view/AppsContainer;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onDestroyActivity()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/common/tray/TrayManager;->removeTrayEventCallbacks(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->destroy()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeMultiSelectCallbacks(Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;)V

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->removeFolderLockActionCallback(Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockActionCallback;)V

    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherModel;->unregisterOnBadgeBindingCompletedLisnter(Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherModel;->unregisterOnLiveIconUpdateLisnter(Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;)V

    :cond_3
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->isRunningAnimation()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/tray/TrayManager;->isMoving()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isTidyState()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isDragLocked()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->initBounceAnimation()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    new-instance v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    invoke-direct {v2, p1, v0}, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;-><init>(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    iget-object v1, v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    :cond_3
    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v5

    if-nez v5, :cond_5

    iget v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    if-nez v5, :cond_5

    invoke-virtual {p0, v2, v4}, Lcom/android/launcher3/allapps/controller/AppsController;->startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;Z)V

    :cond_4
    :goto_1
    move v3, v4

    goto :goto_0

    :cond_5
    iget v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v5, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->canLongClick(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/allapps/controller/AppsController;->startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;Z)V

    goto :goto_1
.end method

.method public onOptionSelectedSearchRecommend()V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/launcher3/AppSearchSettingActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/launcher3/allapps/controller/AppsController$16;

    invoke-direct {v2, p0}, Lcom/android/launcher3/allapps/controller/AppsController$16;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    const-wide/16 v4, 0x2bc

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onPauseActivity()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mIsResumed:Z

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isSelectState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isShowingHelpDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->hideHelpDialog(Z)V

    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    :cond_1
    return-void
.end method

.method public onReceiveTrayEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget v2, p1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;->mEventType:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsContainer;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v2, v5}, Lcom/android/launcher3/allapps/view/AppsContainer;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/view/AppsContainer;->setAlpha(F)V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, v4, v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateChildrenLayersEnabled(IZ)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mHwLayerPageIndexWhileTray:I

    goto :goto_0

    :pswitch_2
    iget v2, p1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;->mValue:F

    float-to-int v1, v2

    if-ne v1, v6, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/view/AppsContainer;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mHwLayerPageIndexWhileTray:I

    invoke-virtual {v2, v3, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateChildrenLayersEnabled(IZ)I

    iput v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mHwLayerPageIndexWhileTray:I

    goto :goto_0

    :pswitch_3
    iget v0, p1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;->mValue:F

    iget-boolean v2, p1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;->mDisallowVisible:Z

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->updateAppsViewByTrayPosition(FZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onRefreshLiveIcon()V
    .locals 2

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateLiveIcon()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResumeActivity()V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mIsResumed:Z

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->resume()V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTransitionEffects()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v7, v8}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->setup(Lcom/android/launcher3/common/base/view/PagedView;)V

    :cond_0
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearch:Lcom/android/launcher3/allapps/view/AppsSearch;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/view/AppsSearch;->resume()V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->initBounceAnimation()V

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getSearchedApp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v7, v6}, Lcom/android/launcher3/Utilities;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v6, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherModel;->getAppsModel()Lcom/android/launcher3/allapps/model/AppsModel;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getSearchedAppUser()Landroid/os/UserHandle;

    move-result-object v8

    invoke-static {v8}, Lcom/android/launcher3/common/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v8

    invoke-virtual {v7, v2, v8, v9}, Lcom/android/launcher3/allapps/model/AppsModel;->getItemInfoInAppsForComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/android/launcher3/common/base/item/ItemInfo;->isHiddenByUser()Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v3, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v3}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    iput-boolean v9, v3, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    iput v11, v3, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    const-string v7, "KEY_PICKER_MODE"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "KEY_BOUNCED_ITEM"

    invoke-virtual {v3, v7, v0}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "KEY_BOUNCED_ITEM_USER"

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getSearchedAppUser()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v7

    const/4 v8, 0x6

    invoke-virtual {v7, v8, v3}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7, v10}, Lcom/android/launcher3/Launcher;->setSearchedApp(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7, v10}, Lcom/android/launcher3/Launcher;->setSearchedAppUser(Landroid/os/UserHandle;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getSearchedAppUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {p0, v2, v7}, Lcom/android/launcher3/allapps/controller/AppsController;->findSearchedApp(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7, v10}, Lcom/android/launcher3/Launcher;->setSearchedApp(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7, v10}, Lcom/android/launcher3/Launcher;->setSearchedAppUser(Landroid/os/UserHandle;)V

    :cond_4
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    if-nez v7, :cond_2

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto :goto_0
.end method

.method public onSetPageScrollListener(Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setPageScrollListener(Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;)V

    return-void
.end method

.method protected onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 14

    const/4 v13, 0x6

    const/4 v12, 0x5

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-virtual {v8, v11}, Lcom/android/launcher3/common/drag/DragManager;->setDragScroller(Lcom/android/launcher3/common/drag/DragScroller;)V

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-virtual {v8, v11}, Lcom/android/launcher3/common/drag/DragManager;->addDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v8, v11}, Lcom/android/launcher3/common/drag/DragManager;->setMoveTarget(Landroid/view/View;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget v3, p1, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v6

    iget-boolean v1, p1, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    const-string v8, "KEY_SUPPRESS_CHANGE_STAGE_ONCE"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p1, v8, v11}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_2

    move v7, v9

    :goto_0
    if-eqz v7, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v8}, Lcom/android/launcher3/common/tray/TrayManager;->setSuppressChangeStageOnce()V

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v8

    if-ne v8, v12, :cond_3

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v8, v1, v6}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getEnterFromSettingAnim(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p0, v12, v10}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    :goto_1
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLoggingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v8}, Lcom/android/launcher3/common/stage/StageEntry;->addOnCompleteRunnableCallBack(Ljava/lang/Runnable;)V

    :cond_1
    return-object v2

    :cond_2
    move v7, v10

    goto :goto_0

    :cond_3
    if-ne v3, v9, :cond_7

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v8

    if-ne v8, v9, :cond_6

    invoke-virtual {p0, v9, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v8, v9}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateAccessibilityFlags(Z)V

    :cond_5
    :goto_3
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto :goto_1

    :cond_6
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v8, v1, v6}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getEnterFromHomeAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v2

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearch:Lcom/android/launcher3/allapps/view/AppsSearch;

    invoke-virtual {v8, v10}, Lcom/android/launcher3/allapps/view/AppsSearch;->setSearchBarVisibility(I)V

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v8

    if-nez v8, :cond_4

    sget-object v8, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090026

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v11}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    if-eq v3, v12, :cond_8

    if-ne v3, v13, :cond_a

    :cond_8
    if-ne v3, v13, :cond_9

    const-string v8, "KEY_ITEMS_TO_HIDE"

    invoke-virtual {p1, v8}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    const-string v8, "KEY_ITEMS_TO_SHOW"

    invoke-virtual {p1, v8}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v4, :cond_9

    if-eqz v5, :cond_9

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8, v4, v5}, Lcom/android/launcher3/Launcher;->updateItemInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_9
    const-string v8, "KEY_FOLDER_ICON_VIEW"

    invoke-virtual {p1, v8}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v8, v1, p1, v6, v0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getEnterFromFolderAnimation(ZLcom/android/launcher3/common/stage/StageEntry;Ljava/util/HashMap;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v8

    invoke-virtual {p0, v8, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    goto/16 :goto_3

    :cond_a
    const/4 v8, 0x3

    if-ne v3, v8, :cond_5

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v8, v1, v6}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getEnterFromSettingAnim(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v2

    goto/16 :goto_3
.end method

.method protected onStageEnterByTray()Landroid/animation/Animator;
    .locals 4

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getEnterFromHomeAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsController$6;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/controller/AppsController$6;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method protected onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 10

    const/4 v9, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v8}, Lcom/android/launcher3/Utilities;->closeDialog(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->closeViewTypeDialog()V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->closeOrganizeAppsConfirmDialog()V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->initBounceAnimation()V

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearch:Lcom/android/launcher3/allapps/view/AppsSearch;

    invoke-virtual {v8, p1}, Lcom/android/launcher3/allapps/view/AppsSearch;->stageExit(Lcom/android/launcher3/common/stage/StageEntry;)V

    if-eqz p1, :cond_2

    iget v5, p1, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v4

    iget-boolean v1, p1, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    if-ne v5, v6, :cond_4

    iget v8, p1, Lcom/android/launcher3/common/stage/StageEntry;->stageCountOnFinishAllStage:I

    if-lez v8, :cond_3

    move v3, v6

    :goto_0
    iget v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    if-ne v8, v9, :cond_0

    if-eqz v3, :cond_0

    invoke-direct {p0, v7, v7}, Lcom/android/launcher3/allapps/controller/AppsController;->restoreScreenGrid(IZ)V

    :cond_0
    invoke-virtual {p0, v7, v6}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v6, v1, v4}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getExitToHomeAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v2

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateAccessibilityFlags(Z)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLoggingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v6}, Lcom/android/launcher3/common/stage/StageEntry;->addOnCompleteRunnableCallBack(Ljava/lang/Runnable;)V

    :cond_2
    return-object v2

    :cond_3
    move v3, v7

    goto :goto_0

    :cond_4
    if-eq v5, v9, :cond_5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_6

    :cond_5
    const-string v6, "KEY_FOLDER_ICON_VIEW"

    invoke-virtual {p1, v6}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v6, v1, v4, v0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getExitToFolderAnimation(ZLjava/util/HashMap;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    goto :goto_1

    :cond_6
    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v6, v7, v4}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getExitToWidgetAnim(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v2

    goto :goto_1
.end method

.method protected onStageExitByTray()Landroid/animation/Animator;
    .locals 4

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getExitToHomeAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsController$5;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/controller/AppsController$5;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method protected onStageMovingToInitial(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsContainer;->getAlpha()F

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsContainer;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/view/AppsContainer;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    :cond_0
    return-void
.end method

.method public onStartActivity()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->start()V

    return-void
.end method

.method public onStopActivity()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->stop()V

    return-void
.end method

.method public onSwipeBlockListener(FF)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/launcher3/util/event/ScrollDeterminator;->setBlockArea(Lcom/android/launcher3/common/base/view/PagedView;FF)Z

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/event/ScrollDeterminator;->setScrollableView(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/event/ScrollDeterminator;->setTalkBackEnabled(Landroid/content/Context;)Z

    return-void
.end method

.method public onUpdateAlphabetList(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 6

    instance-of v2, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByNormalizer(Z)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/launcher3/allapps/controller/AppsController$22;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/allapps/controller/AppsController$22;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;Lcom/android/launcher3/folder/FolderInfo;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public prepareTidedUpPages()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getOrganizeAppsAlertEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/launcher3/allapps/OrganizeAppsConfirmDialog;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/OrganizeAppsConfirmDialog;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/allapps/OrganizeAppsConfirmDialog;->show(Landroid/app/FragmentManager;Lcom/android/launcher3/allapps/controller/AppsController;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasEmptyCellAtPages()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f090078

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public prepareViewsForReposition()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v7, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPageChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v7, v5, Lcom/android/launcher3/common/view/IconView;

    if-eqz v7, :cond_0

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v6
.end method

.method public recoverCancelItemForFolderLock(Lcom/android/launcher3/common/base/item/IconInfo;JJIII)Z
    .locals 20

    move-wide/from16 v0, p4

    long-to-int v15, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4, v15}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v12, -0x66

    cmp-long v4, v10, v12

    if-eqz v4, :cond_2

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v4, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v4, :cond_0

    move-object/from16 v17, v18

    check-cast v17, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderInfo;->add(Lcom/android/launcher3/common/base/item/IconInfo;)V

    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5, v4}, Lcom/android/launcher3/allapps/controller/AppsController;->createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    const/4 v4, 0x2

    new-array v6, v4, [I

    const/4 v4, 0x0

    aput p6, v6, v4

    const/4 v4, 0x1

    aput p7, v6, v4

    new-instance v8, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-direct {v8}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;-><init>()V

    move-object/from16 v0, p1

    iput-object v0, v8, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/allapps/controller/AppsDragController;->createUserFolderIfNecessary(Lcom/android/launcher3/common/base/view/CellLayout;[ILandroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/view/View;)Z

    goto :goto_0

    :cond_2
    move/from16 v0, p8

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move-wide/from16 v0, p4

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5, v4}, Lcom/android/launcher3/allapps/controller/AppsController;->createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->mDirty:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v7, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4, v15}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v4

    add-int/lit8 v12, v4, -0x1

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    const/4 v14, -0x1

    invoke-virtual/range {v9 .. v15}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(IFIIII)V

    goto :goto_0
.end method

.method public removeApps(Ljava/util/ArrayList;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v18, "Launcher.AppsController"

    const-string v19, "removApps - no items"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v18, "Launcher.AppsController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "removApps : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/allapps/controller/AppsController;->mRemoveInProgress:Z

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_1
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher3/allapps/controller/AppsController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v19

    if-eqz v19, :cond_3

    iget-wide v0, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    iget-wide v0, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-wide v0, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    check-cast v10, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isSelectState()Z

    move-result v19

    if-eqz v19, :cond_1

    iget-wide v0, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeCheckedApp(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mIsResumed:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15, v4}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCellsAndViews(Ljava/util/ArrayList;Z)V

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_5
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_5

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    const-wide/16 v20, -0x66

    move-wide/from16 v0, v20

    iput-wide v0, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    :cond_7
    invoke-virtual {v8, v13}, Lcom/android/launcher3/folder/FolderInfo;->remove(Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v18

    sget-object v19, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_a

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByNormalizer(Z)V

    :cond_9
    :goto_5
    new-instance v18, Landroid/os/Handler;

    invoke-direct/range {v18 .. v18}, Landroid/os/Handler;-><init>()V

    new-instance v19, Lcom/android/launcher3/allapps/controller/AppsController$13;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController$13;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    const-wide/16 v20, 0xc8

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->removeEmptyPagesAndUpdateAllItemsInfo()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    goto :goto_5
.end method

.method public removeAppsItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->removeAppsItem(Lcom/android/launcher3/common/base/item/ItemInfo;Z)V

    return-void
.end method

.method public removeAppsItem(Lcom/android/launcher3/common/base/item/ItemInfo;Z)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v8, 0x0

    const-string v5, "Launcher.AppsController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeAppsItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v5, :cond_1

    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    move-object v5, p1

    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v2, v5}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    const-string v5, "Launcher.AppsController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v5, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v6

    rem-int/2addr v5, v6

    iget v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v7

    div-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v4, v3}, Lcom/android/launcher3/allapps/controller/AppsController;->removeAppsItem(Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v6, v6

    invoke-virtual {v5, v8, v1, v6, v8}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCellAtPage(IIIZ)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->removeEmptyPagesAndUpdateAllItemsInfo()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    goto :goto_0
.end method

.method public removeEmptyPagesAndUpdateAllItemsInfo()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeEmptyScreen()Z

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeExtraEmptyScreen()V

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v3, v3}, Lcom/android/launcher3/allapps/controller/AppsController;->normalizeWithExtraItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public removeUnusedItemViews(II)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountY()I

    move-result v1

    mul-int v4, v0, v1

    move v3, p2

    :goto_0
    if-ge v3, v4, :cond_1

    rem-int v6, v3, v0

    div-int v7, v3, v0

    invoke-virtual {v2, v6, v7}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public replaceFolderWithFinalItem(Lcom/android/launcher3/common/base/item/ItemInfo;ILandroid/view/View;)V
    .locals 18

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v14, p1

    check-cast v14, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-wide v4, v14, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    long-to-int v4, v4

    invoke-virtual {v2, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    move/from16 v0, p2

    if-gt v0, v2, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher3/allapps/controller/AppsController;->deleteItemFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    if-eqz v12, :cond_2

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    :cond_2
    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/android/launcher3/common/drag/DropTarget;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    check-cast p3, Lcom/android/launcher3/common/drag/DropTarget;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    :cond_3
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    if-eqz v14, :cond_4

    iget-object v2, v14, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-wide v4, v14, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v6, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher3/allapps/controller/AppsController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    iget-wide v4, v14, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    iput-wide v4, v3, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    iget v2, v14, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    iput v2, v3, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iget v2, v14, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    iput v2, v3, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    iget v2, v14, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    iput v2, v3, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    :cond_4
    :goto_1
    if-nez p2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-nez v2, :cond_5

    iget v7, v14, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-wide v4, v14, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    long-to-int v4, v4

    invoke-virtual {v2, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v8

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v10, v0

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(IFIIII)V

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_6

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->normalizeWithExtraItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->rearrangeAllViews(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeEmptyScreen()Z

    :cond_7
    if-eqz v13, :cond_8

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v3}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    goto/16 :goto_0

    :cond_9
    iget-wide v4, v14, Lcom/android/launcher3/folder/FolderInfo;->container:J

    iget-wide v6, v14, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    iget v8, v14, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    iget v9, v14, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    iget v10, v14, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher3/allapps/controller/AppsController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    goto :goto_1
.end method

.method public repositionBy(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 5

    const/4 v4, 0x0

    iget v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByTypeUpPages()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    if-nez v2, :cond_3

    const-string v2, "KEY_REPOSITION_BY"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->applyOrCancelTideUpPages()V

    goto :goto_0

    :cond_2
    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->applySetViewType()V

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const-string v2, "KEY_CHANGE_GRID_SIZE"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByGrid([I)V

    goto :goto_0
.end method

.method public repositionByNormalizer(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->getNormalizer()Lcom/android/launcher3/allapps/controller/Normalizer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByNormalizer(Lcom/android/launcher3/allapps/controller/Normalizer;IZ)V

    return-void
.end method

.method public requestBlurChange(ZLandroid/view/Window;FJ)V
    .locals 0

    return-void
.end method

.method public requestDeferredRunnables()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->requestRunDeferredRunnables()V

    const/4 v0, 0x1

    return v0
.end method

.method public searchSettingCheck()V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "search_recommend"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherFeature;->setSupportGalaxyAppsSearch(Z)V

    return-void
.end method

.method public sendGSIMLog(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 7

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "APIS"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_0
    return-void
.end method

.method setApplyTidyUpPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mApplyTideUpPage:Z

    return-void
.end method

.method public setDataWithOutStageChange(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v1, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    goto :goto_0
.end method

.method public setOrganizeAppsAlertEnable(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "AppsController.OrganizeAppsAlert"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPagedViewVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTextViewDescription(Landroid/view/View;)V
    .locals 5

    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "Launcher.AppsController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This view can\'t cast to TextView : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "null"

    goto :goto_1
.end method

.method public setViewType(Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)V
    .locals 8

    const v5, 0x7f0901a0

    const v4, 0x7f090113

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "Launcher.AppsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setViewType. old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1, v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setCurrentPage(I)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Launcher.AppsController"

    const-string v2, "There are no items that should be moved to position by normalizer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    const v2, 0x7f0901ba

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    sget-object v2, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->CUSTOM_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->saveViewTypeSharefPref()V

    invoke-virtual {p0, v6, v7, v7}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZZ)Z

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->updateDragMode()V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    sget-object v2, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x2

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1
.end method

.method public setup()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/controller/AppsFocusListener;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsFocusListener:Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getTrayManager()Lcom/android/launcher3/common/tray/TrayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/tray/TrayManager;->addTrayEventCallbacks(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;)V

    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->addFolderLockActionCallback(Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockActionCallback;)V

    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherModel;->registerOnBadgeBindingCompletedLisnter(Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherModel;->registerOnLiveIconUpdateListener(Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherProxy;->setAppsProxyCallbacks(Lcom/android/launcher3/proxy/AppsProxyCallbacks;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/event/ScrollDeterminator;->setSystemTouchSlop(Landroid/content/Context;)I

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/event/ScrollDeterminator;->registrateController(I)V

    return-void
.end method

.method public showMoveToHomePanel(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsContainer;->getHeight()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/common/tray/TrayManager;->pullTrayForDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsContainer;->getHeight()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/common/tray/TrayManager;->releaseTrayForDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;I)V

    goto :goto_0
.end method

.method public startContactUs()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->startContactUsActivity(Landroid/content/Context;)V

    return-void
.end method

.method public startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;Z)V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, p2, v3}, Lcom/android/launcher3/Launcher;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/common/drag/DragSource;ZZ)V

    goto :goto_0
.end method

.method public startGalaxyEssentials()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.sec.android.app.samsungapps"

    const-string v3, "com.sec.android.app.samsungapps.interim.essentials.InterimEssentialsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "Launcher.AppsController"

    const-string v3, "Unable to start GalaxyEssentials"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startHomeSetting()V
    .locals 2

    const-string v0, "Launcher.AppsController"

    const-string v1, "onClickHomeSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->startHomeSettingActivity()V

    return-void
.end method

.method public startTrayMove()V
    .locals 1

    sget-object v0, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v0}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsContainer;->semClearAccessibilityFocus()V

    :cond_0
    return-void
.end method

.method protected supportNavigationBarForState(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method protected supportStatusBarForState(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public switchInternalState(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 12

    const/16 v11, 0x8

    const/4 v9, 0x5

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateFrom()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v3

    iget-boolean v0, p1, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    const/4 v4, 0x0

    if-nez v2, :cond_8

    if-ne v5, v7, :cond_2

    invoke-virtual {p0, v7}, Lcom/android/launcher3/allapps/controller/AppsController;->showMoveToHomePanel(Z)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addExtraEmptyScreenOnDrag()V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v6, v0, v3, v7, v8}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getDragAnimation(ZLjava/util/HashMap;ZZ)Landroid/animation/AnimatorSet;

    move-result-object v4

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setCrosshairsVisibilityChilds(I)V

    :cond_0
    :goto_0
    if-nez v5, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLoggingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v6}, Lcom/android/launcher3/common/stage/StageEntry;->addOnCompleteRunnableCallBack(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateAccessibilityFlags(Z)V

    return-object v4

    :cond_2
    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearch:Lcom/android/launcher3/allapps/view/AppsSearch;

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v6, v8, p1}, Lcom/android/launcher3/allapps/view/AppsSearch;->switchInternalState(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v4

    goto :goto_0

    :cond_3
    if-ne v5, v10, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mExitDragStateHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateCheckBox(Z)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v6, v0, v3, v7}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getSelectAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;

    move-result-object v4

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setCrosshairsVisibilityChilds(I)V

    goto :goto_0

    :cond_4
    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    const-string v6, "KEY_REPOSITION_BY"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v6, v8}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v6, v0, v3, v7, p1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getTidyUpAnimation(ZLjava/util/HashMap;ZLcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;

    move-result-object v4

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v6

    const/16 v8, 0xa

    invoke-virtual {v6, v8}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto :goto_0

    :cond_5
    if-nez v5, :cond_6

    const-string v6, "KEY_REPOSITION_BY"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v6, v8}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v6, v0, v3, p1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getChangeViewTypeAnimation(ZLjava/util/HashMap;Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;

    move-result-object v4

    goto :goto_0

    :cond_6
    if-ne v5, v9, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->updateButtonStatus()V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->updateApplyCancelButton()V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->getScreenGridTopConatiner()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->getScreenGridTopConatiner()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v6, v8, v3, p1, v7}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getScreenGridEnterExitAnimation(ZLjava/util/HashMap;Lcom/android/launcher3/common/stage/StageEntry;Z)Landroid/animation/AnimatorSet;

    move-result-object v4

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6, v8, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setCrosshairsVisibilityChilds(IZ)V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->closeViewTypeDialog()V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v6

    const/16 v8, 0x18

    invoke-virtual {v6, v8}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto/16 :goto_0

    :cond_8
    if-ne v2, v7, :cond_c

    if-nez v5, :cond_b

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isSelectState()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6, v8, v0}, Lcom/android/launcher3/Launcher;->onChangeSelectMode(ZZ)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateCheckBox(Z)V

    :cond_9
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->getExistOverLastItemMoved()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->undoOverLastItems()V

    :cond_a
    invoke-virtual {p0, v8}, Lcom/android/launcher3/allapps/controller/AppsController;->showMoveToHomePanel(Z)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v6, v0, v3, v8, v8}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getDragAnimation(ZLjava/util/HashMap;ZZ)Landroid/animation/AnimatorSet;

    move-result-object v4

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6, v11}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setCrosshairsVisibilityChilds(I)V

    goto/16 :goto_0

    :cond_b
    if-ne v5, v10, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mExitDragStateHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateCheckBox(Z)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v6, v0, v3, v7}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getSelectAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;

    move-result-object v4

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setCrosshairsVisibilityChilds(I)V

    goto/16 :goto_0

    :cond_c
    const/4 v6, 0x3

    if-ne v2, v6, :cond_d

    if-nez v5, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearch:Lcom/android/launcher3/allapps/view/AppsSearch;

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v6, v8, p1}, Lcom/android/launcher3/allapps/view/AppsSearch;->switchInternalState(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    goto/16 :goto_0

    :cond_d
    if-ne v2, v10, :cond_f

    if-nez v5, :cond_e

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v6, v0, v3, v8}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getSelectAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;

    move-result-object v4

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6, v11}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setCrosshairsVisibilityChilds(I)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6, v8, v0}, Lcom/android/launcher3/Launcher;->onChangeSelectMode(ZZ)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateCheckBox(Z)V

    goto/16 :goto_0

    :cond_e
    if-ne v5, v7, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateCheckBox(Z)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addExtraEmptyScreenOnDrag()V

    invoke-virtual {p0, v7}, Lcom/android/launcher3/allapps/controller/AppsController;->showMoveToHomePanel(Z)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v6, v0, v3, v7, v7}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getDragAnimation(ZLjava/util/HashMap;ZZ)Landroid/animation/AnimatorSet;

    move-result-object v4

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setCrosshairsVisibilityChilds(I)V

    goto/16 :goto_0

    :cond_f
    const/4 v6, 0x4

    if-ne v2, v6, :cond_11

    if-nez v5, :cond_0

    const-string v6, "KEY_REPOSITION_BY"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v6, v9}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    iget-boolean v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mApplyTideUpPage:Z

    if-nez v6, :cond_10

    iget-boolean v6, p1, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    if-eqz v6, :cond_10

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6, v3, v8, p1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getTidyUpAnimation(ZLjava/util/HashMap;ZLcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;

    move-result-object v4

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto/16 :goto_0

    :cond_10
    move v6, v8

    goto :goto_1

    :cond_11
    if-ne v2, v9, :cond_0

    if-nez v5, :cond_12

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v6, v0, v3, p1, v8}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getScreenGridEnterExitAnimation(ZLjava/util/HashMap;Lcom/android/launcher3/common/stage/StageEntry;Z)Landroid/animation/AnimatorSet;

    move-result-object v4

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6, v11, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setCrosshairsVisibilityChilds(IZ)V

    goto/16 :goto_0

    :cond_12
    if-ne v5, v9, :cond_0

    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsController$9;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/controller/AppsController$9;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/common/stage/StageEntry;->addOnCompleteRunnableCallBack(Ljava/lang/Runnable;)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v6, v0, v3, p1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getChangeGridAnimation(ZLjava/util/HashMap;Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public updateApps(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v3

    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsController$12;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/controller/AppsController$12;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;Ljava/util/HashSet;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v9, v10, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V

    if-eqz v3, :cond_1

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7, v10, v10, v0}, Lcom/android/launcher3/folder/FolderInfo;->setAlphabeticalOrder(ZZLandroid/content/Context;)V

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshFolderIcon()V

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public updateBadgeItems(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/launcher3/allapps/controller/AppsController$10;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher3/allapps/controller/AppsController$10;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;Ljava/util/HashSet;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V

    return-void
.end method

.method public updateCountBadge(Landroid/view/View;Z)V
    .locals 2

    instance-of v1, p1, Lcom/android/launcher3/common/view/IconView;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/IconView;->getCountBadgeView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    check-cast p1, Lcom/android/launcher3/common/view/IconView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Lcom/android/launcher3/common/view/IconView;->updateCountBadge(ZZ)V

    :cond_0
    return-void
.end method

.method public updateDirtyItems()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->updateDirtyItems()V

    return-void
.end method

.method public updateGridInfo()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->updateGridBtnLayout()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f11002e

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    move-object v0, v1

    goto :goto_0
.end method

.method public updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/common/base/item/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    return-void
.end method

.method public updateRestoreItems(Ljava/util/HashSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    const/4 v1, 0x1

    new-instance v2, Lcom/android/launcher3/allapps/controller/AppsController$11;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/allapps/controller/AppsController$11;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;Ljava/util/HashSet;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V

    return-void
.end method
