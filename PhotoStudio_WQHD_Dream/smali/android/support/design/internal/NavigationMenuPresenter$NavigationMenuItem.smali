.class Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NavigationMenuItem"
.end annotation


# instance fields
.field private final mMenuItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;

.field private final mPaddingBottom:I

.field private final mPaddingTop:I


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/view/menu/MenuItemImpl;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;->mMenuItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    iput p2, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;->mPaddingTop:I

    iput p3, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;->mPaddingBottom:I

    return-void
.end method

.method public static of(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    invoke-direct {v0, p0, v1, v1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;-><init>(Landroid/support/v7/internal/view/menu/MenuItemImpl;II)V

    return-object v0
.end method

.method public static separator(II)Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;
    .locals 2

    new-instance v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;-><init>(Landroid/support/v7/internal/view/menu/MenuItemImpl;II)V

    return-object v0
.end method


# virtual methods
.method public getMenuItem()Landroid/support/v7/internal/view/menu/MenuItemImpl;
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;->mMenuItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getPaddingBottom()I
    .locals 1

    iget v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    iget v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;->mPaddingTop:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;->mMenuItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;->mMenuItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;->mMenuItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSeparator()Z
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;->mMenuItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method