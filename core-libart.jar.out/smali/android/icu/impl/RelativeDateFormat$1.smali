.class Landroid/icu/impl/RelativeDateFormat$1;
.super Ljava/lang/Object;
.source "RelativeDateFormat.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/impl/RelativeDateFormat;->loadDates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/icu/impl/RelativeDateFormat$URelativeString;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/impl/RelativeDateFormat;


# direct methods
.method constructor <init>(Landroid/icu/impl/RelativeDateFormat;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/impl/RelativeDateFormat$1;->this$0:Landroid/icu/impl/RelativeDateFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/icu/impl/RelativeDateFormat$URelativeString;Landroid/icu/impl/RelativeDateFormat$URelativeString;)I
    .locals 2

    iget v0, p1, Landroid/icu/impl/RelativeDateFormat$URelativeString;->offset:I

    iget v1, p2, Landroid/icu/impl/RelativeDateFormat$URelativeString;->offset:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p1, Landroid/icu/impl/RelativeDateFormat$URelativeString;->offset:I

    iget v1, p2, Landroid/icu/impl/RelativeDateFormat$URelativeString;->offset:I

    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/icu/impl/RelativeDateFormat$URelativeString;

    check-cast p2, Landroid/icu/impl/RelativeDateFormat$URelativeString;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/RelativeDateFormat$1;->compare(Landroid/icu/impl/RelativeDateFormat$URelativeString;Landroid/icu/impl/RelativeDateFormat$URelativeString;)I

    move-result v0

    return v0
.end method
