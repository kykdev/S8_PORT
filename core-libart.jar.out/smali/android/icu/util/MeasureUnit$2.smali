.class final Landroid/icu/util/MeasureUnit$2;
.super Ljava/lang/Object;
.source "MeasureUnit.java"

# interfaces
.implements Landroid/icu/util/MeasureUnit$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/MeasureUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/MeasureUnit;
    .locals 1

    new-instance v0, Landroid/icu/util/Currency;

    invoke-direct {v0, p2}, Landroid/icu/util/Currency;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
