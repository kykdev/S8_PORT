.class public Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
.super Ljava/lang/Object;
.source "TimeZoneGenericNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneGenericNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenericMatchInfo"
.end annotation


# instance fields
.field matchLength:I

.field nameType:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

.field timeType:Landroid/icu/text/TimeZoneFormat$TimeType;

.field tzID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->timeType:Landroid/icu/text/TimeZoneFormat$TimeType;

    return-void
.end method


# virtual methods
.method public matchLength()I
    .locals 1

    iget v0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength:I

    return v0
.end method

.method public nameType()Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->nameType:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    return-object v0
.end method

.method public timeType()Landroid/icu/text/TimeZoneFormat$TimeType;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->timeType:Landroid/icu/text/TimeZoneFormat$TimeType;

    return-object v0
.end method

.method public tzID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->tzID:Ljava/lang/String;

    return-object v0
.end method
