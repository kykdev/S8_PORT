.class Landroid/text/HtmlToSpannedConverter$Background;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/HtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Background"
.end annotation


# instance fields
.field private mBackgroundColor:I


# direct methods
.method static synthetic -get0(Landroid/text/HtmlToSpannedConverter$Background;)I
    .locals 1

    iget v0, p0, Landroid/text/HtmlToSpannedConverter$Background;->mBackgroundColor:I

    return v0
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/text/HtmlToSpannedConverter$Background;->mBackgroundColor:I

    return-void
.end method
