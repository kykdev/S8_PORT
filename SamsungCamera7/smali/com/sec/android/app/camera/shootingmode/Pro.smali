.class public Lcom/sec/android/app/camera/shootingmode/Pro;
.super Ljava/lang/Object;
.source "Pro.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/RecordingMode;
.implements Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/samsung/android/camera/core/SemCamera$CameraSensorDataListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;
.implements Lcom/sec/android/app/camera/menu/ProSlider$ProSliderManualFocusAssistListener;
.implements Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingListSelectListener;
.implements Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;
.implements Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingSliderBarListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;
.implements Lcom/sec/android/app/camera/widget/gl/ProItem$ProItemClickListener;
.implements Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHideListener;
.implements Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;
.implements Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListSelectListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$EffectProcessorListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ImageStoringListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;
.implements Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusListener;
.implements Lcom/sec/android/app/camera/menu/TimerCountingMenu$TimerCancelListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;,
        Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;
    }
.end annotation


# static fields
.field private static final AUTO_MODE:I = 0x1

.field private static final COLOR_TUNE_CHANGE_STATE_DEFAULT:I = 0x3

.field private static final COLOR_TUNE_CHANGE_STATE_INIT:I = 0x0

.field private static final COLOR_TUNE_CHANGE_STATE_LOADED:I = 0x1

.field private static final COLOR_TUNE_CHANGE_STATE_UPDATED:I = 0x2

.field private static final COLOR_TUNE_CONTRAST:I = 0x2

.field private static final COLOR_TUNE_HIGHLIGHT:I = 0x4

.field private static final COLOR_TUNE_ITEM_NUM:I = 0x7

.field private static final COLOR_TUNE_PRESET_DIVIDE_FACTOR:I

.field private static final COLOR_TUNE_PRESET_MAX_OFFSET_VALUE:I

.field private static final COLOR_TUNE_SATURATION:I = 0x3

.field private static final COLOR_TUNE_SHADOW:I = 0x5

.field private static final COLOR_TUNE_TEMPERATURE:I = 0x0

.field private static final COLOR_TUNE_TINT:I = 0x1

.field private static final COLOR_TUNE_TONE_DIVIDE_FACTOR:I

.field private static final COLOR_TUNE_TONE_MAX_OFFSET_VALUE:I

.field private static final DEFAULT_CAMERA_COLOR_TUNE_VALUE:[Ljava/lang/String;

.field private static final ISO_VALUE_COUNT:I

.field private static final KEY_CAMERA_COLOR_TUNE_VALUE:[Ljava/lang/String;

.field private static final KEY_CAMERA_ISO_STATE:Ljava/lang/String; = "pref_camera_iso_state_key"

.field private static final LONG_EV_SHOT_DELAY_MSEC:I = 0x3e8

.field private static final MANUAL_FOCUS_ZOOM_STEP:I = 0x21c

.field private static final MANUAL_MODE:I = 0x0

.field private static final MAX_PRO_RECORDING_SHUTTER_SPEED:I = 0x15

.field private static final PRO_ITEM_ID_COLORTUNE:I = 0x3

.field private static final PRO_ITEM_ID_EV:I = 0x0

.field private static final PRO_ITEM_ID_ISO:I = 0x5

.field private static final PRO_ITEM_ID_MF:I = 0x2

.field private static final PRO_ITEM_ID_SHUTTERSPEED:I = 0x4

.field private static final PRO_ITEM_ID_WB:I = 0x1

.field private static final PRO_ITEM_NUM:I = 0x6

.field private static final SHUTTER_PROGRESS_STEP:I = 0xc

.field protected static final TAG:Ljava/lang/String; = "Pro"


# instance fields
.field private final BASEMENU_GROUP_ICON_GAP:F

.field private final BASEMENU_GROUP_WIDTH:F

.field private final CAF_BUTTON_DIAMETER:I

.field private final CAF_BUTTON_POS_X:I

.field private final CAF_BUTTON_POS_Y:I

.field private final COLORTUNE_LIST_ITEM_WIDTH:I

.field private final COLORTUNE_LIST_POS_X:I

.field private final COLOR_TUNE_EDIT_BUTTON_POS_X:I

.field private final COLOR_TUNE_EDIT_BUTTON_POS_Y:I

.field private final COLOR_TUNE_EDIT_BUTTON_RIGHT_MARGIN:I

.field private final COLOR_TUNE_EDIT_BUTTON_WIDTH:I

.field private final ISO_VALUE_OFFSET:I

.field private final LONG_EV_SHOT_PROGRESS_GROUP_POS_X:F

.field private final LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

.field private final LONG_EV_SHOT_PROGRESS_TEXT_COLOR:I

.field private final LONG_EV_SHOT_PROGRESS_TEXT_LINE_SPACING:F

.field private final LONG_EV_SHOT_PROGRESS_TEXT_SIZE:F

.field private final LONG_EV_SHOT_PROGRESS_TEXT_TOP_MARGIN:F

.field private final LONG_EV_SHOT_PROGRESS_TITLE_HEIGHT:I

.field private final LONG_EV_SHOT_PROGRESS_TITLE_POS_Y:F

.field private final PAGE_NAVIGATOR_GROUP_HEIGHT:F

.field private final PRO_ITEM_GROUP_RIGHT_MARGIN:I

.field private final PRO_ITEM_LEFT_MARGIN:I

.field private final PRO_ITEM_RIGHT_MARGIN:I

.field private final PRO_ITEM_TEXT_COLOR:I

.field private final PRO_ITEM_TEXT_EV_LIMIT_COLOR:I

.field private final PRO_ITEM_TOP_MARGIN:I

.field private final PRO_ITEM_WIDTH:I

.field private final PRO_RECORDING_ITEM_OFFSET:I

.field private final PRO_RECORDING_ITEM_POS_X:I

.field private final PRO_RECORDING_RIGHT_MARGIN:I

.field private final PRO_SLIDER_MENU_WIDTH:F

.field private final PRO_VIEW_GROUP_SHOW_ANIMATION_DURATION:I

.field private final RECORDING_MODE_TEXT_SHADOW_OFFSET:I

.field private final RECORDING_PAUSE_BUTTON_DIAMETER:I

.field private final RECORDING_PAUSE_BUTTON_WIDTH:I

.field private final RECORDING_SNAPSHOT_MARGIN_Y:I

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

.field private final SHUTTER_BUTTON_POS_Y:I

.field private final SHUTTER_BUTTON_WIDTH:F

.field private final SHUTTER_SPEED_VALUE_OFFSET:I

.field private final SNAPSHOT_BUTTON_WIDTH:I

.field private mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mCAFButton:Lcom/samsung/android/glview/GLButton;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mColorTuneArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;",
            ">;"
        }
    .end annotation
.end field

.field private mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

.field private mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

.field private mColorTuneList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

.field private mColorTuneResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

.field private mEVState:I

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

.field private mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

.field private mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

.field private mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

.field private mIsBurstCapturing:Z

.field private mIsManualFocusAssistProcessing:Z

.field private mIsRecordingStopping:Z

.field private mIsSavedPreviousFlashValue:Z

.field private mIsSavedPreviousShutterSpeed:Z

.field private mLastNearestISO:I

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

.field private mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

.field private mLongEvShotWaitToast:Landroid/widget/Toast;

.field private mManualFocusButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

.field private mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mOldDetectedFaceCount:I

.field private mPauseButton:Lcom/samsung/android/glview/GLButton;

.field private mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

.field private mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

.field private mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

.field private mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mResumeButton:Lcom/samsung/android/glview/GLButton;

.field private mSavedShutterSpeed:I

.field private mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

.field private mSelectedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

.field private mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

.field private mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

.field private mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

.field private mSingleCapturing:Z

.field private mSnapShotButton:Lcom/samsung/android/glview/GLButton;

.field private mStopButton:Lcom/samsung/android/glview/GLButton;

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

.field private mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

.field private mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

.field private mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

.field private proViewGroupShowAnimationSet:Landroid/view/animation/AnimationSet;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pref_camera_color_tune_none"

    aput-object v1, v0, v3

    const-string v1, "pref_camera_color_tune_breeze"

    aput-object v1, v0, v4

    const-string v1, "pref_camera_color_tune_vivid"

    aput-object v1, v0, v5

    const-string v1, "pref_camera_color_tune_nostalgia"

    aput-object v1, v0, v6

    const-string v1, "pref_camera_color_tune_soft"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "pref_camera_color_tune_serene"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pref_camera_color_tune_custom_1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pref_camera_color_tune_custom_2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/Pro;->KEY_CAMERA_COLOR_TUNE_VALUE:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0,0,0,0,0,0"

    aput-object v1, v0, v3

    const-string v1, "20,10,10,40,50,-60"

    aput-object v1, v0, v4

    const-string v1, "30,0,20,50,20,0"

    aput-object v1, v0, v5

    const-string v1, "40,60,-40,-100,-30,0"

    aput-object v1, v0, v6

    const-string v1, "20,40,-60,-20,40,0"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "0,-30,30,30,-10,-10"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "0,0,0,0,0,0"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "0,0,0,0,0,0"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/Pro;->DEFAULT_CAMERA_COLOR_TUNE_VALUE:[Ljava/lang/String;

    const v0, 0x7f0b0045

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_PRESET_DIVIDE_FACTOR:I

    const v0, 0x7f0b0046

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_TONE_DIVIDE_FACTOR:I

    const v0, 0x7f0b0045

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    const v1, 0x7f0b0022

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    mul-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_PRESET_MAX_OFFSET_VALUE:I

    const v0, 0x7f0b0024

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    const v1, 0x7f0b0046

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    mul-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_TONE_MAX_OFFSET_VALUE:I

    const v0, 0x7f0b004d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->ISO_VALUE_COUNT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;Lcom/sec/android/app/camera/shootingmode/RecordingController;)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0b0052

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->SHUTTER_SPEED_VALUE_OFFSET:I

    const v0, 0x7f0b004e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->ISO_VALUE_OFFSET:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    const v0, 0x7f0a0294

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    const v0, 0x7f0a018d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_LEFT_MARGIN:I

    const v0, 0x7f0a0044

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_RIGHT_MARGIN:I

    const v0, 0x7f0a018f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_TOP_MARGIN:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_GROUP_RIGHT_MARGIN:I

    const v0, 0x7f0d002c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_TEXT_COLOR:I

    const v0, 0x7f0d0036

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_TEXT_EV_LIMIT_COLOR:I

    const v0, 0x7f0b0011

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_VIEW_GROUP_SHOW_ANIMATION_DURATION:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    int-to-float v0, v0

    div-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_SLIDER_MENU_WIDTH:F

    const v0, 0x7f0a00f6

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLORTUNE_LIST_ITEM_WIDTH:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    const v1, 0x7f0a018c

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLORTUNE_LIST_ITEM_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLORTUNE_LIST_POS_X:I

    const v0, 0x7f0a02d6

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_EDIT_BUTTON_WIDTH:I

    const v0, 0x7f0a02d4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_EDIT_BUTTON_RIGHT_MARGIN:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLORTUNE_LIST_POS_X:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_EDIT_BUTTON_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_EDIT_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_EDIT_BUTTON_POS_X:I

    const v0, 0x7f0a02d5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_EDIT_BUTTON_POS_Y:I

    const v0, 0x7f0d0037

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TEXT_COLOR:I

    const v0, 0x7f0a0191

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TITLE_HEIGHT:I

    const v0, 0x7f0a037d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_GROUP_POS_X:F

    const v0, 0x7f0a0190

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TEXT_TOP_MARGIN:F

    const v0, 0x7f0a02ad

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TEXT_SIZE:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TITLE_HEIGHT:I

    mul-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TEXT_TOP_MARGIN:F

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TITLE_POS_Y:F

    const v0, 0x7f0a02f1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TEXT_LINE_SPACING:F

    const v0, 0x7f0a0192

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_RECORDING_RIGHT_MARGIN:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_RECORDING_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_RECORDING_ITEM_POS_X:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_RECORDING_ITEM_POS_X:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_GROUP_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_RECORDING_ITEM_OFFSET:I

    const v0, 0x7f0a02a1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    const v0, 0x7f0a01b3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_WIDTH:I

    const v0, 0x7f0a01bd

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->SNAPSHOT_BUTTON_WIDTH:I

    const v0, 0x7f0a01be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_SNAPSHOT_MARGIN_Y:I

    const v0, 0x7f0b0030

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_MODE_TEXT_SHADOW_OFFSET:I

    const v0, 0x7f0a0389

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->CAF_BUTTON_DIAMETER:I

    const v0, 0x7f0a0388

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->CAF_BUTTON_DIAMETER:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->CAF_BUTTON_POS_X:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->CAF_BUTTON_DIAMETER:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->CAF_BUTTON_POS_Y:I

    const v0, 0x7f0a0012

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->BASEMENU_GROUP_WIDTH:F

    const v0, 0x7f0a0054

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

    const v0, 0x7f0a0377

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    const v0, 0x7f0a02a4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->SHUTTER_BUTTON_WIDTH:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->SHUTTER_BUTTON_POS_Y:I

    const v0, 0x7f0a02ab

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->BASEMENU_GROUP_ICON_GAP:F

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsSavedPreviousFlashValue:Z

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsSavedPreviousShutterSpeed:Z

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSavedShutterSpeed:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLastNearestISO:I

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mOldDetectedFaceCount:I

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneArray:Landroid/util/SparseArray;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEVState:I

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotWaitToast:Landroid/widget/Toast;

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSingleCapturing:Z

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsRecordingStopping:Z

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsBurstCapturing:Z

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsManualFocusAssistProcessing:Z

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Pro$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/Pro$1;-><init>(Lcom/sec/android/app/camera/shootingmode/Pro;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/Pro;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/Pro;->handleProModeForBixby(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/samsung/android/glview/GLButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    return-object v0
.end method

.method static synthetic access$1000()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_TONE_DIVIDE_FACTOR:I

    return v0
.end method

.method static synthetic access$1100()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_PRESET_MAX_OFFSET_VALUE:I

    return v0
.end method

.method static synthetic access$1200()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_TONE_MAX_OFFSET_VALUE:I

    return v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Pro;->KEY_CAMERA_COLOR_TUNE_VALUE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Pro;->DEFAULT_CAMERA_COLOR_TUNE_VALUE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$900()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_PRESET_DIVIDE_FACTOR:I

    return v0
.end method

.method private changeToColorTuneMode(I)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "Pro"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeToColorTuneMode - colorTune="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setCustomEffectRecording(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopPreview()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setColorTune(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartPreview()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    if-nez p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xe

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    :goto_2
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setColorTune(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getEffectParameterString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetEffectParameter(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private clearPro()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Pro"

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setCameraCurrentSettingListener(Lcom/samsung/android/camera/core/SemCamera$CameraSensorDataListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneArray:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneArray:Landroid/util/SparseArray;

    :cond_0
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    return-void
.end method

.method private enableMultiAF(Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableMultiAF(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->setAfState(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->setAfState(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->enableMultiAF(Z)V

    goto :goto_0
.end method

.method private findNearestISO(I)I
    .locals 5

    const v0, 0x7fffffff

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    :goto_0
    sget v4, Lcom/sec/android/app/camera/shootingmode/Pro;->ISO_VALUE_COUNT:I

    if-ge v1, v4, :cond_1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getIsoString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sub-int v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v0, v2, :cond_0

    move v0, v2

    move v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private findNearestShutter(I)I
    .locals 6

    const v0, 0x7fffffff

    const/4 v4, 0x1

    const/16 v2, 0x22

    const/4 v3, 0x0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getShutterSpeedString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v0, v3, :cond_0

    move v0, v3

    move v4, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method private getButtonText(II)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x1

    const v1, 0x7f090001

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_1
    if-lez p2, :cond_0

    const-string v0, "+%.1f"

    :goto_1
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    int-to-float v3, p2

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "%.1f"

    goto :goto_1

    :pswitch_2
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->SHUTTER_SPEED_VALUE_OFFSET:I

    sub-int v1, p2, v1

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_3
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->ISO_VALUE_OFFSET:I

    sub-int v1, p2, v1

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x5

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090362

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090361

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x3

    if-ne p2, v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090364

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090363

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    if-ne p2, v2, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getKelvinValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5
    if-gez p2, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090359

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09035a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getButtonTtsString(II)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    if-gez p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09003f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090043

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private getColorTuneString(I)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v0, ""

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getColorTuneTtsString(I)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v0, ""

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getContentDescriptionId()I

    move-result v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getContentDescriptionId()I

    move-result v2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getContentDescriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getISOState()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_iso_state_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    return-object v0
.end method

.method private getShutterSpeedTimeMillis()J
    .locals 4

    const-wide/16 v2, 0x3e8

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraParameters;->getShutterSpeedString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    div-long/2addr v0, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private handleProModeForBixby(Ljava/lang/String;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setSelected(Z)V

    return-void

    :sswitch_0
    const-string v2, "camera.action.ACTION_CHANGE_ISO"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "camera.action.ACTION_CHANGE_EXPOSURE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string v2, "camera.action.ACTION_CHANGE_SHUTTER_SPEED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "camera.action.ACTION_CHANGE_WHITEBALANCE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "camera.action.ACTION_CHANGE_FOCUS_MODE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "camera.action.ACTION_CHANGE_COLORTUNE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/shootingmode/Pro;->onISOValueMenuSelect(I)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->onProItemSelected(I)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/shootingmode/Pro;->onExposureValueMenuSelect(I)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->onProItemSelected(I)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/shootingmode/Pro;->onShutterSpeedValueMenuSelect(I)V

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->onProItemSelected(I)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/shootingmode/Pro;->onWBValueMenuSelect(I)V

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->onProItemSelected(I)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/shootingmode/Pro;->onManualFocusValueMenuSelect(I)V

    const/16 v0, 0x51

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->onProItemSelected(I)V

    goto :goto_1

    :pswitch_5
    const/16 v0, 0x77

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->onProItemSelected(I)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/shootingmode/Pro;->onColorTuneSettingListSelect(I)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d59ca10 -> :sswitch_0
        -0x6c1624fa -> :sswitch_5
        -0x61526da4 -> :sswitch_1
        -0x34c71700 -> :sswitch_2
        0x4a43ad68 -> :sswitch_3
        0x5ef4e4df -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private handleProRecordingCancelled()V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideCAFButton()V

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Pro;->setRecordingButtonsDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideRecordingButtonWithAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsSavedPreviousShutterSpeed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSavedShutterSpeed:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setShutterSpeed(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSavedShutterSpeed:I

    invoke-direct {p0, v4, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsSavedPreviousShutterSpeed:Z

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isColorTuneListActive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideColorTuneList()V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isSliderActive()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideSlider()V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->showProView()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v0

    if-ne v0, v2, :cond_4

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->enableMultiAF(Z)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    const-string v0, "201"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    return-void
.end method

.method private handleProRecordingStopped()V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideCAFButton()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->RECORDING_STOP:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-interface {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isShutterProgressWheelVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideRecordingButtonWithAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setVisibility(IZ)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsSavedPreviousShutterSpeed:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSavedShutterSpeed:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setShutterSpeed(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSavedShutterSpeed:I

    invoke-direct {p0, v4, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsSavedPreviousShutterSpeed:Z

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isColorTuneListActive()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideColorTuneList()V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isSliderActive()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideSlider()V

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->showProView()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v0

    if-ne v0, v2, :cond_5

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->enableMultiAF(Z)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    const-string v0, "201"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    return-void
.end method

.method private hideCAFButton()V
    .locals 2

    const-string v0, "Pro"

    const-string v1, "hideCAFButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideColorTuneList()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setSelected(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->hideList()V

    return-void
.end method

.method private hideLongEvShotProgressHelpText()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    return-void
.end method

.method private hideProRecordingView()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProSlider;->updateProSliderPosition()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProSlider;->updateProSliderPosition()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProSlider;->updateProSliderPosition()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProSlider;->updateProSliderPosition()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProSlider;->updateProSliderPosition()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ProSlider;->setRotateAnimation(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ProSlider;->setRotateAnimation(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ProSlider;->setRotateAnimation(Z)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setRotateAnimation(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v4, v4}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->isDim()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setDim(Z)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setDim(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setDim(Z)V

    return-void
.end method

.method private hideProView()V
    .locals 2

    const-string v0, "Pro"

    const-string v1, "hideProView"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isColorTuneListActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideColorTuneList()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isSliderActive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideSlider()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    return-void
.end method

.method private hideRecordingButtonWithAnimation()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x240

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableRecordingAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideProRecordingView()V

    return-void
.end method

.method private hideSlider()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->hideSlider()V

    :cond_0
    return-void
.end method

.method private initPro()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "Pro"

    const-string v1, "initPro"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->loadColorTune()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusLength(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result v1

    invoke-direct {p0, v3, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v1

    invoke-direct {p0, v4, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v1

    invoke-direct {p0, v5, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v2

    invoke-direct {p0, v5, v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->getButtonTtsString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getColorTuneString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/Pro;->setShutterPriorityActivate(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Pro;->setShutterPriorityActivate(Z)V

    goto :goto_0
.end method

.method private isColorTuneListActive()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLongEvShutterSpeed()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isProBurstCaptureEnabled()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSliderActive()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTouchAfAeDisabled()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->RECORDING:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Pro"

    const-string v2, "Wrong state for touchAF"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isStopPreviewPending()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Pro"

    const-string v2, "Preview is not started"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_TOUCH_AF:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadColorTune()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneArray:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneArray:Landroid/util/SparseArray;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneArray:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;-><init>(Lcom/sec/android/app/camera/shootingmode/Pro;I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneArray:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    invoke-direct {v1, p0, v3}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;-><init>(Lcom/sec/android/app/camera/shootingmode/Pro;I)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneArray:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    invoke-direct {v1, p0, v4}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;-><init>(Lcom/sec/android/app/camera/shootingmode/Pro;I)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneArray:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    invoke-direct {v1, p0, v5}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;-><init>(Lcom/sec/android/app/camera/shootingmode/Pro;I)V

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneArray:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    invoke-direct {v1, p0, v6}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;-><init>(Lcom/sec/android/app/camera/shootingmode/Pro;I)V

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneArray:Landroid/util/SparseArray;

    const/4 v1, 0x5

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;-><init>(Lcom/sec/android/app/camera/shootingmode/Pro;I)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneArray:Landroid/util/SparseArray;

    const/4 v1, 0x6

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;-><init>(Lcom/sec/android/app/camera/shootingmode/Pro;I)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneArray:Landroid/util/SparseArray;

    const/4 v1, 0x7

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    const/4 v3, 0x7

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;-><init>(Lcom/sec/android/app/camera/shootingmode/Pro;I)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private pauseRecording()V
    .locals 2

    const-string v0, "Pro"

    const-string v1, "pauseRecording"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    const-string v0, "Pro"

    const-string v1, "Return pauseRecording - wrong recording state"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->PAUSE_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->schedulePauseVideoRecording()V

    goto :goto_0
.end method

.method private resumeRecording()V
    .locals 2

    const-string v0, "Pro"

    const-string v1, "resumeRecording"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    const-string v0, "Pro"

    const-string v1, "Return resumeRecording - wrong recording state"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestAudioFocus()V

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->RESUME_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleResumeVideoRecording()V

    goto :goto_0
.end method

.method private setISOState(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_iso_state_key"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private setRecordingButtonsDim(Z)V
    .locals 3

    const-string v0, "Pro"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecordingButtonsDim : dimmed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isSnapShotAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    :cond_2
    return-void
.end method

.method private setShutterPriorityActivate(Z)V
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "Pro"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShutterPriorityActivate : isActive - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEVState:I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Pro;->setISOState(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLastNearestISO:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraISO(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result v1

    invoke-direct {p0, v5, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/ProSlider;->setAutoDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v3, :cond_1

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsSavedPreviousFlashValue:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    :cond_1
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEVState:I

    if-eq v0, v3, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getISOState()I

    move-result v0

    if-eq v0, v3, :cond_2

    if-nez p1, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableCameraCurrentSet(Z)V

    :goto_1
    return-void

    :cond_3
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEVState:I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result v1

    invoke-direct {p0, v4, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_TEXT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setTextColor(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getISOState()I

    move-result v0

    if-ne v0, v3, :cond_4

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/Pro;->setISOState(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraISO(I)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result v1

    invoke-direct {p0, v5, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/menu/ProSlider;->setAutoDim(Z)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsSavedPreviousFlashValue:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableCameraCurrentSet(Z)V

    goto :goto_1
.end method

.method private showCAFButton()V
    .locals 2

    const-string v0, "Pro"

    const-string v1, "showCAFButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isObjectTrackingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showColorTuneList()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->showList()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private showLongEvShotCancelHelpText()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    const v1, 0x7f090134

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private showLongEvShotProgressHelpText()V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewAspectRatio()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/Util;->getAspectRatioType(D)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v5, v5}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v6}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    const v3, 0x7f090132

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v6}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v3, v1

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_GROUP_POS_X:F

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_GROUP_POS_X:F

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    goto :goto_0
.end method

.method private showProRecordingView()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLView;->setRotateAnimation(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/menu/ProSlider;->setRotateAnimation(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/menu/ProSlider;->setRotateAnimation(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/menu/ProSlider;->setRotateAnimation(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setDim(Z)V

    const-string v1, "2071"

    const-string v2, "1"

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setDim(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setDim(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->isVisible()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    :cond_2
    return-void
.end method

.method private showProView()V
    .locals 2

    const-string v0, "Pro"

    const-string v1, "showView"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->isVisible()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    :cond_0
    return-void
.end method

.method private showSlider(Lcom/sec/android/app/camera/menu/ProSlider;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetTouchAF()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->hideSlider()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setSelected(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isColorTuneListActive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->hideList()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getKelvinValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->updateKelvinSliderValue(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->showKelvinSlider()V

    :cond_4
    :goto_0
    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/menu/ProSlider;->updateSliderValue(I)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    return-void

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->hideKelvinSlider()V

    goto :goto_0
.end method

.method private startLongEVShotShutterProgress()V
    .locals 6

    const-wide/16 v4, 0xc

    const-string v0, "Pro"

    const-string v1, "startLongEVShotShutterProgress"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideOneHandZoomGuide()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getShutterSpeedTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-direct {v0, p0, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;-><init>(Lcom/sec/android/app/camera/shootingmode/Pro;J)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->start()V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->access$300(Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getShutterSpeedTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->access$400(Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;J)V

    goto :goto_0

    :cond_2
    const-string v0, "Pro"

    const-string v1, "return. ShutterProgressThread already started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private startProRecording()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->START_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isColorTuneListActive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideColorTuneList()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isSliderActive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideSlider()V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->showProRecordingView()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->startRecording()V

    return-void
.end method

.method private stopLongEVShotShutterProgress()V
    .locals 3

    const-string v0, "Pro"

    const-string v1, "stopLongEVShotShutterProgress"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    if-eqz v0, :cond_1

    const-string v0, "Pro"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopShutterProgressThread isAlive = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->isAlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->access$500(Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    :cond_1
    return-void
.end method

.method private switchToRecordingPreview()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->register(Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->startRecordingPreviewVI()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSwitchToCamcorderPreview()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->finishRecordingPreviewVI()V

    return-void
.end method

.method private updateColorTuneMenuBarButtonDim(Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getState()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setResetButtonDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setSaveButtonDim(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getState()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setResetButtonDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setSaveButtonDim(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setResetButtonDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setSaveButtonDim(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setResetButtonDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setSaveButtonDim(Z)V

    goto :goto_0
.end method

.method private updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V
    .locals 6

    const/16 v5, -0x181

    const/4 v3, 0x4

    const/4 v4, 0x0

    const-string v0, "Pro"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRecordingLayout : cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Pro$3;->$SwitchMap$com$sec$android$app$camera$shootingmode$RecordingController$RecordingCommand:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableRecordingAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x240

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f02012a

    const v2, 0x7f020103

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f02011a

    invoke-virtual {v0, v1, v4, v4, v4}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isSnapShotAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startControllerLayoutAnimation(Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->showResumeIcon()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->showPauseIcon()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->hideIcon()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public cancelRecording()V
    .locals 2

    const-string v0, "Pro"

    const-string v1, "cancelRecording"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    const-string v0, "Pro"

    const-string v1, "return cancelRecording - record is already stopping"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->CANCEL_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelVideoRecordingSync()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->setRecordingButtonsDim(Z)V

    goto :goto_0
.end method

.method public isCapturing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSingleCapturing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsBurstCapturing:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChangingShootingModeDisabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSnapShotAvailable()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isSnapshotAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderEffectAvailableFeature(II)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isZoomDisabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v1, "Pro"

    const-string v4, "onActivate"

    invoke-static {v1, v4}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->setAutoFocusListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "camera.action.ACTION_CHANGE_ISO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.ACTION_CHANGE_EXPOSURE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.ACTION_CHANGE_WHITEBALANCE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.ACTION_CHANGE_SHUTTER_SPEED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.ACTION_CHANGE_FOCUS_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.ACTION_CHANGE_COLORTUNE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.ACTION_SELECT_COLORTUNE_EDIT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.ACTION_SELECT_COLORTUNE_RESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v4, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-virtual {v1, v4, p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->register(Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setCustomEffectRecording(Z)V

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_MULTI_AF:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v4, v5, [I

    fill-array-data v4, :array_0

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v4, -0x1

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v4, 0x12

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setCameraCurrentSettingListener(Lcom/samsung/android/camera/core/SemCamera$CameraSensorDataListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareImageStoringListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageStoringListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/Engine$FaceDetectionListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setImageContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;)V

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsBurstCapturing:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->initPro()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectProcessorListener(Lcom/sec/android/app/camera/interfaces/Engine$EffectProcessorListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v4, 0x5

    invoke-interface {v1, v4, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v5, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v4, 0x91

    invoke-interface {v1, v4, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v1

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->updateMultiAfLayout()V

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->enableMultiAF(Z)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInterval()I

    move-result v1

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableTimerInterval(Z)V

    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPictureFormat()I

    move-result v1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableRawPictureFormat(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-static {v3}, Lcom/sec/android/app/camera/util/StorageUtils;->getUpdatedStorageStatus(I)I

    move-result v1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v3, 0x7f0901f8

    invoke-static {v1, v3, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_4
    return-void

    :cond_3
    move v1, v3

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableTimerInterval(Z)V

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v2, 0x7f0901f9

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableRawPictureFormat(Z)V

    goto :goto_4

    nop

    :array_0
    .array-data 4
        0x91
        0xb
        0x3
    .end array-data

    :array_1
    .array-data 4
        0xb
        0x3
    .end array-data
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isSliderActive()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isColorTuneListActive()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isSliderActive()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideSlider()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isColorTuneListActive()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLButton;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideColorTuneList()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isTouchAfAeDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAutoFocus()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->isTouchAfActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->showCAFButton()V

    goto :goto_0
.end method

.method public onBuildMediaRecorderProfile(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)V
    .locals 0

    return-void
.end method

.method public onBurstCaptureCompleted()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "Pro"

    const-string v1, "onBurstCaptureCompleted"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsBurstCapturing:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideCaptureProgressText()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setCapturingProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showOneHandZoomGuide()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x276

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Pro;->enableMultiAF(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->showProView()V

    return-void
.end method

.method public onBurstCaptureProgress(I)V
    .locals 3

    const-string v0, "Pro"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBurstCaptureProgress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showCaptureProgressText()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setCapturingProgress(I)V

    return-void
.end method

.method public onBurstCaptureStarted()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "Pro"

    const-string v1, "onBurstCaptureStarted"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsBurstCapturing:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->enableMultiAF(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideOneHandZoomGuide()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x276

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideProView()V

    return-void
.end method

.method public onBurstCaptureStopped(I)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->enableMultiAF(Z)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBurstCaptureThumbnailTaken(Landroid/graphics/Bitmap;I)V
    .locals 2

    const-string v0, "Pro"

    const-string v1, "onBurstCaptureThumbnailTaken"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    return-void
.end method

.method public onBurstStringProgress([B)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCameraSensorData(Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;)V
    .locals 9

    const/high16 v8, 0x7f090000

    const/16 v6, 0x14

    const/16 v5, -0x14

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEVState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-short v3, p1, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->exposureValue:S

    invoke-static {v3, v5, v6}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result v0

    if-ge v0, v6, :cond_0

    if-gt v0, v5, :cond_4

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_TEXT_EV_LIMIT_COLOR:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setTextColor(I)V

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v4, 0x0

    invoke-direct {p0, v4, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getButtonText(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    :cond_1
    iget-short v3, p1, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->iso:S

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Pro;->findNearestISO(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLastNearestISO:I

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-short v5, p1, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->iso:S

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-short v6, p1, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->iso:S

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p1, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->exposureTime:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v3, v4

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Pro;->findNearestShutter(I)I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_TEXT_COLOR:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setTextColor(I)V

    goto/16 :goto_0
.end method

.method public onCameraSettingChanged(II)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    goto :goto_0

    :sswitch_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsSavedPreviousFlashValue:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsSavedPreviousFlashValue:Z

    goto :goto_0

    :sswitch_2
    if-ne p2, v0, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->enableMultiAF(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->enableMultiAF(Z)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x5 -> :sswitch_0
        0x91 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCancelRecordingRequested()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->cancelRecording()V

    return-void
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 14

    const/16 v13, 0xb

    const/4 v12, 0x7

    const/16 v11, 0x7530

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v6, "Pro"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onChangeShootingModeParameters : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v5

    sget-object v8, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v5, v8, :cond_5

    const-string v5, "RECORDING"

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5, v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setManualSettings(I)V

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v5

    const/16 v6, 0x15

    if-le v5, v6, :cond_0

    const-string v5, "Pro"

    const-string v6, "Shutter speed value is more than 1/30. Adjust it for Recording."

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x15

    :cond_0
    const/16 v5, 0x1f

    invoke-static {v5}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraParameters;->getShutterSpeedString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    const/16 v5, 0xa

    invoke-static {v5}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/util/CameraParameters;->getIsoString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x23

    invoke-static {v5}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getKelvinValue()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/util/CameraParameters;->getKelvinValueString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x9

    invoke-static {v5}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/util/CameraParameters;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v5, v6, :cond_6

    invoke-static {v13}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9}, Lcom/sec/android/app/camera/util/CameraParameters;->getExposureMeterString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v5

    if-gez v5, :cond_7

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v5

    if-eq v5, v12, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    :cond_1
    const/4 v2, 0x1

    :goto_2
    const/4 v5, 0x5

    invoke-static {v5}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/util/CameraParameters;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x18

    invoke-static {v5}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/util/CameraParameters;->getManualFocusValue(I)I

    move-result v6

    invoke-virtual {p1, v5, v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v5, v6, :cond_d

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v3

    const/16 v5, 0x28

    if-ne v3, v5, :cond_8

    const-string v5, "max-limit-recording-time-uhd"

    invoke-virtual {p1, v5}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    const-string v6, "max-limit-recording-time-uhd"

    invoke-virtual {p1, v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->limitRecordingTimeBySystem(I)V

    :cond_2
    :goto_3
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    invoke-static {v5, v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderEffectAvailableFeature(II)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p1, v10}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setRecordingHint(Z)V

    const-string v5, "effectrecording-hint"

    invoke-virtual {p1, v5, v9}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    const/16 v5, 0x5dc0

    const/16 v6, 0x5dc0

    invoke-virtual {p1, v5, v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    const/4 v1, 0x0

    :goto_4
    const/16 v5, 0x91

    invoke-static {v5}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v10}, Lcom/sec/android/app/camera/util/CameraParameters;->getMultiAFModeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DYNAMIC_RANGE_CONTROL:Z

    if-eqz v5, :cond_3

    const-string v6, "dynamic-range-control"

    if-eqz v1, :cond_f

    const-string v5, "on"

    :goto_6
    invoke-virtual {p1, v6, v5}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF:Z

    if-eqz v5, :cond_4

    const-string v6, "phase-af"

    if-eqz v2, :cond_10

    const-string v5, "on"

    :goto_7
    invoke-virtual {p1, v6, v5}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    const-string v5, "PREVIEW"

    goto/16 :goto_0

    :cond_6
    invoke-static {v13}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraExposureMeter()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/util/CameraParameters;->getExposureMeterString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideFocusMode(I)V

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_8
    const/16 v5, 0x15

    if-ne v3, v5, :cond_9

    const-string v5, "max-limit-recording-time-wqhd"

    invoke-virtual {p1, v5}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    const-string v6, "max-limit-recording-time-wqhd"

    invoke-virtual {p1, v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->limitRecordingTimeBySystem(I)V

    goto/16 :goto_3

    :cond_9
    const/16 v5, 0x2a

    if-ne v3, v5, :cond_2

    const-string v5, "max-limit-recording-time-fhd60"

    invoke-virtual {p1, v5}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    const-string v6, "max-limit-recording-time-fhd60"

    invoke-virtual {p1, v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->limitRecordingTimeBySystem(I)V

    goto/16 :goto_3

    :cond_a
    invoke-virtual {p1, v9}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setRecordingHint(Z)V

    const-string v5, "effectrecording-hint"

    invoke-virtual {p1, v5, v10}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    const/16 v5, 0x2a

    if-ne v3, v5, :cond_c

    const v5, 0xea60

    const v6, 0xea60

    invoke-virtual {p1, v5, v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    const/16 v5, 0x170e

    invoke-static {v5}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9}, Lcom/sec/android/app/camera/util/CameraParameters;->getRecordingMotionFPS(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF:Z

    if-eqz v5, :cond_b

    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF_60FPS:Z

    if-nez v5, :cond_b

    const/4 v2, 0x0

    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_c
    invoke-virtual {p1, v11, v11}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    const/4 v1, 0x1

    goto/16 :goto_4

    :cond_d
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v5

    if-eqz v5, :cond_e

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraParameters;->getEffectFpsRange(Lcom/samsung/android/camera/core/SemCamera$Parameters;)[I

    move-result-object v0

    aget v5, v0, v10

    aget v6, v0, v9

    invoke-virtual {p1, v5, v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    const-string v5, "effect_hint"

    invoke-virtual {p1, v5, v9}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    const/4 v1, 0x0

    const/16 v5, 0x13b

    invoke-static {v5}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v10}, Lcom/sec/android/app/camera/util/CameraParameters;->getPictureFormatString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    const/16 v5, 0x91

    invoke-static {v5}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/util/CameraParameters;->getMultiAFModeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_e
    const/16 v5, 0x2710

    invoke-virtual {p1, v5, v11}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    const-string v5, "effect_hint"

    invoke-virtual {p1, v5, v10}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    const/4 v1, 0x1

    const/16 v5, 0x13b

    invoke-static {v5}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPictureFormat()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/util/CameraParameters;->getPictureFormatString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_f
    const-string v5, "off"

    goto/16 :goto_6

    :cond_10
    const-string v5, "off"

    goto/16 :goto_7
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 6

    const-wide/16 v4, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-nez v3, :cond_2

    :cond_0
    const-string v2, "Pro"

    const-string v3, "Call onClick after Clear!"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "Pro"

    const-string v3, "onClick = mCAFButton"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isAutoFocusing()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetTouchAF()V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v2, "Pro"

    const-string v3, "onClick = mSnapShotButton"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;->BUTTON:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z

    const-string v2, "1103"

    invoke-static {v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v2, "Pro"

    const-string v3, "onClick = mStopButton"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "1122"

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getDetailByRecordingTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->stopRecording()V

    goto :goto_0

    :cond_5
    const-string v2, "1102"

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getDetailByRecordingTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v2, "Pro"

    const-string v3, "onClick = mPauseButton"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStopping()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->pauseRecording()V

    const-string v2, "1101"

    invoke-static {v2, v4, v5}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v2, "Pro"

    const-string v3, "onClick = mResumeButton"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStopping()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->resumeRecording()V

    const-string v2, "1101"

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideColorTuneList()V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_9

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_b

    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setColorTuneSettingSlideType(I)V

    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->loadColorTuneValues()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getColorTuneSliderValues()[I

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->updateColorTuneSlider([I)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateColorTuneMenuBarButtonDim(Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;)V

    const-string v1, "2026"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v3, 0x77

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    :cond_a
    move v1, v2

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setColorTuneSettingSlideType(I)V

    goto :goto_2
.end method

.method public onColorTuneSettingCancel()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->loadColorTuneValues()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getEffectParameterString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetEffectParameter(Ljava/lang/String;)V

    return-void
.end method

.method public onColorTuneSettingListSelect(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->onProColorTuneListSelect(I)V

    return-void
.end method

.method public onColorTuneSettingReset()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->resetColorTuneValues()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateColorTuneMenuBarButtonDim(Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getEffectParameterString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetEffectParameter(Ljava/lang/String;)V

    return-void
.end method

.method public onColorTuneSettingSave()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->saveColorTuneValues()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onContrastMenuSelect(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->setColortuneValue(II)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateColorTuneMenuBarButtonDim(Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getEffectParameterString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetEffectParameter(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 38

    const-string v2, "Pro"

    const-string v3, "onCreateView"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-instance v2, Lcom/sec/android/app/camera/resourcedata/ProModeResourceData;

    invoke-direct {v2}, Lcom/sec/android/app/camera/resourcedata/ProModeResourceData;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    new-instance v2, Lcom/sec/android/app/camera/resourcedata/ColorTuneResourceData;

    invoke-direct {v2}, Lcom/sec/android/app/camera/resourcedata/ColorTuneResourceData;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->BASEMENU_GROUP_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v24, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->BASEMENU_GROUP_WIDTH:F

    sub-float/2addr v2, v3

    add-float v2, v2, v24

    float-to-int v0, v2

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SHUTTER_BUTTON_POS_Y:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SHUTTER_BUTTON_WIDTH:F

    float-to-int v0, v2

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->BASEMENU_GROUP_ICON_GAP:F

    float-to-int v0, v2

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_TOP_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    mul-int/lit8 v3, v3, 0x6

    sub-int/2addr v2, v3

    div-int/lit8 v29, v2, 0x5

    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    int-to-float v6, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->proViewGroupShowAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v7

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v9

    float-to-int v8, v9

    new-instance v9, Lcom/sec/android/app/camera/util/interpolator/QuintEaseOut;

    invoke-direct {v9}, Lcom/sec/android/app/camera/util/interpolator/QuintEaseOut;-><init>()V

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_VIEW_GROUP_SHOW_ANIMATION_DURATION:I

    invoke-static/range {v2 .. v10}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v37

    const/4 v2, 0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v23, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x258

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v2, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->proViewGroupShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->proViewGroupShowAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->proViewGroupShowAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->proViewGroupShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_GROUP_RIGHT_MARGIN:I

    int-to-float v4, v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    int-to-float v6, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v8

    new-instance v2, Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_TOP_MARGIN:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    add-int v6, v6, v29

    mul-int/lit8 v6, v6, 0x0

    add-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    int-to-float v7, v7

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/camera/widget/gl/ProItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setProItemClickListener(Lcom/sec/android/app/camera/widget/gl/ProItem$ProItemClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v8

    new-instance v2, Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_TOP_MARGIN:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    add-int v6, v6, v29

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    int-to-float v7, v7

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/camera/widget/gl/ProItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setProItemClickListener(Lcom/sec/android/app/camera/widget/gl/ProItem$ProItemClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v8

    new-instance v2, Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_TOP_MARGIN:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    add-int v6, v6, v29

    mul-int/lit8 v6, v6, 0x5

    add-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    int-to-float v7, v7

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/camera/widget/gl/ProItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setProItemClickListener(Lcom/sec/android/app/camera/widget/gl/ProItem$ProItemClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v8

    new-instance v2, Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_TOP_MARGIN:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    add-int v6, v6, v29

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    int-to-float v7, v7

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/camera/widget/gl/ProItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setProItemClickListener(Lcom/sec/android/app/camera/widget/gl/ProItem$ProItemClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v8

    new-instance v2, Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_TOP_MARGIN:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    add-int v6, v6, v29

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    int-to-float v7, v7

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/camera/widget/gl/ProItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setProItemClickListener(Lcom/sec/android/app/camera/widget/gl/ProItem$ProItemClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v8

    new-instance v2, Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_TOP_MARGIN:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    add-int v6, v6, v29

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    int-to-float v7, v7

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/camera/widget/gl/ProItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setProItemClickListener(Lcom/sec/android/app/camera/widget/gl/ProItem$ProItemClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v9, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_EDIT_BUTTON_POS_X:I

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_EDIT_BUTTON_POS_Y:I

    int-to-float v12, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_EDIT_BUTTON_WIDTH:I

    int-to-float v13, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_EDIT_BUTTON_WIDTH:I

    int-to-float v14, v2

    const v15, 0x7f020184

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090020

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    new-instance v3, Lcom/sec/android/app/camera/shootingmode/Pro$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/shootingmode/Pro$2;-><init>(Lcom/sec/android/app/camera/shootingmode/Pro;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setButtonPressListener(Lcom/samsung/android/glview/GLButton$ButtonPressListener;)V

    new-instance v9, Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->getLeft()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_LEFT_MARGIN:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_SLIDER_MENU_WIDTH:F

    sub-float v11, v2, v3

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_SLIDER_MENU_WIDTH:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    int-to-float v14, v2

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v15}, Lcom/sec/android/app/camera/menu/ProSlider;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setProSliderValueSelectListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setOnHideSliderListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHideListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setProSliderLoggingListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/ProSlider;->setVisibility(I)V

    new-instance v9, Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->getLeft()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_LEFT_MARGIN:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_SLIDER_MENU_WIDTH:F

    sub-float v11, v2, v3

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_SLIDER_MENU_WIDTH:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    int-to-float v14, v2

    const/4 v15, 0x1

    invoke-direct/range {v9 .. v15}, Lcom/sec/android/app/camera/menu/ProSlider;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setProSliderValueSelectListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setOnHideSliderListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHideListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setProSliderLoggingListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/ProSlider;->setVisibility(I)V

    new-instance v9, Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->getLeft()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_LEFT_MARGIN:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_SLIDER_MENU_WIDTH:F

    sub-float v11, v2, v3

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_SLIDER_MENU_WIDTH:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    int-to-float v14, v2

    const/4 v15, 0x2

    invoke-direct/range {v9 .. v15}, Lcom/sec/android/app/camera/menu/ProSlider;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setProSliderValueSelectListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setOnHideSliderListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHideListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setProSliderLoggingListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/ProSlider;->setVisibility(I)V

    new-instance v9, Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->getLeft()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_LEFT_MARGIN:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_SLIDER_MENU_WIDTH:F

    sub-float v11, v2, v3

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_SLIDER_MENU_WIDTH:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    int-to-float v14, v2

    const/4 v15, 0x3

    invoke-direct/range {v9 .. v15}, Lcom/sec/android/app/camera/menu/ProSlider;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setProSliderValueSelectListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setOnHideSliderListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHideListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setProSliderLoggingListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/ProSlider;->setVisibility(I)V

    new-instance v9, Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->getLeft()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_LEFT_MARGIN:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_SLIDER_MENU_WIDTH:F

    sub-float v11, v2, v3

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_SLIDER_MENU_WIDTH:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    int-to-float v14, v2

    const/4 v15, 0x4

    invoke-direct/range {v9 .. v15}, Lcom/sec/android/app/camera/menu/ProSlider;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setProSliderValueSelectListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setProSliderManualFocusAssistListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderManualFocusAssistListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setOnHideSliderListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHideListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setProSliderLoggingListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/ProSlider;->setVisibility(I)V

    new-instance v9, Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->getLeft()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_LEFT_MARGIN:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_SLIDER_MENU_WIDTH:F

    sub-float v11, v2, v3

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_SLIDER_MENU_WIDTH:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    int-to-float v14, v2

    const/4 v15, 0x5

    invoke-direct/range {v9 .. v15}, Lcom/sec/android/app/camera/menu/ProSlider;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setProSliderValueSelectListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setOnHideSliderListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHideListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setProSliderLoggingListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/ProSlider;->setVisibility(I)V

    new-instance v2, Lcom/sec/android/app/camera/menu/ProColorTuneList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLORTUNE_LIST_POS_X:I

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/camera/menu/ProColorTuneList;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->setOnProColorTuneListSelectListener(Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListSelectListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_GROUP_POS_X:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    const v2, 0x7f090133

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/Util;->getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v14

    new-instance v9, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TITLE_POS_Y:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

    const v2, 0x7f090133

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v16, v2, v3

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TEXT_COLOR:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    const v4, 0x7f0b0047

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x7f0d0038

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

    const v3, 0x7f090132

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v32

    move/from16 v0, v32

    int-to-float v2, v0

    mul-float/2addr v2, v14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TEXT_LINE_SPACING:F

    add-int/lit8 v4, v32, -0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v14, v2, v3

    new-instance v9, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TITLE_POS_Y:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TITLE_HEIGHT:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TEXT_TOP_MARGIN:F

    add-float v12, v2, v3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

    const v2, 0x7f090132

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v16, v2, v3

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TEXT_COLOR:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    const v4, 0x7f0b0047

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x7f0d0038

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v2, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_WIDTH:I

    sub-int v2, v25, v2

    div-int/lit8 v2, v2, 0x2

    add-int v30, v26, v2

    add-int v2, v27, v25

    add-int v31, v2, v28

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_SNAPSHOT_MARGIN_Y:I

    add-int v31, v31, v2

    :cond_0
    new-instance v15, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v16

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x7f02010a

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v15 .. v22}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0901e7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v15, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v16

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x7f02010c

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v15 .. v22}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09020d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SNAPSHOT_BUTTON_WIDTH:I

    sub-int v2, v25, v2

    div-int/lit8 v2, v2, 0x2

    add-int v33, v26, v2

    sub-int v2, v27, v28

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SNAPSHOT_BUTTON_WIDTH:I

    sub-int v34, v2, v3

    new-instance v15, Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x7f020105

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, p1

    invoke-direct/range {v15 .. v22}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090131

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_1
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_CONTINUOUS_AF:Z

    if-eqz v2, :cond_2

    new-instance v15, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->CAF_BUTTON_POS_X:I

    int-to-float v0, v2

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->CAF_BUTTON_POS_Y:I

    int-to-float v0, v2

    move/from16 v18, v0

    const v19, 0x7f020021

    const v20, 0x7f020022

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, p1

    invoke-direct/range {v15 .. v22}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->CAF_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09003f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_2
    move/from16 v35, v26

    move/from16 v36, v27

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_SNAPSHOT_MARGIN_Y:I

    add-int v36, v36, v2

    :cond_3
    new-instance v15, Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x7f020101

    const v20, 0x7f020103

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, p1

    invoke-direct/range {v15 .. v22}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090238

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v3, 0x77

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setColorTuneSettingListSelectListener(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingListSelectListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setColorTuneSettingMenuBarListener(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setColorTuneSettingSliderBarListener(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingSliderBarListener;)V

    return-void
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;Ljava/io/File;)Z
    .locals 5

    const/16 v3, 0x9f0

    const-string v2, "sef_file_type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "Pro_Mode_Info"

    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/16 v3, 0x9f0

    const/4 v4, 0x1

    invoke-static {p2, v1, v2, v3, v4}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v0

    const-string v2, "Pro"

    const-string v3, "error while addSEFData in Pro"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onEffectProcessorPrepared()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getEffectParameterString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onEngineStateChanged(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->STARTING_PREVIEW:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->updateMultiAfLayout()V

    :cond_0
    return-void
.end method

.method public onExposureValueMenuSelect(I)V
    .locals 3

    const-string v0, "Pro"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExposureValue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setExposureValue(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public onFaceDetection([Landroid/graphics/Rect;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mOldDetectedFaceCount:I

    if-lez v0, :cond_2

    array-length v0, p1

    if-nez v0, :cond_2

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Pro;->enableMultiAF(Z)V

    :cond_0
    :goto_0
    array-length v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mOldDetectedFaceCount:I

    :cond_1
    return v2

    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mOldDetectedFaceCount:I

    if-nez v0, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->enableMultiAF(Z)V

    goto :goto_0
.end method

.method public onHide(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->showProRecordingView()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->showProView()V

    goto :goto_0
.end method

.method public onHideProSlider(Lcom/sec/android/app/camera/menu/ProSlider;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setSelected(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    :cond_1
    return-void
.end method

.method public onHighlightMenuSelect(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->setColortuneValue(II)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateColorTuneMenuBarButtonDim(Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getEffectParameterString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetEffectParameter(Ljava/lang/String;)V

    return-void
.end method

.method public onISOValueMenuSelect(I)V
    .locals 3

    const-string v0, "Pro"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getISOState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->setISOState(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraISO(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v1, 0x5

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public onImageStoringCompleted()Z
    .locals 2

    const-string v0, "Pro"

    const-string v1, "onImageStoringCompleted"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onImageStoringPrepared(Lcom/sec/android/app/camera/interfaces/Engine$StoringInfo;)Z
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_PICTURE_FORMAT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRawPictureFormatEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/Engine$StoringInfo;->setDirectory(Ljava/lang/String;)V

    :cond_0
    return v2
.end method

.method public onInactivate()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v0, "Pro"

    const-string v1, "onInactivate"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsBurstCapturing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelBurstCapture()V

    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsBurstCapturing:Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->setTimerCancelListener(Lcom/sec/android/app/camera/menu/TimerCountingMenu$TimerCancelListener;)V

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSingleCapturing:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isLongEvShutterSpeed()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->showLongEvShotCancelHelpText()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->stopLongEVShotShutterProgress()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelTakePicture()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideLongEvShotProgressHelpText()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    :cond_3
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSingleCapturing:Z

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopVideoRecordingForced()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setVisibility(I)V

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideCAFButton()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/Pro;->enableMultiAF(Z)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xe

    invoke-interface {v0, v1, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x1f

    invoke-interface {v0, v1, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setManualSettings(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setExposureValue(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, 0x3

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0x91

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectProcessorListener(Lcom/sec/android/app/camera/interfaces/Engine$EffectProcessorListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareImageStoringListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageStoringListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/Engine$FaceDetectionListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setImageContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableCameraCurrentSet(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableTimerInterval(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableRawPictureFormat(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->setAutoFocusListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideColorTuneList()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideSlider()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->unregister()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->clearPro()V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->cancelRecording()V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->stopRecordingForced()V

    goto/16 :goto_0
.end method

.method public onKelvinSliderLoggingEvent()V
    .locals 6

    const-wide/16 v4, 0x64

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "2032"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getKelvinValue()I

    move-result v1

    int-to-long v2, v1

    mul-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "2092"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getKelvinValue()I

    move-result v1

    int-to-long v2, v1

    mul-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public onKelvinValueMenuSelect(I)V
    .locals 3

    const-string v0, "Pro"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Kelvin : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setKelvinValue(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isRecordingControlAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Pro"

    const-string v2, "Recording control is not available at this moment, ignore key down event"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isSnapShotAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Pro"

    const-string v2, "returning capture key because recording snapshot is unavailable"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isColorTuneListActive()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideColorTuneList()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isSliderActive()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideSlider()V

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsBurstCapturing:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSingleCapturing:Z

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isLongEvShutterSpeed()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelIntervalCapture()V

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->isVisible()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotWaitToast:Landroid/widget/Toast;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotWaitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotWaitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v2, 0x7f0901c7

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotWaitToast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotWaitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->stopRecording()V

    goto :goto_0

    :sswitch_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsBurstCapturing:Z

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isSnapShotAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "Pro"

    const-string v2, "returning because the enter key of the keyboard was inputted in the recording state"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->stopRecording()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_1
        0x1b -> :sswitch_1
        0x42 -> :sswitch_1
        0x82 -> :sswitch_2
    .end sparse-switch
.end method

.method public onManualFocusAssistStarted()V
    .locals 4

    const/16 v3, 0x21c

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_FOCUS_PEAKING:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFocusPeaking(Z)V

    :cond_1
    :goto_1
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsManualFocusAssistProcessing:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v0

    if-ge v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setZoomValue(I)V

    goto :goto_1
.end method

.method public onManualFocusAssistStopped()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_FOCUS_PEAKING:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFocusPeaking(Z)V

    :goto_1
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsManualFocusAssistProcessing:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setZoomValue(I)V

    goto :goto_1
.end method

.method public onManualFocusAutoLoggingEvent(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "2034"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "2094"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public onManualFocusValueMenuSelect(I)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    const-string v1, "Pro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ManualFocus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v1, v2, :cond_4

    if-ne v0, v4, :cond_2

    if-ne p1, v4, :cond_3

    :cond_2
    if-eq v0, v4, :cond_4

    if-ne p1, v4, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x18

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetTouchAF()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideCAFButton()V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusLength(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-direct {p0, v6, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getButtonText(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v6, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getButtonTtsString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v1

    if-gez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v1

    if-ne v1, v5, :cond_0

    if-gez p1, :cond_8

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/Pro;->enableMultiAF(Z)V

    goto :goto_0

    :cond_6
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_OBJECT_TRACKING_AF:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isObjectTrackingAFStarted()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->stopObjectTrackingAF()V

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideFocusMode(I)V

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->enableMultiAF(Z)V

    goto/16 :goto_0
.end method

.method public onMenuSelected(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onNewImageLoggingPrepared(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    const-string v2, "Z060"

    const/16 v3, 0x13b

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRawPictureFormatEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getTouchAeLockState()I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, "Z068"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNewVideoLoggingPrepared(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Z100"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeNameForLogging()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "Z070"

    const/16 v1, 0xbbf

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAntiShake()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->updateProSliderPosition()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->updateProSliderPosition()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->updateProSliderPosition()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->updateProSliderPosition()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->updateProSliderPosition()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->updateProRecordingSliderPosition()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->updateProRecordingSliderPosition()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->updateProRecordingSliderPosition()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->updateProRecordingSliderPosition()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->updateProRecordingSliderPosition()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_RECORDING_ITEM_OFFSET:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onProColorTuneListSelect(I)V
    .locals 7

    const/16 v5, 0x77

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v1

    if-eq p1, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->loadColorTuneValues()V

    const/4 v1, 0x6

    if-eq p1, v1, :cond_2

    const/4 v1, 0x7

    if-ne p1, v1, :cond_5

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setColorTuneSettingSlideType(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->access$200(Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideColorTuneList()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getColorTuneSliderValues()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->updateColorTuneSlider([I)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateColorTuneMenuBarButtonDim(Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->changeToColorTuneMode(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPictureFormat()I

    move-result v1

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableRawPictureFormat(Z)V

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getColorTuneString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getColorTuneTtsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v2

    invoke-interface {v1, v5, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    const-string v1, "2025"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%d"

    new-array v4, v4, [Ljava/lang/Object;

    rsub-int/lit8 v5, p1, 0x7

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setColorTuneSettingSlideType(I)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRawPictureFormatEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v2, 0x7f0901f9

    invoke-static {v1, v2, v6}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/Engine;->enableRawPictureFormat(Z)V

    goto :goto_2
.end method

.method public onProItemDeselected(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideColorTuneList()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideSlider()V

    goto :goto_0
.end method

.method public onProItemSelected(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetTouchAF()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isColorTuneListActive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideColorTuneList()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isSliderActive()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideSlider()V

    :cond_2
    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->showSlider(Lcom/sec/android/app/camera/menu/ProSlider;I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const-string v1, "2003"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->showSlider(Lcom/sec/android/app/camera/menu/ProSlider;I)V

    const-string v1, "2004"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->showSlider(Lcom/sec/android/app/camera/menu/ProSlider;I)V

    const-string v1, "2073"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->showSlider(Lcom/sec/android/app/camera/menu/ProSlider;I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const-string v1, "2005"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->showColorTuneList()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const-string v1, "2006"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->showSlider(Lcom/sec/android/app/camera/menu/ProSlider;I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v1, v2, :cond_5

    const-string v1, "2007"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "2074"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->showSlider(Lcom/sec/android/app/camera/menu/ProSlider;I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v1, v2, :cond_6

    const-string v1, "2008"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "2075"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_2
        0x9 -> :sswitch_4
        0xa -> :sswitch_0
        0xe -> :sswitch_1
        0x51 -> :sswitch_5
        0x77 -> :sswitch_3
    .end sparse-switch
.end method

.method public onProSliderLoggingEvent(I)V
    .locals 7

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v1

    if-nez v1, :cond_2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v1, "2024"

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    goto :goto_0

    :pswitch_1
    const-string v2, "2023"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    :goto_1
    invoke-static {v2, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "2"

    goto :goto_1

    :pswitch_2
    const-string v1, "2022"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%d"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v1, "2031"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%d"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string v2, "2033"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v1

    if-ne v1, v3, :cond_1

    const-string v1, "1"

    :goto_2
    invoke-static {v2, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "2"

    goto :goto_2

    :cond_2
    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_5
    const-string v1, "2091"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%d"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "1"

    :goto_3
    const-string v1, "2071"

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "2"

    goto :goto_3

    :pswitch_7
    const-string v2, "2093"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v1

    if-ne v1, v3, :cond_4

    const-string v1, "1"

    :goto_4
    invoke-static {v2, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "2"

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public onRecordKeyCanceled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSwitchToCameraPreview()V

    const/4 v0, 0x1

    return v0
.end method

.method public onRecordKeyPressed()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->switchToRecordingPreview()V

    const/4 v0, 0x1

    return v0
.end method

.method public onRecordKeyReleased()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->startProRecording()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onRecordingEvent(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v0, "203"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->handleProRecordingStopped()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->handleProRecordingCancelled()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onRecordingMaxDurationReached()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f09027e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->onStopRecordingRequested(Z)V

    return-void
.end method

.method public onRecordingMaxFileSizeReached()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isStopAndRestartRecordingAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->removeTouchAeRequest()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->removeAfRequest()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopAndRestartVideoRecording()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->stopRecording()V

    goto :goto_0
.end method

.method public onRecordingRestricted(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/shootingmode/Pro;->onStopRecordingRequested(Z)V

    :cond_0
    return-void
.end method

.method public onRecordingTick(JJ)V
    .locals 3

    const-string v0, "Pro"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingTick : elapsedTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fileSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isRecordingTimeLimited()Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getMaxRecordingTimeLimitInSecond()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->startTimer(ZI)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getMaxRecordingTimeLimitInSecond()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->updateMaxRecordingTime(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->updateRecordingTime(J)V

    goto :goto_0
.end method

.method public onSaturationMenuSelect(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->setColortuneValue(II)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateColorTuneMenuBarButtonDim(Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getEffectParameterString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetEffectParameter(Ljava/lang/String;)V

    return-void
.end method

.method public onShadowMenuSelect(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->setColortuneValue(II)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateColorTuneMenuBarButtonDim(Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getEffectParameterString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetEffectParameter(Ljava/lang/String;)V

    return-void
.end method

.method public onShow(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideProView()V

    :cond_0
    return-void
.end method

.method public onShutterKeyLongPressed()Z
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LOW_PERFORMANCE_CONTINUOUS:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isBurstCaptureAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isProBurstCaptureEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isBurstCaptureAvailableFPS()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isLowLightDetected()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->handleBurstShutterPressed()V

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v2, 0x7f090121

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onShutterKeyPressed()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsManualFocusAssistProcessing:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_FOCUS_PEAKING:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFocusPeaking(Z)V

    :cond_0
    :goto_0
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LOW_PERFORMANCE_CONTINUOUS:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isBurstCaptureAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setZoomValue(I)V

    goto :goto_0
.end method

.method public onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v2, v3, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRemainRecordingTime()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleTakePicture()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->STORAGE_STATUS:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsBurstCapturing:Z

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShutterPressed()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleBurstShutterReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isLongEvShutterSpeed()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleSingleShutterReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v2, v0, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public onShutterSpeedValueMenuSelect(I)V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x1f

    const/16 v4, 0x1b

    const-string v1, "Pro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterSpeedValueMenuSelect : ShutterSpeed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v2, 0x4

    invoke-direct {p0, v2, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getButtonText(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v5, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->setShutterPriorityActivate(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setShutterSpeed(I)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_0

    const/16 v1, 0x15

    if-ge p1, v1, :cond_0

    iput-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsSavedPreviousShutterSpeed:Z

    :cond_0
    return-void

    :cond_1
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v5, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setShutterSpeed(I)V

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/Pro;->setShutterPriorityActivate(Z)V

    goto :goto_0

    :cond_2
    if-ge v0, v4, :cond_3

    if-ge p1, v4, :cond_4

    :cond_3
    if-lt v0, v4, :cond_5

    if-ge p1, v4, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v5, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setShutterSpeed(I)V

    goto :goto_0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 8

    const/16 v7, 0x200

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, -0x1

    const/4 v3, 0x0

    const-string v0, "Pro"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleCaptureEvent - event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iput-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSingleCapturing:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isLongEvShutterSpeed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideProView()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isLongEvShutterSpeed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideOneHandZoomGuide()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v7}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, -0x102

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideProView()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->showLongEvShotProgressHelpText()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->startLongEVShotShutterProgress()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->LONG_EXPOSURE_SHUTTER_START:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-interface {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V

    goto :goto_0

    :pswitch_2
    if-eq p1, v6, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelIntervalCapture()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetTouchAE()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x2c0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->showProView()V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isLongEvShutterSpeed()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideLongEvShotProgressHelpText()V

    if-ne p1, v5, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->LONG_EXPOSURE_SHUTTER_STOP:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-interface {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->stopLongEVShotShutterProgress()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v7}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-ne v0, v5, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->showProView()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    :cond_6
    :goto_2
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSingleCapturing:Z

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->showProView()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-ne v0, v5, :cond_9

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->showProView()V

    :cond_9
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsManualFocusAssistProcessing:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->onManualFocusAssistStarted()V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onStopProgress(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Pro"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopProgress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isShutterProgressWheelVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    goto :goto_0
.end method

.method public onStopRecordingRequested(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->cancelRecording()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->stopRecording()V

    goto :goto_0
.end method

.method public onTemperatureMenuSelect(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->setColortuneValue(II)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateColorTuneMenuBarButtonDim(Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getEffectParameterString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetEffectParameter(Ljava/lang/String;)V

    return-void
.end method

.method public onTimerCanceled()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSwitchToCameraPreview()V

    return-void
.end method

.method public onTimerEvent(I)V
    .locals 4

    const/16 v3, 0x3d

    const-string v0, "Pro"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTimerEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->setTimerCancelListener(Lcom/sec/android/app/camera/menu/TimerCountingMenu$TimerCancelListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    :cond_1
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x2c0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x180

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    goto :goto_0
.end method

.method public onTintMenuSelect(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->setColortuneValue(II)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateColorTuneMenuBarButtonDim(Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getEffectParameterString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetEffectParameter(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onWBValueMenuSelect(I)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "Pro"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WB : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setWhiteBalance(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v1

    invoke-direct {p0, v3, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    if-ne p1, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getKelvinValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->updateKelvinSliderValue(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->showKelvinSlider()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->hideKelvinSlider()V

    goto :goto_0
.end method

.method protected runShutterProgress(J)V
    .locals 7

    const/16 v5, 0xc

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->access$300(Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Pro"

    const-string v4, "runProgress mShutterProgressThread is stop"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "Pro"

    const-string v4, "runShutterProgress"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    :goto_1
    if-gt v1, v5, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->access$300(Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;)Z

    move-result v3

    if-nez v3, :cond_0

    mul-int/lit8 v3, v1, 0x64

    div-int/lit8 v2, v3, 0xc

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v3, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    if-ge v1, v5, :cond_2

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "Pro"

    const-string v4, "runShutterProgress - interrupted"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v3, "Pro"

    const-string v4, "runProgress mProgressThread is null by stopThread"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startRecording()V
    .locals 5

    const/16 v4, 0x15

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestAudioFocus()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->RECORDING_START:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->enableMultiAF(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setMaxVideoFileSize()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->schedulePrepareVideoRecording()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartVideoRecording()V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsRecordingStopping:Z

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->setRecordingButtonsDim(Z)V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->onOrientationChanged(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    if-le v0, v4, :cond_3

    const-string v0, "Pro"

    const-string v1, "Shutter speed value is more than 1/30. Adjust it for Recording."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsSavedPreviousShutterSpeed:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSavedShutterSpeed:I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setShutterSpeed(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v1, 0x4

    invoke-direct {p0, v1, v4}, Lcom/sec/android/app/camera/shootingmode/Pro;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public stopRecording()V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "Pro"

    const-string v1, "stopRecording"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsRecordingStopping:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "Pro"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecording : already stopping - recordingTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsRecordingStopping:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->updateRecordingTime(J)V

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->STOP_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetTouchAF()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopVideoRecordingAsync()V

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/Pro;->setRecordingButtonsDim(Z)V

    goto :goto_0
.end method

.method public stopRecordingForced()V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "Pro"

    const-string v1, "stopRecordingForced"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsRecordingStopping:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "Pro"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecordingForced : already stopping - recordingTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->updateRecordingTime(J)V

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->STOP_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopVideoRecordingForced()V

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/Pro;->setRecordingButtonsDim(Z)V

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsRecordingStopping:Z

    goto :goto_0
.end method
