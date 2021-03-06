.class public abstract Lcom/samsung/android/settings/wifi/WifiSettingsBase;
.super Lcom/samsung/android/settings/SecRestrictedSettingsFragment;
.source "WifiSettingsBase.java"

# interfaces
.implements Lcom/android/settingslib/wifi/WifiTracker$WifiListener;
.implements Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiSettingsBase$1;,
        Lcom/samsung/android/settings/wifi/WifiSettingsBase$2;,
        Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;,
        Lcom/samsung/android/settings/wifi/WifiSettingsBase$4;,
        Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;,
        Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;,
        Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;
    }
.end annotation


# static fields
.field protected static final DBG:Z

.field public static goToWebPageHTTPResponse:I

.field public static goToWebPageLinkClicked:Z

.field public static goToWebPageLinkViewed:Z

.field public static mWpsInProgress:Z


# instance fields
.field private helpMenuCheck:Z

.field protected mAddPreference:Landroid/preference/Preference;

.field private mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

.field private mBackgroundResId:I

.field private mBgThread:Landroid/os/HandlerThread;

.field private mBixbyWaitWifiOnTimer:Landroid/os/CountDownTimer;

.field private final mCheckHttpResponseHandler:Landroid/os/Handler;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mContainer:Landroid/view/ViewGroup;

.field private mCricketClickListener:Landroid/view/View$OnClickListener;

.field private mCricketManagerHeader:Landroid/view/View;

.field protected mDialogListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmLastStateID:Ljava/lang/String;

.field private mEmParam:Ljava/lang/String;

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mGateway:Ljava/lang/String;

.field private mHandlerForKTCM:Landroid/os/Handler;

.field protected mHasNavBar:Z

.field protected mInManageNetwork:Z

.field private mInOffloadDialog:Z

.field private mInPickerDialog:Z

.field protected mInSecPickerActivity:Z

.field protected mInSetupWizardWifiScreen:Z

.field protected mIsEmerMode:Z

.field private mIsFromLocation:Z

.field private mIsShouldSendResult:Z

.field private mLastUserPickedAp:Lcom/android/settingslib/wifi/AccessPoint;

.field private mListAnimationView:Landroid/view/View;

.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mOpenSecurity:I

.field private mOpenSsid:Ljava/lang/String;

.field private mP2pSupported:Z

.field private mRequestConnectionByUser:Z

.field private mRunnableForKTCM:Ljava/lang/Runnable;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mScrollTimer:J

.field protected mShowNotInRagededAp:Z

.field private mShowRetryDialog:Z

.field public mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field protected mUserBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

.field private mViListListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

.field private mWifiAdvanced:Landroid/widget/TextView;

.field private mWifiDirect:Landroid/widget/TextView;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field private mWifiEnablerListener:Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field protected mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

.field private mWillRespondToEm:Z

.field protected mWpsDialog:Lcom/android/settings/wifi/WpsDialog;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/os/CountDownTimer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBixbyWaitWifiOnTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBixbyWaitWifiOnTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmLastStateID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mRequestConnectionByUser:Z

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWillRespondToEm:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isMobileHotstpotEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isWifiSharingEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->forceScanByBixby()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startP2pNlgForBixby()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    sput-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageLinkViewed:Z

    sput-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageLinkClicked:Z

    sput v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageHTTPResponse:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string/jumbo v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWillRespondToEm:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsEmerMode:Z

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBackgroundResId:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsFromLocation:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsShouldSendResult:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSetupWizardWifiScreen:Z

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBixbyWaitWifiOnTimer:Landroid/os/CountDownTimer;

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mHasNavBar:Z

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mGateway:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnablerListener:Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$2;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCheckHttpResponseHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mViListListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$4;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mDialogListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCricketClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWillRespondToEm:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsEmerMode:Z

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBackgroundResId:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsFromLocation:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsShouldSendResult:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSetupWizardWifiScreen:Z

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBixbyWaitWifiOnTimer:Landroid/os/CountDownTimer;

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mHasNavBar:Z

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mGateway:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnablerListener:Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$2;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCheckHttpResponseHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mViListListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$4;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mDialogListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCricketClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private WifiAdvancetts(Z)V
    .locals 5

    const v4, 0x7f0b0e82

    const v3, 0x7f0b0292

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, ""

    if-eqz p1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0e60

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private WifiDirectTts(Z)V
    .locals 5

    const v3, 0x7f0b1445

    const v4, 0x7f0b0292

    const-string/jumbo v1, ""

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b0e60

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private forceScanByBixby()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startScan()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "WiFi"

    const-string/jumbo v2, "Searching"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "WiFiSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void
.end method

.method private forceScrollToTopOfList()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mScrollTimer:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiSettingsBase"

    const-string/jumbo v1, "scroll end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mScrollTimer:J

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "WifiSettingsBase"

    const-string/jumbo v1, "force scroll up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method private getPickedApInfo(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Intent;
    .locals 8

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    sget-boolean v5, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    const-string/jumbo v5, "WifiSettingsBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pickedApInfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", bssid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getBssid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", WifiInfo.bssid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "ssid"

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "bssid"

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string/jumbo v5, "security"

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v5, "frequency"

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getFrequency()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v2

    :cond_1
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getBssid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v5, "any"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    iget-object v5, p1, Lcom/android/settingslib/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v5}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v0, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    :cond_3
    const-string/jumbo v5, "bssid"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private isCricketManagerSupport()Z
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSetupWizardWifiScreen:Z

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSecPickerActivity:Z

    if-eqz v0, :cond_2

    :cond_1
    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.smithmicro.netwise.director.cricket"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "WifiSettingsBase"

    const-string/jumbo v1, "There is no package for Cricket Manager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private isMobileHotstpotEnabled()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "WifiSettingsBase"

    const-string/jumbo v2, "isMobileHotstpotEnabled, Wifi Manager is null so returning false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    return v3
.end method

.method private isUsimUseable()Z
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v4, "phone"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "airplane_mode_on"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :goto_0
    const/4 v4, 0x5

    if-eq v2, v4, :cond_0

    if-eqz v1, :cond_3

    :cond_0
    const-string/jumbo v4, "SKT"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v4, "45005"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    const/4 v4, 0x1

    return v4

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b0e37

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    return v6

    :cond_4
    const-string/jumbo v4, "45000"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b0e39

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    return v6

    :cond_5
    const-string/jumbo v4, "KTT"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v4, "45008"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "45002"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b0e38

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    return v6
.end method

.method private isWifiSharingEnabled()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_0

    return v4

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WifiSettingsBase"

    const-string/jumbo v2, "isWifiSharingEnabled, SettingNotFoundException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v3
.end method

.method private startP2pNlgForBixby()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBixbyWaitWifiOnTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBixbyWaitWifiOnTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBixbyWaitWifiOnTimer:Landroid/os/CountDownTimer;

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isMobileHotstpotEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "MobileHotspot"

    const-string/jumbo v2, "AlreadyON"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "WiFiSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "MobileHotspot"

    const-string/jumbo v2, "AlreadyON"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "WiFiDirectSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0
.end method


# virtual methods
.method protected addMessagePreference(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->removeAll()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateEmptyView()V

    goto :goto_0
.end method

.method protected addOptionsMenuItems(Landroid/view/Menu;)V
    .locals 8

    const/16 v7, 0xc

    const/16 v6, 0x8

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiTracker;->isWifiEnabled()Z

    move-result v0

    const v1, 0x7f0b1447

    invoke-interface {p1, v3, v5, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Setting_ConfigTypeHelp"

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isUSA()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->helpMenuCheck:Z

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->helpMenuCheck:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0b1a90

    invoke-interface {p1, v3, v7, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0201a4

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsEmerMode:Z

    if-eqz v1, :cond_5

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    invoke-interface {p1, v5}, Landroid/view/Menu;->removeItem(I)V

    invoke-interface {p1, v7}, Landroid/view/Menu;->removeItem(I)V

    :cond_5
    return-void
.end method

.method protected abstract changeNextButtonState(Z)V
.end method

.method protected checkContextMenuUiVisibility()Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSecPickerActivity:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsFromLocation:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public checkGoToWebPageHTTPResponse()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "WifiSettingsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dhcpInfo.gateway : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v0, Landroid/net/DhcpInfo;->gateway:I

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v3}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mGateway:Ljava/lang/String;

    const-string/jumbo v2, "WifiSettingsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Go to Webpage: gateway addr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mGateway:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$9;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mGateway:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method protected checkRestrictionAndShowEmptyView()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "WifiSettingsBase"

    const-string/jumbo v1, "ui rstricted by user"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0b144f

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->addMessagePreference(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->removeAll()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUiRestrictedByOnlyAdmin()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateEmptyView(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected connect(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowRetryDialog:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x87

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mScrollTimer:J

    return-void
.end method

.method protected connectWeChatAccessPoint(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.net.wifi.WECHAT_CONNECT_AP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "ssid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "bssid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "rssi"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected createAddNetworkPreference()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    const v1, 0x7f02020e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    const v1, 0x7f0b143e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    :cond_0
    return-void
.end method

.method protected createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    new-instance v1, Lcom/android/settings/wifi/WifiEnabler;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {v1, v0, v2}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected abstract disable()V
.end method

.method protected disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    return-void
.end method

.method protected abstract dismissDialog(I)V
.end method

.method protected findAccessPoint(Landroid/net/wifi/WifiConfiguration;)Lcom/android/settingslib/wifi/AccessPoint;
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v1

    :cond_1
    const-string/jumbo v3, "WifiSettingsBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "can\'t find configured AP, networkId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3
.end method

.method protected forget()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x89

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    return-void
.end method

.method protected forget(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method public getEmptyTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x67

    return v0
.end method

.method protected getWifiDialogArgs(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/os/Bundle;
    .locals 5

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "WifiSettingsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWifiDialogArgs - apInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v2, "args_linkproperties"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    const-string/jumbo v2, "manage_network"

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected initFailListener()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$11;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$11;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$12;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$12;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$13;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$13;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-void
.end method

.method protected isCoreanVendorAp(Lcom/android/settingslib/wifi/AccessPoint;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    return v7

    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_6

    const-string/jumbo v4, "T wifi zone_secure"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "SKT"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUsimUseable()Z

    move-result v4

    if-nez v4, :cond_6

    return v6

    :cond_1
    const-string/jumbo v4, "ollehWiFi"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "KTT"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUsimUseable()Z

    move-result v4

    if-nez v4, :cond_6

    return v6

    :cond_2
    const-string/jumbo v4, "olleh GiGA WiFi"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "KTT"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUsimUseable()Z

    move-result v4

    if-nez v4, :cond_6

    return v6

    :cond_3
    const-string/jumbo v4, "U+zone"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "LGU"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUsimUseable()Z

    move-result v4

    if-nez v4, :cond_6

    return v6

    :cond_4
    const-string/jumbo v4, "U+zone_5G"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "LGU"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUsimUseable()Z

    move-result v4

    if-nez v4, :cond_6

    return v6

    :cond_5
    const-string/jumbo v4, "5G_U+zone"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "LGU"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUsimUseable()Z

    move-result v4

    if-nez v4, :cond_6

    return v6

    :cond_6
    return v7
.end method

.method public onAccessPointsChanged()V
    .locals 0

    return-void
.end method

.method public onAccessPointsChanged(Z)V
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->checkRestrictionAndShowEmptyView()Z

    move-result v5

    if-eqz v5, :cond_1

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v19

    sget-boolean v5, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "WifiSettingsBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onAccessPointsChanged - wifi state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v5, :cond_5

    move/from16 v12, v19

    const/4 v5, 0x3

    move/from16 v0, v19

    if-ne v0, v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiEnabler;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_3
    const/4 v5, 0x1

    move/from16 v0, v19

    if-ne v0, v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiEnabler;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v12, 0x2

    :cond_4
    :goto_0
    move/from16 v0, v19

    if-eq v0, v12, :cond_5

    const-string/jumbo v5, "WifiSettingsBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "force to change wifi state to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v19, v12

    :cond_5
    packed-switch v19, :pswitch_data_0

    :cond_6
    :goto_1
    return-void

    :cond_7
    const/4 v12, 0x0

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v11

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-nez v5, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->cacheRemoveAllPrefs(Landroid/preference/PreferenceGroup;)V

    :goto_2
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowNotInRagededAp:Z

    if-nez v5, :cond_9

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_8

    :cond_9
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getBssid()Ljava/lang/String;

    move-result-object v16

    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getCachedPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    if-eqz v4, :cond_b

    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v4, v14}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    move v14, v15

    goto :goto_3

    :cond_a
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_b
    new-instance v2, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mUserBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    const/4 v6, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/wifi/LongPressAccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZLandroid/app/Fragment;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setKey(Ljava/lang/String;)V

    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v2, v14}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mOpenSsid:Ljava/lang/String;

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mOpenSsid:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mOpenSecurity:I

    if-ne v5, v6, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mOpenSsid:Ljava/lang/String;

    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-eqz v5, :cond_d

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-nez v5, :cond_1a

    invoke-virtual {v2}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->refresh()V

    move v14, v15

    goto/16 :goto_3

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-nez v5, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->removeCachedPrefs(Landroid/preference/PreferenceGroup;)V

    :cond_f
    if-nez v13, :cond_15

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-eqz v5, :cond_11

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-nez v5, :cond_14

    new-instance v18, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setSelectable(Z)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-eqz v5, :cond_13

    const-string/jumbo v5, "VZW"

    sget-object v6, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    const v5, 0x7f0b0e35

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setSummary(I)V

    :goto_6
    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setOrder(I)V

    const-string/jumbo v5, "wifi_empty_list"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOrder(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_10
    :goto_8
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mScrollTimer:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->forceScrollToTopOfList()V

    goto/16 :goto_1

    :cond_11
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    goto :goto_5

    :cond_12
    const v5, 0x7f0b0e23

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_6

    :cond_13
    const v5, 0x7f0b0087

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_6

    :cond_14
    new-instance v4, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mUserBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/wifi/LongPressAccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZLandroid/app/Fragment;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setSelectable(Z)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    const-string/jumbo v5, "wifi_empty_list"

    invoke-virtual {v4, v5}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v6}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateWithAnimation(Ljava/util/List;Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateEmptyView()V

    goto :goto_7

    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    if-eqz v5, :cond_17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v5, v14}, Landroid/preference/Preference;->setOrder(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    move v14, v15

    :cond_16
    :goto_9
    if-eqz p1, :cond_10

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    goto/16 :goto_8

    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-eqz v5, :cond_16

    if-eqz p1, :cond_18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    const/4 v6, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v6}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateWithAnimation(Ljava/util/List;Z)V

    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateEmptyView()V

    goto :goto_9

    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v6}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateWithAnimation(Ljava/util/List;Z)V

    goto :goto_a

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-nez v5, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    :goto_b
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    goto/16 :goto_1

    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/ListAnimationController;->removeAll()V

    goto :goto_b

    :pswitch_2
    const v5, 0x7f0b1427

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->addMessagePreference(I)V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setOffMessage()V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    goto/16 :goto_1

    :cond_1a
    move v14, v15

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.hardware.wifi.direct"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mP2pSupported:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->initFailListener()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    if-nez p1, :cond_4

    const-string/jumbo v1, "wifi_start_connect_ssid"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "wifi_start_connect_ssid"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mOpenSsid:Ljava/lang/String;

    const-string/jumbo v1, "wifi_start_connect_security"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "wifi_start_connect_security"

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mOpenSecurity:I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getListView()Landroid/widget/ListView;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->registerForContextMenu(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v1, 0x7f0a0015

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0a0023

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int v4, v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v11}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v11, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0206bd

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v9

    if-eqz v9, :cond_2

    const v1, 0x800033

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x5

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0291

    invoke-virtual {v9, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d013b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    :cond_2
    const-string/jumbo v1, "AIO"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isCricketManagerSupport()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    const v1, 0x7f040384

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v11, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCricketManagerHeader:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCricketManagerHeader:Landroid/view/View;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/View;->setTextAlignment(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCricketManagerHeader:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCricketClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCricketManagerHeader:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v11, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_3
    return-void

    :cond_4
    const-string/jumbo v1, "com.samsung.android.net.wifi.PICK_WIFI_NETWORK_RESULT"

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSecPickerActivity:Z

    const-string/jumbo v1, "extra_location_services"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "extra_location_services"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "location"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsFromLocation:Z

    goto/16 :goto_0

    :cond_5
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v11}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v11, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1
.end method

.method public onAddNetworkPressed()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiSettingsBase"

    const-string/jumbo v1, "onAddNetworkPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x86

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v0

    const v1, 0x7f10002e

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLogForUx(I)V

    return-void
.end method

.method public onConfiguredNetworksChanged(Landroid/net/wifi/WifiConfiguration;ZI)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v2, "WifiSettingsBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConfiguredNetworksChanged: config = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_1

    const-string/jumbo v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", isMultipleChanged = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", mRequestConnectionByUser = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mRequestConnectionByUser:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_2

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mRequestConnectionByUser:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "WifiSettingsBase"

    const-string/jumbo v2, "Failed to show retry popup. It\'s default AP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v1

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "WifiSettingsBase"

    const-string/jumbo v2, "Failed to show retry popup. It\'s none secured (OPEN) AP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_7

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4

    :cond_7
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v1, :cond_8

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    if-eq p3, v5, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0ea5

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_8
    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v1, :cond_9

    const-string/jumbo v1, "WifiSettingsBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConfiguredNetworksChanged: mShowRetryDialog = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowRetryDialog:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowRetryDialog:Z

    if-eqz v1, :cond_a

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->findAccessPoint(Landroid/net/wifi/WifiConfiguration;)Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->showDialogForRetry(Lcom/android/settingslib/wifi/AccessPoint;)V

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowRetryDialog:Z

    :cond_a
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mRequestConnectionByUser:Z

    goto :goto_1
.end method

.method public onConnectedChanged()V
    .locals 8

    const/4 v6, 0x0

    const-string/jumbo v3, "WifiSettingsBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onConnectedChanged: isConnected:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowRetryDialog:Z

    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsFromLocation:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsShouldSendResult:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mLastUserPickedAp:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mRequestConnectionByUser:Z

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    sget-boolean v3, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "WifiSettingsBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SEC PICKER from location, networkId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mLastUserPickedAp:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3, v0}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiSettingsBase"

    const-string/jumbo v4, "matches - return picked AP & finish"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mLastUserPickedAp:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPickedApInfo(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v3, v5, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    sget-boolean v3, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "WifiSettingsBase"

    const-string/jumbo v4, "not maches"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "WifiSettingsBase"

    const-string/jumbo v4, "onConnectedChanged : isConnected() : mInPickerDialog : Finish!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    return-void

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInOffloadDialog:Z

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    return-void

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCheckHttpResponseHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCheckHttpResponseHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->changeNextButtonState(Z)V

    return-void

    :cond_7
    sput v6, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageHTTPResponse:I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v2, "WifiSettingsBase"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBgThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    sput-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageLinkViewed:Z

    sput-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageLinkClicked:Z

    sput v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageHTTPResponse:I

    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string/jumbo v0, "manage_network"

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-eqz v0, :cond_1

    const/4 v10, 0x0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSetupWizardWifiScreen:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/wifi/WifiSetupActivity;

    if-eqz v0, :cond_2

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSetupWizardWifiScreen:Z

    const/4 v10, 0x0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInOffloadDialog:Z

    const-string/jumbo v0, "SupportLightNavigationBar|SupportForceTouch|SupportCustomBgColor|SupportNaviBarRemoteView"

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mHasNavBar:Z

    new-instance v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mUserBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    const/4 v9, 0x1

    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-eqz v0, :cond_7

    const/4 v9, 0x0

    const/4 v5, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowNotInRagededAp:Z

    :cond_3
    :goto_2
    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v2, p0

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowNotInRagededAp:Z

    invoke-virtual {v0, v1}, Lcom/android/settingslib/wifi/WifiTracker;->setAccessPointVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/wifi/WifiTracker;->setSemWifiListener(Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v10, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->setWifiTracker(Lcom/android/settingslib/wifi/WifiTracker;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mViListListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->setListener(Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/wifi/ListAnimationController;->setEnableRefreshLayout(Z)V

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsEmerMode:Z

    :cond_4
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_5
    move v0, v4

    goto/16 :goto_0

    :cond_6
    move v0, v4

    goto/16 :goto_1

    :cond_7
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    if-eqz v0, :cond_3

    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_8
    const v0, 0x7f08015f

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->createAddNetworkPreference()V

    goto :goto_3
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v0

    const v1, 0x7f100028

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLogForUx(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "VZW"

    sget-object v1, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsEmerMode:Z

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->addOptionsMenuItems(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/ListAnimationController;->createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;ZZ)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mListAnimationView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mListAnimationView:Landroid/view/View;

    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCricketManagerClicked()V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.smithmicro.mnd.MNDSettings"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "WifiSettingsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ActivityNotFoundException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageLinkViewed:Z

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageLinkClicked:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "1"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageHTTPResponse:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertBigdataLog(ILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBgThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1, v3}, Lcom/android/settingslib/wifi/WifiTracker;->setSemWifiListener(Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;)V

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    :cond_1
    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->destroyView()V

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    :cond_2
    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onDestroy()V

    return-void

    :cond_3
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mListAnimationView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mListAnimationView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mListAnimationView:Landroid/view/View;

    const-string/jumbo v0, "WifiSettingsBase"

    const-string/jumbo v1, "onDestroyView, mListAnimationView is removed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const-string/jumbo v0, "WifiSettingsBase"

    const-string/jumbo v1, "onDestroyView, mContainer is removed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v0

    const v1, 0x7f10002d

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLogForUx(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startWifiAdvancedScreen()V

    return v2

    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startWifiConfigSettings()V

    return v2

    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startWifiHelpScreen()V

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
    .end sparse-switch
.end method

.method public onP2pMenuPressed()V
    .locals 10

    const/4 v6, 0x0

    const v3, 0x7f0b1445

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    :cond_1
    const-class v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onPause()V

    sput-boolean v3, Lcom/samsung/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiTracker;->stopTracking()V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    const-string/jumbo v2, "power"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWpsInProgress:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    sget-boolean v2, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCheckHttpResponseHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WpsDialog;->dismiss()V

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    goto :goto_0
.end method

.method public onResume()V
    .locals 13

    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onResume()V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->resetPeriodicScanTime()V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/WifiTracker;->startTracking()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isSharedDeviceKeyguardOn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "WifiSettingsBase"

    const-string/jumbo v6, "isSharedDeviceKeyguardOn!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x80000

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    const/16 v5, 0x4a

    iput v5, v3, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "enable"

    invoke-virtual {v1, v5, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v5, "lock"

    invoke-virtual {v1, v5, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "WifiSettingsBase"

    const-string/jumbo v6, "Start scan, start assoc !!!!!!!!!!!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mP2pSupported:Z

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-nez v5, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_3

    const v5, 0x7f0b1422

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->updateActionBar()V

    :cond_3
    :goto_0
    const-string/jumbo v5, "KTT"

    sget-object v6, Lcom/android/settings/Utils;->CONFIG_WIFI_AUTOCONNECT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wifi_skip_auto_conn"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v11, :cond_b

    const/4 v4, 0x1

    :goto_1
    const-string/jumbo v5, "WifiSettingsBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onResume : MANUAL_CONN_ENABLE_QUERY "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wifi_skip_auto_conn"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "com.kt.wifiapi.OEMExtension.MANUAL_CONN_ENABLE_QUERY"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mHandlerForKTCM:Landroid/os/Handler;

    new-instance v5, Lcom/samsung/android/settings/wifi/WifiSettingsBase$8;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$8;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mRunnableForKTCM:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mHandlerForKTCM:Landroid/os/Handler;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mRunnableForKTCM:Ljava/lang/Runnable;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->helpMenuCheck:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsEmerMode:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    iput-boolean v10, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->helpMenuCheck:Z

    :cond_7
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/WifiTracker;->forceUpdate()V

    :cond_8
    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onAccessPointsChanged(Z)V

    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    if-nez v5, :cond_9

    sput-boolean v11, Lcom/samsung/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    :cond_9
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_a
    const v5, 0x7f0b0e95

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_0

    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_c
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_d
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public onScanStateChange(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    :cond_0
    return-void
.end method

.method public onShowButtonBackgroundChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    const v1, 0x108073e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBackgroundResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onStart()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnablerListener:Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setListener(Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setListener(Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->teardownSwitchBar()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    :cond_0
    return-void
.end method

.method public onWifiStateChanged(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const v0, 0x7f0b1426

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->addMessagePreference(I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedWifiDirectEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiDirectTts(Z)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiAdvancetts(Z)V

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWillRespondToEm:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WiFiScan"

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmLastStateID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->forceScanByBixby()V

    :cond_4
    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmParam:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWillRespondToEm:Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiDirectTts(Z)V

    goto :goto_1

    :pswitch_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_6
    const v0, 0x7f0b1427

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->addMessagePreference(I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->dismissDialog(I)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setOffMessage()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setPressed(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiDirectTts(Z)V

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiAdvancetts(Z)V

    :cond_9
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInOffloadDialog:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected saveConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method protected sendPickedAccessPoint(Lcom/android/settingslib/wifi/AccessPoint;)Z
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsFromLocation:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkId()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPickedApInfo(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return v3

    :cond_0
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsShouldSendResult:Z

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mLastUserPickedAp:Lcom/android/settingslib/wifi/AccessPoint;

    :cond_1
    const/4 v1, 0x0

    return v1

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSecPickerActivity:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPickedApInfo(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return v3
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method protected setFooterView(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method protected setOffMessage()V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->checkRestrictionAndShowEmptyView()Z

    move-result v6

    if-eqz v6, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const v6, 0x7f0b144e

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "wifi_scan_always_enabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_3

    :goto_0
    if-eqz v4, :cond_2

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSetupWizardWifiScreen:Z

    if-eqz v6, :cond_4

    :cond_2
    sget-object v6, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v5, v7, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v2, v6, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/ListAnimationController;->removeAll()V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateEmptyView()V

    :goto_2
    return-void

    :cond_3
    move v4, v5

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\n\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x7f0b1434

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Lcom/samsung/android/settings/wifi/WifiSettingsBase$10;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$10;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    invoke-static {v2, v1, v6}, Lcom/android/settings/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/settings/LinkifyUtils$OnClickListener;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto :goto_2
.end method

.method protected abstract setProgressBarVisible(Z)V
.end method

.method protected abstract showDialogForModify()V
.end method

.method protected abstract showDialogForRetry(Lcom/android/settingslib/wifi/AccessPoint;)V
.end method

.method protected abstract showDialogToDisplayInfo(Lcom/android/settingslib/wifi/AccessPoint;)V
.end method

.method protected startScan()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x88

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->forceScan()V

    return-void
.end method

.method protected startScanningSettings()V
    .locals 10

    const v3, 0x7f0b094e

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/location/ScanningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/android/settings/location/ScanningSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method protected startWifiAdvancedScreen()V
    .locals 10

    const v3, 0x7f0b0e82

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method protected startWifiConfigSettings()V
    .locals 10

    const v3, 0x7f0b149c

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public startWifiHelpScreen()V
    .locals 10

    const/4 v3, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Setting_ConfigTypeHelp"

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isUSA()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/samsung/android/settings/guide/WifiHelpPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0ed5

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.helphub"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    const-string/jumbo v0, "WifiSettingsBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onHelpMenuPressed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v0, v0, 0xa

    if-eq v0, v3, :cond_0

    iget v0, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v0, v0, 0xa

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.helphub.HELP"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "helphub:section"

    const-string/jumbo v1, "wifi"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v6

    :try_start_2
    invoke-virtual {v6}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_3
    iget v0, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v0, v0, 0xa

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.helphub.HELP"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "helphub:appid"

    const-string/jumbo v1, "wi_fi"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method protected submit(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mScrollTimer:J

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->forceScrollToTopOfList()V

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isNeedToReconnect()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->disconnect()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "VZW"

    sget-object v2, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->disconnect()V

    goto :goto_0
.end method

.method public updateActionBar()V
    .locals 14

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    const v11, 0x800015

    invoke-direct {v6, v9, v10, v11}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f040388

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v9

    const v10, 0x7f11091e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_1
    const v9, 0x7f11091e

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-eqz v9, :cond_2

    const-string/jumbo v9, "VZW"

    sget-object v10, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string/jumbo v11, "action_bar"

    const-string/jumbo v12, "id"

    const-string/jumbo v13, "android"

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    if-eqz v8, :cond_3

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_3
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v9, :cond_6

    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    const v10, 0x11600cb

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v7, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v3, v9, Landroid/content/res/Configuration;->fontScale:F

    const v9, 0x3f99999a    # 1.2f

    cmpl-float v9, v3, v9

    if-lez v9, :cond_4

    const v3, 0x3f99999a    # 1.2f

    :cond_4
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    const/high16 v10, 0x41700000    # 15.0f

    mul-float/2addr v10, v3

    const/4 v11, 0x1

    invoke-virtual {v9, v11, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    iget v9, v7, Landroid/util/TypedValue;->data:I

    if-eqz v9, :cond_d

    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_5

    sget-object v9, Lcom/android/internal/R$styleable;->View:[I

    const/4 v10, 0x0

    const v11, 0x10102d8

    const/4 v12, 0x0

    invoke-virtual {v1, v10, v9, v11, v12}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v9, 0xd

    const v10, 0x1080738

    invoke-virtual {v2, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBackgroundResId:I

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "show_button_background"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_e

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onShowButtonBackgroundChange(Z)V

    :cond_5
    :goto_2
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiDirectTts(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    new-instance v10, Lcom/samsung/android/settings/wifi/WifiSettingsBase$14;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$14;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    if-eqz v9, :cond_9

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-eqz v9, :cond_9

    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    const v10, 0x11600cb

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v7, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v3, v9, Landroid/content/res/Configuration;->fontScale:F

    const v9, 0x3f99999a    # 1.2f

    cmpl-float v9, v3, v9

    if-lez v9, :cond_7

    const v3, 0x3f99999a    # 1.2f

    :cond_7
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    const/high16 v10, 0x41700000    # 15.0f

    mul-float/2addr v10, v3

    const/4 v11, 0x1

    invoke-virtual {v9, v11, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    iget v9, v7, Landroid/util/TypedValue;->data:I

    if-eqz v9, :cond_f

    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_8

    sget-object v9, Lcom/android/internal/R$styleable;->View:[I

    const/4 v10, 0x0

    const v11, 0x10102d8

    const/4 v12, 0x0

    invoke-virtual {v1, v10, v9, v11, v12}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v9, 0xd

    const v10, 0x1080738

    invoke-virtual {v2, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBackgroundResId:I

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "show_button_background"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_10

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    const v10, 0x108073e

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_8
    :goto_4
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiAdvancetts(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    new-instance v10, Lcom/samsung/android/settings/wifi/WifiSettingsBase$15;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$15;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedWifiDirectEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_11

    :cond_a
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_12

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiDirectTts(Z)V

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiAdvancetts(Z)V

    :cond_b
    :goto_5
    return-void

    :cond_c
    const v9, 0x7f11091f

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_e
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onShowButtonBackgroundChange(Z)V

    goto/16 :goto_2

    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_10
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    iget v10, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBackgroundResId:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_4

    :cond_11
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiDirectTts(Z)V

    goto :goto_5

    :cond_12
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiDirectTts(Z)V

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiAdvancetts(Z)V

    goto :goto_5
.end method
