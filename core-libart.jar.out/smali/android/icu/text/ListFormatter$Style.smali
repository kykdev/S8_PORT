.class public final enum Landroid/icu/text/ListFormatter$Style;
.super Ljava/lang/Enum;
.source "ListFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/ListFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/ListFormatter$Style;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/ListFormatter$Style;

.field public static final enum DURATION:Landroid/icu/text/ListFormatter$Style;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum DURATION_NARROW:Landroid/icu/text/ListFormatter$Style;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum DURATION_SHORT:Landroid/icu/text/ListFormatter$Style;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum STANDARD:Landroid/icu/text/ListFormatter$Style;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/icu/text/ListFormatter$Style;

    const-string/jumbo v1, "STANDARD"

    const-string/jumbo v2, "standard"

    invoke-direct {v0, v1, v3, v2}, Landroid/icu/text/ListFormatter$Style;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/ListFormatter$Style;->STANDARD:Landroid/icu/text/ListFormatter$Style;

    new-instance v0, Landroid/icu/text/ListFormatter$Style;

    const-string/jumbo v1, "DURATION"

    const-string/jumbo v2, "unit"

    invoke-direct {v0, v1, v4, v2}, Landroid/icu/text/ListFormatter$Style;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/ListFormatter$Style;->DURATION:Landroid/icu/text/ListFormatter$Style;

    new-instance v0, Landroid/icu/text/ListFormatter$Style;

    const-string/jumbo v1, "DURATION_SHORT"

    const-string/jumbo v2, "unit-short"

    invoke-direct {v0, v1, v5, v2}, Landroid/icu/text/ListFormatter$Style;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/ListFormatter$Style;->DURATION_SHORT:Landroid/icu/text/ListFormatter$Style;

    new-instance v0, Landroid/icu/text/ListFormatter$Style;

    const-string/jumbo v1, "DURATION_NARROW"

    const-string/jumbo v2, "unit-narrow"

    invoke-direct {v0, v1, v6, v2}, Landroid/icu/text/ListFormatter$Style;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/ListFormatter$Style;->DURATION_NARROW:Landroid/icu/text/ListFormatter$Style;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/icu/text/ListFormatter$Style;

    sget-object v1, Landroid/icu/text/ListFormatter$Style;->STANDARD:Landroid/icu/text/ListFormatter$Style;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/ListFormatter$Style;->DURATION:Landroid/icu/text/ListFormatter$Style;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/text/ListFormatter$Style;->DURATION_SHORT:Landroid/icu/text/ListFormatter$Style;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/text/ListFormatter$Style;->DURATION_NARROW:Landroid/icu/text/ListFormatter$Style;

    aput-object v1, v0, v6

    sput-object v0, Landroid/icu/text/ListFormatter$Style;->$VALUES:[Landroid/icu/text/ListFormatter$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroid/icu/text/ListFormatter$Style;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/ListFormatter$Style;
    .locals 1

    const-class v0, Landroid/icu/text/ListFormatter$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/ListFormatter$Style;

    return-object v0
.end method

.method public static values()[Landroid/icu/text/ListFormatter$Style;
    .locals 1

    sget-object v0, Landroid/icu/text/ListFormatter$Style;->$VALUES:[Landroid/icu/text/ListFormatter$Style;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/ListFormatter$Style;->name:Ljava/lang/String;

    return-object v0
.end method
