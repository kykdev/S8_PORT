.class Lcom/android/phone/common/mail/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;
.super Ljava/io/FilterInputStream;
.source "BinaryTempFileBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/common/mail/internet/BinaryTempFileBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BinaryTempFileBodyInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/common/mail/internet/BinaryTempFileBody;


# direct methods
.method public constructor <init>(Lcom/android/phone/common/mail/internet/BinaryTempFileBody;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/common/mail/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;->this$0:Lcom/android/phone/common/mail/internet/BinaryTempFileBody;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    iget-object v0, p0, Lcom/android/phone/common/mail/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;->this$0:Lcom/android/phone/common/mail/internet/BinaryTempFileBody;

    invoke-static {v0}, Lcom/android/phone/common/mail/internet/BinaryTempFileBody;->-get0(Lcom/android/phone/common/mail/internet/BinaryTempFileBody;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
