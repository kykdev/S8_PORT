.class final Landroid/text/util/Linkify$5;
.super Ljava/lang/Object;
.source "Linkify.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/text/util/Linkify;->pruneOverlaps(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/text/util/LinkSpec;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Landroid/text/util/LinkSpec;Landroid/text/util/LinkSpec;)I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    iget v0, p1, Landroid/text/util/LinkSpec;->start:I

    iget v1, p2, Landroid/text/util/LinkSpec;->start:I

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p1, Landroid/text/util/LinkSpec;->start:I

    iget v1, p2, Landroid/text/util/LinkSpec;->start:I

    if-le v0, v1, :cond_1

    return v3

    :cond_1
    iget v0, p1, Landroid/text/util/LinkSpec;->end:I

    iget v1, p2, Landroid/text/util/LinkSpec;->end:I

    if-ge v0, v1, :cond_2

    return v3

    :cond_2
    iget v0, p1, Landroid/text/util/LinkSpec;->end:I

    iget v1, p2, Landroid/text/util/LinkSpec;->end:I

    if-le v0, v1, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/text/util/LinkSpec;

    check-cast p2, Landroid/text/util/LinkSpec;

    invoke-virtual {p0, p1, p2}, Landroid/text/util/Linkify$5;->compare(Landroid/text/util/LinkSpec;Landroid/text/util/LinkSpec;)I

    move-result v0

    return v0
.end method
