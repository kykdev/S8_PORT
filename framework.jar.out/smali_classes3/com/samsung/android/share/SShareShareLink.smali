.class public Lcom/samsung/android/share/SShareShareLink;
.super Ljava/lang/Object;
.source "SShareShareLink.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SShareShareLink"

.field private static mEasySignUpCertificated:Z


# instance fields
.field private defaultTextSize:I

.field private mActivity:Landroid/app/Activity;

.field private mBixby:Lcom/samsung/android/share/SShareBixby;

.field private mContext:Landroid/content/Context;

.field private mExtraIntentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mFeature:Lcom/samsung/android/share/SShareCommon;

.field private mIntent:Landroid/content/Intent;

.field private mLogging:Lcom/samsung/android/share/SShareLogging;

.field private mOrigIntent:Landroid/content/Intent;

.field private mShareLinkEnabled:Z

.field private mSimpleSharingDri:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/share/SShareShareLink;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareShareLink;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/share/SShareShareLink;->mEasySignUpCertificated:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lcom/samsung/android/share/SShareCommon;Landroid/content/Intent;Ljava/util/List;Lcom/samsung/android/share/SShareBixby;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Context;",
            "Lcom/samsung/android/share/SShareCommon;",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Lcom/samsung/android/share/SShareBixby;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/share/SShareShareLink;->mShareLinkEnabled:Z

    iput-object p1, p0, Lcom/samsung/android/share/SShareShareLink;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/share/SShareShareLink;->mFeature:Lcom/samsung/android/share/SShareCommon;

    iput-object p4, p0, Lcom/samsung/android/share/SShareShareLink;->mOrigIntent:Landroid/content/Intent;

    iput-object p5, p0, Lcom/samsung/android/share/SShareShareLink;->mExtraIntentList:Ljava/util/List;

    iput-object p6, p0, Lcom/samsung/android/share/SShareShareLink;->mBixby:Lcom/samsung/android/share/SShareBixby;

    invoke-direct {p0}, Lcom/samsung/android/share/SShareShareLink;->checkEasySignUpCertificated()V

    invoke-direct {p0}, Lcom/samsung/android/share/SShareShareLink;->checkShareLinkEnabled()V

    iget-object v0, p0, Lcom/samsung/android/share/SShareShareLink;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareCommon;->getSupportLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/share/SShareLogging;

    iget-object v1, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/share/SShareShareLink;->mOrigIntent:Landroid/content/Intent;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/share/SShareLogging;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/samsung/android/share/SShareShareLink;->mLogging:Lcom/samsung/android/share/SShareLogging;

    :cond_0
    return-void
.end method

.method private checkEasySignUpCertificated()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/share/SShareSignUpManager;->isJoined(Landroid/content/Context;I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareShareLink;->mEasySignUpCertificated:Z

    const-string/jumbo v0, "SShareShareLink"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isJoined="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/share/SShareShareLink;->mEasySignUpCertificated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private checkMaxFontScale(Landroid/widget/TextView;I)V
    .locals 4

    const v3, 0x3f99999a    # 1.2f

    iget-object v2, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v2, v0, v3

    if-lez v2, :cond_0

    int-to-float v2, p2

    div-float v1, v2, v0

    mul-float v2, v1, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method private checkShareLinkEnabled()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/share/SShareShareLink;->mShareLinkEnabled:Z

    return-void
.end method


# virtual methods
.method public getShareLinkIntent()Landroid/content/Intent;
    .locals 6

    const/4 v5, 0x0

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mOrigIntent:Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.app.simplesharing.action.REQUEST_LINK_SEND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mIntent:Landroid/content/Intent;

    const/high16 v5, 0x4000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mIntent:Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.extra.INTENT"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mExtraIntentList:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Landroid/content/Intent;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    aput-object v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mIntent:Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mIntent:Landroid/content/Intent;

    return-object v4
.end method

.method public isEasySignUpCertificated()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/share/SShareShareLink;->mEasySignUpCertificated:Z

    return v0
.end method

.method public isShareLinkEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/share/SShareShareLink;->mShareLinkEnabled:Z

    return v0
.end method

.method public setShareLinkDri(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "SShareShareLink"

    const-string/jumbo v1, "setShareLinkDri : dri is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/share/SShareShareLink;->mSimpleSharingDri:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-void
.end method

.method public setShareLinkView()V
    .locals 29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/share/SShareShareLink;->mActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    const v27, 0x10204df

    invoke-virtual/range {v26 .. v27}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_2

    new-instance v26, Lcom/samsung/android/share/SShareShareLink$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/share/SShareShareLink$1;-><init>(Lcom/samsung/android/share/SShareShareLink;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v21, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    const-string/jumbo v27, "com.samsung.android.app.simplesharing"

    const/16 v28, 0x80

    invoke-virtual/range {v26 .. v28}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    new-instance v20, Ldalvik/system/PathClassLoader;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v26, "com.samsung.android.app.simplesharing.sharepanel.SharePanelComponent"

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string/jumbo v27, "com.samsung.android.app.simplesharing"

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    const-class v26, Landroid/content/Context;

    const/16 v27, 0x0

    aput-object v26, v19, v27

    const-string/jumbo v26, "getIcon"

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    const-string/jumbo v26, "getTitle"

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    const-string/jumbo v26, "getDescription"

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v17

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v5, v26, v27

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v14, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v5, v26, v27

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    check-cast v0, Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v5, v26, v27

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    check-cast v0, Ljava/lang/String;

    move-object/from16 v21, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const v26, 0x1020014

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x1050294

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/share/SShareShareLink;->defaultTextSize:I

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/share/SShareShareLink;->defaultTextSize:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/share/SShareShareLink;->checkMaxFontScale(Landroid/widget/TextView;I)V

    if-eqz v23, :cond_0

    invoke-static/range {v23 .. v23}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/share/SShareShareLink;->mFeature:Lcom/samsung/android/share/SShareCommon;

    move-object/from16 v26, v0

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/share/SShareCommon;->setShareLinkReflectionTitle(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v26, "SShareShareLink"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "reflectionTitle "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v26, 0x1020015

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x1050295

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/share/SShareShareLink;->defaultTextSize:I

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/share/SShareShareLink;->defaultTextSize:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v6, v1}, Lcom/samsung/android/share/SShareShareLink;->checkMaxFontScale(Landroid/widget/TextView;I)V

    if-eqz v21, :cond_1

    invoke-static/range {v21 .. v21}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v26, "SShareShareLink"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "reflectionDescription "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const v26, 0x10204e0

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    if-eqz v16, :cond_2

    if-eqz v22, :cond_2

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :catch_3
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :catch_4
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :catch_5
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public shareLinkItemClick()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/share/SShareShareLink;->mLogging:Lcom/samsung/android/share/SShareLogging;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/share/SShareShareLink;->mLogging:Lcom/samsung/android/share/SShareLogging;

    const-string/jumbo v2, "SLNK"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/share/SShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/share/SShareShareLink;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/internal/app/ResolverActivity;

    iget-object v2, p0, Lcom/samsung/android/share/SShareShareLink;->mSimpleSharingDri:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SShareShareLink"

    const-string/jumbo v2, "shareLinkItemClick : startActivity failed!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public shareLinkTipClick()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.app.simplesharing.intent.ACTION_VIEW_TIP_VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/share/SShareShareLink;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SShareShareLink"

    const-string/jumbo v3, "shareLinkTipClick : startActivity failed!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
