.class final Lcom/samsung/android/app/omcagent/update/app/PrepareState$1;
.super Ljava/lang/Object;
.source "PrepareState.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/update/app/PrepareState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/update/app/PrepareState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/samsung/android/app/omcagent/update/app/PrepareStateContext;)Lcom/samsung/android/app/omcagent/update/app/PrepareState;
    .locals 8

    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "App Prepare State: checking applications"

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/PrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readCheckableAppInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "AppInfo List is already ready to install"

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/app/omcagent/update/app/PrepareState$1;->DOWNLOAD_APPLICATION_ICONS:Lcom/samsung/android/app/omcagent/update/app/PrepareState;

    :goto_0
    return-object v5

    :cond_0
    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "Need to update DB using omcAppCheck?"

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyUrlBuilder;->getPackages(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/PrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyUrlBuilder;->getOmcAppCheck(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "URL is empty"

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->V(Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/app/omcagent/update/app/PrepareState$1;->FINISH_APPLICATION_PREPARE:Lcom/samsung/android/app/omcagent/update/app/PrepareState;

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/PrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;->execute()Z

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v2, Lcom/samsung/android/app/omcagent/update/app/ParserGalaxyAppResponse;

    invoke-direct {v2}, Lcom/samsung/android/app/omcagent/update/app/ParserGalaxyAppResponse;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/PrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/samsung/android/app/omcagent/update/app/ParserGalaxyAppResponse;->readAppCheck(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "Receive result: success in GalaxyRestClient omcAppCheck"

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/PrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readAvailableAppInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "Available AppInfo does not exist"

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->V(Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/app/omcagent/update/app/PrepareState$1;->FINISH_APPLICATION_PREPARE:Lcom/samsung/android/app/omcagent/update/app/PrepareState;

    goto :goto_0

    :cond_3
    sget-object v5, Lcom/samsung/android/app/omcagent/update/app/PrepareState$1;->DOWNLOAD_APPLICATION_ICONS:Lcom/samsung/android/app/omcagent/update/app/PrepareState;

    goto :goto_0

    :cond_4
    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "Fail to parsing omcAppCheck response"

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->V(Ljava/lang/String;)V

    :cond_5
    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "Receive result: fail in GalaxyRestClient omcAppCheck"

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->getResultCode()I

    move-result v6

    add-int/lit16 v6, v6, 0x2710

    invoke-virtual {v0, v6}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setResult(I)V

    sget-object v6, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/PrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->updateState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)I

    goto :goto_1

    :cond_6
    sget-object v5, Lcom/samsung/android/app/omcagent/update/app/PrepareState$1;->FINISH_APPLICATION_PREPARE:Lcom/samsung/android/app/omcagent/update/app/PrepareState;

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "START_APPLICATION_PREPARE"

    return-object v0
.end method
