.class public final enum Landroid/icu/util/TimeZone$SystemTimeZoneType;
.super Ljava/lang/Enum;
.source "TimeZone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/TimeZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SystemTimeZoneType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/util/TimeZone$SystemTimeZoneType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/util/TimeZone$SystemTimeZoneType;

.field public static final enum ANY:Landroid/icu/util/TimeZone$SystemTimeZoneType;

.field public static final enum CANONICAL:Landroid/icu/util/TimeZone$SystemTimeZoneType;

.field public static final enum CANONICAL_LOCATION:Landroid/icu/util/TimeZone$SystemTimeZoneType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;

    const-string/jumbo v1, "ANY"

    invoke-direct {v0, v1, v2}, Landroid/icu/util/TimeZone$SystemTimeZoneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ANY:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    new-instance v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;

    const-string/jumbo v1, "CANONICAL"

    invoke-direct {v0, v1, v3}, Landroid/icu/util/TimeZone$SystemTimeZoneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    new-instance v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;

    const-string/jumbo v1, "CANONICAL_LOCATION"

    invoke-direct {v0, v1, v4}, Landroid/icu/util/TimeZone$SystemTimeZoneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL_LOCATION:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/icu/util/TimeZone$SystemTimeZoneType;

    sget-object v1, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ANY:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL_LOCATION:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    aput-object v1, v0, v4

    sput-object v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;->$VALUES:[Landroid/icu/util/TimeZone$SystemTimeZoneType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/util/TimeZone$SystemTimeZoneType;
    .locals 1

    const-class v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;

    return-object v0
.end method

.method public static values()[Landroid/icu/util/TimeZone$SystemTimeZoneType;
    .locals 1

    sget-object v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;->$VALUES:[Landroid/icu/util/TimeZone$SystemTimeZoneType;

    return-object v0
.end method
