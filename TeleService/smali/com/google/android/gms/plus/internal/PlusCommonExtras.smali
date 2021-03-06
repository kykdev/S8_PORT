.class public Lcom/google/android/gms/plus/internal/PlusCommonExtras;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/internal/zzf;


# instance fields
.field private final mVersionCode:I

.field private zzbeo:Ljava/lang/String;

.field private zzbep:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/plus/internal/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/plus/internal/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->CREATOR:Lcom/google/android/gms/plus/internal/zzf;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->mVersionCode:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->zzbeo:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->zzbep:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->zzbeo:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->zzbep:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    iget v1, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->mVersionCode:I

    iget v2, p1, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->mVersionCode:I

    if-eq v1, v2, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    return v0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->zzbeo:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->zzbeo:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->zzbep:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->zzbep:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->mVersionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->zzbeo:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->zzbep:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzw;->zzy(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "versionCode"

    iget v2, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->mVersionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "Gpsrc"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->zzbeo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "ClientCallingPackage"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->zzbep:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzw$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/plus/internal/zzf;->zza(Lcom/google/android/gms/plus/internal/PlusCommonExtras;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzFb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->zzbeo:Ljava/lang/String;

    return-object v0
.end method

.method public zzFc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->zzbep:Ljava/lang/String;

    return-object v0
.end method
