.class public final Lcom/google/android/gms/wallet/Address;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/Address;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field name:Ljava/lang/String;

.field phoneNumber:Ljava/lang/String;

.field zzJU:Ljava/lang/String;

.field zzaMD:Ljava/lang/String;

.field zzaME:Ljava/lang/String;

.field zzaMF:Ljava/lang/String;

.field zzaMK:Ljava/lang/String;

.field zzaMM:Z

.field zzaMN:Ljava/lang/String;

.field zzbof:Ljava/lang/String;

.field zzbog:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/zza;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/Address;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/Address;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/Address;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/Address;->zzaMD:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/Address;->zzaME:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wallet/Address;->zzaMF:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/wallet/Address;->zzJU:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/wallet/Address;->zzbof:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/wallet/Address;->zzbog:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/wallet/Address;->zzaMK:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/wallet/Address;->phoneNumber:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/google/android/gms/wallet/Address;->zzaMM:Z

    iput-object p12, p0, Lcom/google/android/gms/wallet/Address;->zzaMN:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/Address;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/zza;->zza(Lcom/google/android/gms/wallet/Address;Landroid/os/Parcel;I)V

    return-void
.end method
