.class public Landroid/icu/util/CurrencyAmount;
.super Landroid/icu/util/Measure;
.source "CurrencyAmount.java"


# direct methods
.method public constructor <init>(DLandroid/icu/util/Currency;)V
    .locals 1

    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {p0, v0, p3}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Landroid/icu/util/Currency;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    return-void
.end method


# virtual methods
.method public getCurrency()Landroid/icu/util/Currency;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/util/CurrencyAmount;->getUnit()Landroid/icu/util/MeasureUnit;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Currency;

    return-object v0
.end method
