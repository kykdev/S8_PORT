.class public Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;
.super Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonFrame;
.source "NullButton.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;


# instance fields
.field private mCurrentPos:Landroid/graphics/Rect;

.field private mLeftBar:Landroid/widget/LinearLayout;

.field private mLeftButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

.field private mMoveToPos:Landroid/graphics/Rect;

.field private mRightButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonFrame;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mLeftButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mRightButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mCurrentPos:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mMoveToPos:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mLeftBar:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public configurationChanged()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonFrame;->configurationChanged()V

    return-void
.end method

.method public copyButtonsNPosition(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V
    .locals 1

    invoke-interface {p1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->getLeftButton()Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->setLeftButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    invoke-interface {p1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->getRightButton()Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->setRightButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V

    invoke-interface {p1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->getCurrentPosition()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->setCurrentPosition(Landroid/graphics/Rect;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mCurrentPos:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mMoveToPos:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mLeftButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mRightButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    invoke-super {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonFrame;->destroy()V

    return-void
.end method

.method public getCurrentPosition()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mCurrentPos:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getLeftButton()Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mLeftButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    return-object v0
.end method

.method public getRightButton()Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mRightButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    return-object v0
.end method

.method public initButton(ILandroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonFrame;->initButton(ILandroid/graphics/Bitmap;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mCurrentPos:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mMoveToPos:Landroid/graphics/Rect;

    const v0, 0x7f0e00d9

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mLeftBar:Landroid/widget/LinearLayout;

    return-void
.end method

.method public moveToLeft()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mLeftButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mMoveToPos:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mLeftButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    invoke-interface {v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->getCurrentPosition()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public moveToRight()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mRightButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mMoveToPos:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mRightButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    invoke-interface {v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;->getCurrentPosition()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mCurrentPos:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->setLeft(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mCurrentPos:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->setTop(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mCurrentPos:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->setRight(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mCurrentPos:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->setBottom(I)V

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonFrame;->onLayout(ZIIII)V

    return-void
.end method

.method public reloadLayout()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/DefaultButtonFrame;->init()V

    return-void
.end method

.method public runningAnimation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCurrentPosition(Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mCurrentPos:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setLeftBarColor_Move(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mLeftBar:Landroid/widget/LinearLayout;

    const v1, 0x7f020277

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public setLeftBarColor_Up()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mLeftBar:Landroid/widget/LinearLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public setLeftButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mLeftButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    return-void
.end method

.method public setMovePosition(Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mMoveToPos:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setRightButton(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mRightButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButtonInterface;

    return-void
.end method

.method public startAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mMoveToPos:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->setLeft(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mMoveToPos:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->setTop(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mMoveToPos:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->setRight(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mMoveToPos:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->setBottom(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mCurrentPos:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/NullButton;->mMoveToPos:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method