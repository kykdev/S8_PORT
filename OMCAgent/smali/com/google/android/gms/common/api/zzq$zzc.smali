.class Lcom/google/android/gms/common/api/zzq$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/zzq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzc"
.end annotation


# instance fields
.field private final zzaaS:I

.field private final zzaaT:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic zzaaW:Lcom/google/android/gms/common/api/zzq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/zzq;ILcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/zzq$zzc;->zzaaW:Lcom/google/android/gms/common/api/zzq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/common/api/zzq$zzc;->zzaaS:I

    iput-object p3, p0, Lcom/google/android/gms/common/api/zzq$zzc;->zzaaT:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzq$zzc;->zzaaT:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzq$zzc;->zzaaW:Lcom/google/android/gms/common/api/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzq;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzq$zzc;->zzaaW:Lcom/google/android/gms/common/api/zzq;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzq$zzc;->zzaaT:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v2, p0, Lcom/google/android/gms/common/api/zzq$zzc;->zzaaW:Lcom/google/android/gms/common/api/zzq;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/zzq;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzq$zzc;->zzaaW:Lcom/google/android/gms/common/api/zzq;

    invoke-static {v0}, Lcom/google/android/gms/common/api/zzq;->zza(Lcom/google/android/gms/common/api/zzq;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzq$zzc;->zzaaT:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isUserRecoverableError(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzq$zzc;->zzaaT:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzq$zzc;->zzaaW:Lcom/google/android/gms/common/api/zzq;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/zzq;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/zzq$zzc;->zzaaW:Lcom/google/android/gms/common/api/zzq;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/gms/common/api/zzq$zzc;->zzaaW:Lcom/google/android/gms/common/api/zzq;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->showErrorDialogFragment(ILandroid/app/Activity;Landroid/support/v4/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzq$zzc;->zzaaW:Lcom/google/android/gms/common/api/zzq;

    iget v1, p0, Lcom/google/android/gms/common/api/zzq$zzc;->zzaaS:I

    iget-object v2, p0, Lcom/google/android/gms/common/api/zzq$zzc;->zzaaT:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/api/zzq;->zza(Lcom/google/android/gms/common/api/zzq;ILcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method
