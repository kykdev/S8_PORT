.class Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartEnterTransitionListener"
.end annotation


# instance fields
.field private final mIsBack:Z

.field private mNumPostponed:I

.field private final mRecord:Landroid/support/v4/app/BackStackRecord;


# direct methods
.method constructor <init>(Landroid/support/v4/app/BackStackRecord;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;

    return-void
.end method

.method static synthetic access$300(Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    return v0
.end method

.method static synthetic access$400(Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroid/support/v4/app/BackStackRecord;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;

    return-object v0
.end method


# virtual methods
.method public cancelTransaction()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;

    iget-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    invoke-static {v0, v1, v2, v3, v3}, Landroid/support/v4/app/FragmentManagerImpl;->access$600(Landroid/support/v4/app/FragmentManagerImpl;Landroid/support/v4/app/BackStackRecord;ZZZ)V

    return-void
.end method

.method public completeTransaction()V
    .locals 10

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget v7, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-lez v7, :cond_1

    move v0, v5

    :goto_0
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;

    iget-object v3, v7, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v7, v3, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    iget-object v7, v3, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/support/v4/app/Fragment;->setOnStartEnterTransitionListener(Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;)V

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isPostponed()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->startPostponedEnterTransition()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;

    iget-boolean v9, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    if-nez v0, :cond_3

    move v6, v5

    :cond_3
    invoke-static {v7, v8, v9, v6, v5}, Landroid/support/v4/app/FragmentManagerImpl;->access$600(Landroid/support/v4/app/FragmentManagerImpl;Landroid/support/v4/app/BackStackRecord;ZZZ)V

    return-void
.end method

.method public isReady()Z
    .locals 1

    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStartEnterTransition()V
    .locals 1

    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-static {v0}, Landroid/support/v4/app/FragmentManagerImpl;->access$500(Landroid/support/v4/app/FragmentManagerImpl;)V

    goto :goto_0
.end method

.method public startListening()V
    .locals 1

    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    return-void
.end method
