.class public Lcom/sec/ims/euc/IEUCRequest$IEUCMessageData;
.super Ljava/lang/Object;
.source "IEUCRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/euc/IEUCRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IEUCMessageData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/euc/IEUCRequest$IEUCMessageData$1;
    }
.end annotation


# instance fields
.field public final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/ims/euc/IEUCRequest$IEUCMessageData;",
            ">;"
        }
    .end annotation
.end field

.field mAcceptButtonText:Ljava/lang/String;

.field mRejectButtonText:Ljava/lang/String;

.field mSubject:Ljava/lang/String;

.field mText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/ims/euc/IEUCRequest$IEUCMessageData$1;

    invoke-direct {v0, p0}, Lcom/sec/ims/euc/IEUCRequest$IEUCMessageData$1;-><init>(Lcom/sec/ims/euc/IEUCRequest$IEUCMessageData;)V

    iput-object v0, p0, Lcom/sec/ims/euc/IEUCRequest$IEUCMessageData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/ims/euc/IEUCRequest$IEUCMessageData$1;

    invoke-direct {v0, p0}, Lcom/sec/ims/euc/IEUCRequest$IEUCMessageData$1;-><init>(Lcom/sec/ims/euc/IEUCRequest$IEUCMessageData;)V

    iput-object v0, p0, Lcom/sec/ims/euc/IEUCRequest$IEUCMessageData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/euc/IEUCRequest$IEUCMessageData;->mSubject:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/euc/IEUCRequest$IEUCMessageData;->mText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/euc/IEUCRequest$IEUCMessageData;->mAcceptButtonText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/euc/IEUCRequest$IEUCMessageData;->mRejectButtonText:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/euc/IEUCRequest$IEUCMessageData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/ims/euc/IEUCRequest$IEUCMessageData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/euc/IEUCRequest$IEUCMessageData;->mSubject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/euc/IEUCRequest$IEUCMessageData;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/euc/IEUCRequest$IEUCMessageData;->mAcceptButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/euc/IEUCRequest$IEUCMessageData;->mRejectButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
