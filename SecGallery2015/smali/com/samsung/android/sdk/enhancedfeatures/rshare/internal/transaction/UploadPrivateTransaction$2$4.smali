.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$2$4;
.super Ljava/lang/Object;
.source "UploadPrivateTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$2;->onProgress(IILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$2;

.field final synthetic val$cb:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$2;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$2$4;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$2;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$2$4;->val$cb:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$2$4;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$2;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadContentsListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadContentsListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$2$4;->val$cb:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadContentsListener;->onProgress(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;)V

    return-void
.end method