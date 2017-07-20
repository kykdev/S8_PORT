.class public Lcom/android/phone/photoring/http/multipart/FilePart;
.super Lcom/android/phone/photoring/http/multipart/PartBase;
.source "FilePart.java"


# static fields
.field private static final FILE_NAME_BYTES:[B

.field private static final LOG:Lorg/apache/commons/logging/Log;


# instance fields
.field private source:Lcom/android/phone/photoring/http/multipart/PartSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/phone/photoring/http/multipart/FilePart;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/android/phone/photoring/http/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string/jumbo v0, "; filename="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/android/phone/photoring/http/multipart/FilePart;->FILE_NAME_BYTES:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/phone/photoring/http/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p3, :cond_0

    const-string/jumbo p3, "application/octet-stream"

    :cond_0
    if-nez p4, :cond_1

    const-string/jumbo p4, "UTF-8"

    :cond_1
    const-string/jumbo v0, "binary"

    invoke-direct {p0, p1, p3, p4, v0}, Lcom/android/phone/photoring/http/multipart/PartBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Source may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p2, p0, Lcom/android/phone/photoring/http/multipart/FilePart;->source:Lcom/android/phone/photoring/http/multipart/PartSource;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v0, Lcom/android/phone/photoring/http/multipart/FilePartSource;

    invoke-direct {v0, p2}, Lcom/android/phone/photoring/http/multipart/FilePartSource;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/phone/photoring/http/multipart/FilePart;-><init>(Ljava/lang/String;Lcom/android/phone/photoring/http/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected lengthOfData()J
    .locals 2

    sget-object v0, Lcom/android/phone/photoring/http/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string/jumbo v1, "enter lengthOfData()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/photoring/http/multipart/FilePart;->source:Lcom/android/phone/photoring/http/multipart/PartSource;

    invoke-interface {v0}, Lcom/android/phone/photoring/http/multipart/PartSource;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method protected sendData(Ljava/io/OutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v3, Lcom/android/phone/photoring/http/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string/jumbo v4, "enter sendData(OutputStream out)"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/phone/photoring/http/multipart/FilePart;->lengthOfData()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/phone/photoring/http/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string/jumbo v4, "No data to send."

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/16 v3, 0x1000

    new-array v2, v3, [B

    iget-object v3, p0, Lcom/android/phone/photoring/http/multipart/FilePart;->source:Lcom/android/phone/photoring/http/multipart/PartSource;

    invoke-interface {v3}, Lcom/android/phone/photoring/http/multipart/PartSource;->createInputStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v3

    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method protected sendDispositionHeader(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lcom/android/phone/photoring/http/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string/jumbo v2, "enter sendDispositionHeader(OutputStream out)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/android/phone/photoring/http/multipart/PartBase;->sendDispositionHeader(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lcom/android/phone/photoring/http/multipart/FilePart;->source:Lcom/android/phone/photoring/http/multipart/PartSource;

    invoke-interface {v1}, Lcom/android/phone/photoring/http/multipart/PartSource;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/phone/photoring/http/multipart/FilePart;->FILE_NAME_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    sget-object v1, Lcom/android/phone/photoring/http/multipart/FilePart;->QUOTE_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    sget-object v1, Lcom/android/phone/photoring/http/multipart/FilePart;->QUOTE_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    return-void
.end method
