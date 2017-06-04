.class public Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;
.super Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;
.source "SettingAboutGameTools.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sec/game/gamecast/common/stub/StubListener;


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCurrentOrientation:I

.field mCurrentVersion:Landroid/widget/TextView;

.field mIcon:Landroid/widget/ImageView;

.field mOpenSourceLicense:Landroid/widget/TextView;

.field mOpenSourceLicenseClickable:Z

.field mPrivacyPolicy:Landroid/widget/TextView;

.field mPrivacyPolicyClickable:Z

.field mTermsAndConditions:Landroid/widget/TextView;

.field mTermsAndConditionsClickable:Z

.field mTitleName:Landroid/widget/TextView;

.field private mUpdateButton:Landroid/widget/Button;

.field mUpdateInfoText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "SettingAboutGameTools: "

    sput-object v0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientation:I

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mTermsAndConditionsClickable:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mOpenSourceLicenseClickable:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mPrivacyPolicyClickable:Z

    return-void
.end method

.method private initialize()V
    .locals 15

    const v14, 0x7f060048

    const/16 v9, 0x8

    const v13, 0x7f0a00cb

    const v12, 0x7f0603c6

    const/4 v11, 0x0

    iget v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mRootView:Landroid/view/View;

    const v8, 0x7f0b0008

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mRootView:Landroid/view/View;

    const v8, 0x7f0b0009

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    const v8, 0x7f0b00d7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v1, v7, Landroid/util/DisplayMetrics;->density:F

    iget v7, v5, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    div-float/2addr v7, v1

    float-to-int v6, v7

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->isEnabledMobileKeyboard(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit16 v6, v6, 0xca

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v7

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v8

    add-int/lit16 v9, v6, -0xd9

    int-to-float v9, v9

    mul-float/2addr v9, v1

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v9

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v10

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    const v8, 0x7f0b00cc

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mIcon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f020058

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    const v8, 0x7f0b00cd

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mTitleName:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mTitleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f060298

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    const v8, 0x7f0b00d1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mUpdateButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->setUpdateButton()V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    const v8, 0x7f0b00cf

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentVersion:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentVersion:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/game/gamecast/common/utility/VersionUtil;->getNowVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    const v8, 0x7f0b00d2

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mTermsAndConditions:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mTermsAndConditions:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "<u>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v14}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "</u>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mTermsAndConditions:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mTermsAndConditions:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v14}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v12}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    const v8, 0x7f0b00d4

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mPrivacyPolicy:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mPrivacyPolicy:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "<u>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f06026f

    invoke-virtual {p0, v9}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "</u>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mPrivacyPolicy:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mPrivacyPolicy:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f06026f

    invoke-virtual {p0, v9}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v12}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    const v8, 0x7f0b00d6

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mOpenSourceLicense:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mOpenSourceLicense:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "<u>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f0601d0

    invoke-virtual {p0, v9}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "</u>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mOpenSourceLicense:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mOpenSourceLicense:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f0601d0

    invoke-virtual {p0, v9}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v12}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "font_size"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/16 v7, 0x9

    if-le v3, v7, :cond_1

    const/4 v3, 0x6

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    rsub-int/lit8 v8, v3, 0x9

    int-to-double v8, v8

    invoke-static {v7, v8, v9}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v4

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    const v8, 0x7f0b00d3

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v11, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    const v8, 0x7f0b00d5

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v11, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mRootView:Landroid/view/View;

    const v8, 0x7f0b0009

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mRootView:Landroid/view/View;

    const v8, 0x7f0b0008

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private setUpdateButton()V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mUpdateButton:Landroid/widget/Button;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    const v4, 0x7f0b00d0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mUpdateInfoText:Landroid/widget/TextView;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/game/gamecast/common/model/SettingData;->getToolsStubServerVersion(Landroid/content/Context;)I

    move-result v2

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    :cond_1
    sget-object v3, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sVer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mVer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-le v2, v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mUpdateInfoText:Landroid/widget/TextView;

    const v4, 0x7f0600be

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mUpdateButton:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mUpdateInfoText:Landroid/widget/TextView;

    const v4, 0x7f0600bf

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method bindListener()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mTermsAndConditions:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mOpenSourceLicense:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mPrivacyPolicy:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const-wide/16 v4, 0x12c

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->saveCurrentFocus(Landroid/view/View;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mTermsAndConditionsClickable:Z

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mTermsAndConditionsClickable:Z

    new-instance v2, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools$1;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_2
    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mPrivacyPolicyClickable:Z

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mPrivacyPolicyClickable:Z

    new-instance v2, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools$2;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_3
    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mOpenSourceLicenseClickable:Z

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mOpenSourceLicenseClickable:Z

    new-instance v2, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools$3;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_4
    const-string/jumbo v2, "903"

    const-string/jumbo v3, "9031"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.game.gametools"

    invoke-static {v2}, Lcom/sec/game/gamecast/common/stub/StubUtil;->makeDeepLinkIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b00d1
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientation:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->saveCurrentFocus(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->initialize()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->bindListener()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->loadPrevFocus()Z

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientation:I

    const v0, 0x7f030031

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mRootView:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->initialize()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->bindListener()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mRootView:Landroid/view/View;

    goto :goto_0
.end method

.method public onDownloadApkFail()V
    .locals 2

    sget-object v0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDownloadApkFail: "

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadApkSuccess(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDownloadApkSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetDownloadUrlFail(Lcom/sec/game/gamecast/common/stub/StubData;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onGetDownloadUrlFail: "

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetDownloadUrlSuccess(Lcom/sec/game/gamecast/common/stub/StubData;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onGetDownloadUrlSuccess: "

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNoMatchingApplication(Lcom/sec/game/gamecast/common/stub/StubData;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onNoMatchingApplication: "

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f06028d

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f060298

    invoke-virtual {p0, v5}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "903"

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->loadPrevFocus()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mOpenSourceLicense:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/sec/game/gamecast/common/stub/StubUtil;->checkUpdate(Lcom/sec/game/gamecast/common/stub/StubListener;Landroid/content/Context;Z)V

    return-void
.end method

.method public onUpdateAvailable(Lcom/sec/game/gamecast/common/stub/StubData;)V
    .locals 3

    sget-object v1, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onUpdateAvailable: "

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/game/gamecast/common/stub/StubData;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.game.gamehome"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/game/gamecast/common/stub/StubData;->getVersionCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/model/SettingData;->setLauncherStubServerVersion(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "com.samsung.android.game.gametools"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/game/gamecast/common/stub/StubData;->getVersionCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/model/SettingData;->setToolsStubServerVersion(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->setUpdateButton()V

    goto :goto_0
.end method

.method public onUpdateCheckFail(Lcom/sec/game/gamecast/common/stub/StubData;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUpdateCheckFail: "

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUpdateNotNecessary(Lcom/sec/game/gamecast/common/stub/StubData;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUpdateNotNecessary: "

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method