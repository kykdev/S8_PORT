.class final Landroid/icu/impl/ICUResourceBundleImpl$ResourceBinary;
.super Landroid/icu/impl/ICUResourceBundleImpl;
.source "ICUResourceBundleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourceBinary"
.end annotation


# instance fields
.field private resource:I


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleImpl;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;)V

    iput p3, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceBinary;->resource:I

    return-void
.end method


# virtual methods
.method public getBinary()Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceBinary;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceBinary;->resource:I

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getBinary(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getBinary([B)[B
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceBinary;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceBinary;->resource:I

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getBinary(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
