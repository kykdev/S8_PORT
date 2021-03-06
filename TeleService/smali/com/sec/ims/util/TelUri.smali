.class public Lcom/sec/ims/util/TelUri;
.super Lgov/nist/javax/sip/address/GenericURI;
.source "TelUri.java"


# instance fields
.field private mIsInternational:Z

.field private mNumber:Ljava/lang/String;

.field private mPhoneContext:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lgov/nist/javax/sip/address/GenericURI;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/ims/util/TelUri;->mIsInternational:Z

    invoke-virtual {p0, p1}, Lcom/sec/ims/util/TelUri;->setPhoneNumber(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sec/ims/util/TelUri;->mPhoneContext:Ljava/lang/String;

    return-void
.end method

.method public static parseUri(Ljava/lang/String;)Lcom/sec/ims/util/TelUri;
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo v3, "tel:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-object v5

    :cond_1
    const/16 v3, 0x3b

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2

    new-instance v3, Lcom/sec/ims/util/TelUri;

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v5}, Lcom/sec/ims/util/TelUri;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_2
    const/4 v2, 0x0

    const-string/jumbo v3, "phone-context"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    add-int/lit8 v3, v1, 0xe

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_3
    new-instance v3, Lcom/sec/ims/util/TelUri;

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/sec/ims/util/TelUri;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/ims/util/TelUri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/ims/util/TelUri;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/sec/ims/util/TelUri;

    invoke-virtual {p0}, Lcom/sec/ims/util/TelUri;->isGlobal()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/ims/util/TelUri;->mPhoneContext:Ljava/lang/String;

    if-nez v2, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/sec/ims/util/TelUri;->mNumber:Ljava/lang/String;

    iget-object v2, v0, Lcom/sec/ims/util/TelUri;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_4
    iget-object v2, p0, Lcom/sec/ims/util/TelUri;->mNumber:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/ims/util/TelUri;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v1, p0, Lcom/sec/ims/util/TelUri;->mPhoneContext:Ljava/lang/String;

    iget-object v2, v0, Lcom/sec/ims/util/TelUri;->mPhoneContext:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_5
    return v1
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "tel"

    return-object v0
.end method

.method public isGlobal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/util/TelUri;->mIsInternational:Z

    return v0
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/sec/ims/util/TelUri;->mIsInternational:Z

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/sec/ims/util/TelUri;->mNumber:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/sec/ims/util/TelUri;->mIsInternational:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "+"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/util/TelUri;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/ims/util/TelUri;->mPhoneContext:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ";phone-context="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/ims/util/TelUri;->mPhoneContext:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
