.class public Lcom/samsung/android/app/SemColorPickerDialogFragment;
.super Landroid/app/DialogFragment;
.source "SemColorPickerDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/SemColorPickerDialogFragment$OnColorSetListener;
    }
.end annotation


# static fields
.field private static final KEY_CURRENT_COLOR:Ljava/lang/String; = "current_color"

.field private static final KEY_RECENTLY_USED_COLORS:Ljava/lang/String; = "recently_used_colors"

.field static final TAG:Ljava/lang/String; = "SemColorPickerDialogFragment"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

.field private mColorPickerDialogView:Landroid/view/View;

.field private mCurrentColor:Ljava/lang/Integer;

.field private mNewColor:Ljava/lang/Integer;

.field private mOnColorChangedListener:Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

.field private mOnColorSetListener:Lcom/samsung/android/app/SemColorPickerDialogFragment$OnColorSetListener;

.field private mRecentlyUsedColors:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mNewColor:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mRecentlyUsedColors:[I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/SemColorPickerDialogFragment$OnColorSetListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mNewColor:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mRecentlyUsedColors:[I

    iput-object p1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mOnColorSetListener:Lcom/samsung/android/app/SemColorPickerDialogFragment$OnColorSetListener;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/SemColorPickerDialogFragment$OnColorSetListener;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/SemColorPickerDialogFragment;-><init>(Lcom/samsung/android/app/SemColorPickerDialogFragment$OnColorSetListener;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/SemColorPickerDialogFragment$OnColorSetListener;I[I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/SemColorPickerDialogFragment;-><init>(Lcom/samsung/android/app/SemColorPickerDialogFragment$OnColorSetListener;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mRecentlyUsedColors:[I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/SemColorPickerDialogFragment$OnColorSetListener;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/SemColorPickerDialogFragment;-><init>(Lcom/samsung/android/app/SemColorPickerDialogFragment$OnColorSetListener;)V

    iput-object p2, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mRecentlyUsedColors:[I

    return-void
.end method


# virtual methods
.method public getColorPicker()Lcom/samsung/android/widget/SemColorPicker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemColorPicker;->saveSelectedColor()V

    iget-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mOnColorSetListener:Lcom/samsung/android/app/SemColorPickerDialogFragment$OnColorSetListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemColorPicker;->isUserInputValid()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mOnColorSetListener:Lcom/samsung/android/app/SemColorPickerDialogFragment$OnColorSetListener;

    iget-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/SemColorPickerDialogFragment$OnColorSetListener;->onColorSet(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mOnColorSetListener:Lcom/samsung/android/app/SemColorPickerDialogFragment$OnColorSetListener;

    iget-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemColorPicker;->getRecentColorInfo()Lcom/samsung/android/widget/SemRecentColorInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemRecentColorInfo;->getSelectedColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/SemColorPickerDialogFragment$OnColorSetListener;->onColorSet(I)V

    goto :goto_0

    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "recently_used_colors"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mRecentlyUsedColors:[I

    const-string/jumbo v0, "current_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x10900fa

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mColorPickerDialogView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mColorPickerDialogView:Landroid/view/View;

    const v2, 0x10204a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/widget/SemColorPicker;

    iput-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    iget-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemColorPicker;->getRecentColorInfo()Lcom/samsung/android/widget/SemRecentColorInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemRecentColorInfo;->setCurrentColor(Ljava/lang/Integer;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mNewColor:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemColorPicker;->getRecentColorInfo()Lcom/samsung/android/widget/SemRecentColorInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mNewColor:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemRecentColorInfo;->setNewColor(Ljava/lang/Integer;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mRecentlyUsedColors:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemColorPicker;->getRecentColorInfo()Lcom/samsung/android/widget/SemRecentColorInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mRecentlyUsedColors:[I

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemRecentColorInfo;->saveRecentColorInfo([I)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemColorPicker;->updateRecentColorLayout()V

    iget-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    iget-object v2, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mOnColorChangedListener:Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemColorPicker;->setOnColorChangedListener(Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1030132

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mColorPickerDialogView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x10405b8

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemColorPicker;->getRecentColorInfo()Lcom/samsung/android/widget/SemRecentColorInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemColorPicker;->getRecentColorInfo()Lcom/samsung/android/widget/SemRecentColorInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemRecentColorInfo;->getSelectedColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemRecentColorInfo;->setCurrentColor(Ljava/lang/Integer;)V

    const-string/jumbo v0, "recently_used_colors"

    iget-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mRecentlyUsedColors:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    const-string/jumbo v0, "current_color"

    iget-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public setNewColor(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mNewColor:Ljava/lang/Integer;

    return-void
.end method

.method public setOnColorChangedListener(Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mOnColorChangedListener:Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

    return-void
.end method
