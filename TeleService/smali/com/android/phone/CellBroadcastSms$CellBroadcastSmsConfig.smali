.class final Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;
.super Ljava/lang/Object;
.source "CellBroadcastSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CellBroadcastSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CellBroadcastSmsConfig"
.end annotation


# static fields
.field private static mBSelected:[I

.field private static mConfigDataComplete:[I


# direct methods
.method static synthetic -wrap0()[I
    .locals 1

    invoke-static {}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->getCbSmsAllValues()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1()[I
    .locals 1

    invoke-static {}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->getCbSmsBselectedValues()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2()I
    .locals 1

    invoke-static {}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->getConfigDataLanguage()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(ZI)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V

    return-void
.end method

.method static synthetic -wrap4([I)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsConfig([I)V

    return-void
.end method

.method static synthetic -wrap5(I)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsNoOfStructs(I)V

    return-void
.end method

.method static synthetic -wrap6(ZI)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V

    return-void
.end method

.method static synthetic -wrap7(I)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteLanguage(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mBSelected:[I

    const/16 v0, 0x5e

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mConfigDataComplete:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCbSmsAllValues()[I
    .locals 1

    sget-object v0, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mConfigDataComplete:[I

    return-object v0
.end method

.method private static getCbSmsBselectedValues()[I
    .locals 1

    sget-object v0, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mBSelected:[I

    return-object v0
.end method

.method private static getConfigDataLanguage()I
    .locals 4

    const/4 v3, 0x1

    sget-object v1, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mConfigDataComplete:[I

    const/4 v2, 0x2

    aget v0, v1, v2

    if-lt v0, v3, :cond_0

    const/4 v1, 0x7

    if-le v0, v1, :cond_1

    :cond_0
    const-string/jumbo v1, "CellBroadcastSms"

    const-string/jumbo v2, "Error! Wrong language returned from RIL...defaulting to 1, english"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    return v0
.end method

.method private static setCbSmsBSelectedValue(ZI)V
    .locals 2

    sget-object v0, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mBSelected:[I

    array-length v0, v0

    if-ge p1, v0, :cond_1

    sget-object v1, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mBSelected:[I

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    aput v0, v1, p1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "CellBroadcastSms"

    const-string/jumbo v1, "Error! Invalid value position."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static setCbSmsConfig([I)V
    .locals 4

    if-nez p0, :cond_0

    const-string/jumbo v1, "CellBroadcastSms"

    const-string/jumbo v2, "Error! No cell broadcast service categories returned."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    aget v1, p0, v1

    const/16 v2, 0x5e

    if-le v1, v2, :cond_1

    const-string/jumbo v1, "CellBroadcastSms"

    const-string/jumbo v2, "Error! Wrong number of service categories returned from RIL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mBSelected:[I

    aget v2, p0, v0

    add-int/lit8 v3, v0, 0x2

    aget v3, p0, v3

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_2
    sput-object p0, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mConfigDataComplete:[I

    return-void
.end method

.method private static setCbSmsNoOfStructs(I)V
    .locals 2

    sget-object v0, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mConfigDataComplete:[I

    const/4 v1, 0x0

    aput p0, v0, v1

    return-void
.end method

.method private static setConfigDataCompleteBSelected(ZI)V
    .locals 4

    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mConfigDataComplete:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mConfigDataComplete:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_2

    sget-object v2, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mConfigDataComplete:[I

    add-int/lit8 v3, v0, 0x2

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :goto_1
    aput v1, v2, v3

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method private static setConfigDataCompleteLanguage(I)V
    .locals 2

    const/4 v0, 0x2

    :goto_0
    sget-object v1, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mConfigDataComplete:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mConfigDataComplete:[I

    aput p0, v1, v0

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    return-void
.end method
