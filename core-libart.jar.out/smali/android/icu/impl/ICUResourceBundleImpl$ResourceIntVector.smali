.class final Landroid/icu/impl/ICUResourceBundleImpl$ResourceIntVector;
.super Landroid/icu/impl/ICUResourceBundleImpl;
.source "ICUResourceBundleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourceIntVector"
.end annotation


# instance fields
.field private resource:I


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleImpl;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;)V

    iput p3, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceIntVector;->resource:I

    return-void
.end method


# virtual methods
.method public getIntVector()[I
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceIntVector;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceIntVector;->resource:I

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getIntVector(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method
