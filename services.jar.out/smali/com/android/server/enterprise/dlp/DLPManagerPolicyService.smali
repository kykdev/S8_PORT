.class public Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
.super Lcom/samsung/android/knox/dlp/IDLPManagerPolicy$Stub;
.source "DLPManagerPolicyService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;,
        Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$ClearUserDataObserver;,
        Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;,
        Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;,
        Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$EnterpriseDLPpolicyReciever;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final SERVICECONNECTIONWAIT:Ljava/lang/Object;

.field private static final SERVICE_CONNECTION_TIMEOUT:J = 0x30d40L

.field private static TAG:Ljava/lang/String;

.field private static countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private static volatile mBootReceiver:Landroid/content/BroadcastReceiver;

.field private static mDLPConnectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;


# instance fields
.field private dlpCacheHelper:Lcom/android/server/enterprise/dlp/DLPCacheHelper;

.field private dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

.field private mContext:Landroid/content/Context;

.field private mDLPProcessObserver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;

.field private mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

.field private receiver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$EnterpriseDLPpolicyReciever;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPConnectionMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)Lcom/android/server/enterprise/dlp/PolicyServiceHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->registerOrUnregisterProcessObserver(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)Lcom/android/server/enterprise/dlp/DLPCacheHelper;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDlpCacheHelper()Lcom/android/server/enterprise/dlp/DLPCacheHelper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)Lcom/samsung/android/knox/dlp/IFrameworkConnector;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPInterface(I)Lcom/samsung/android/knox/dlp/IFrameworkConnector;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->bindToDLPService(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/samsung/android/knox/dlp/DLPConstants;->DBG:Z

    sput-boolean v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    const-string/jumbo v0, "DLP_DLPManagerPolicyService"

    sput-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPConnectionMap:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->SERVICECONNECTIONWAIT:Ljava/lang/Object;

    sput-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    sput-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/dlp/IDLPManagerPolicy$Stub;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    iput-object v2, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpCacheHelper:Lcom/android/server/enterprise/dlp/DLPCacheHelper;

    iput-object v2, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    iput-object v2, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->receiver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$EnterpriseDLPpolicyReciever;

    new-instance v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;-><init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;)V

    iput-object v1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPProcessObserver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;

    iput-object p1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    iget-object v1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getServiceHelperInstance(Landroid/content/Context;Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;)Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDlpCacheHelper()Lcom/android/server/enterprise/dlp/DLPCacheHelper;

    invoke-virtual {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->registerEnterpriseDLPpolicyReciever()V

    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->registerBootReceiver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-object p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "DLPManagerPolicyService Constructor >> Exception Occured"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private bindToDLPService(I)V
    .locals 22

    sget-boolean v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v17, :cond_0

    sget-object v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "In bindToDLPService: uId is: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v5, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;

    move/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;-><init>(I)V

    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v17, "com.samsung.android.knox.intent.action.DLP_SERVICE_BIND_INTERNAL"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-boolean v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v17, :cond_1

    sget-object v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "In bindToDLPService: action is: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v18, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->SERVICECONNECTIONWAIT:Ljava/lang/Object;

    monitor-enter v18

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v8

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    if-eqz v11, :cond_7

    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v11, v10, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v17

    if-eqz v17, :cond_3

    :cond_2
    :goto_0
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v18

    return-void

    :cond_3
    :try_start_3
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    iget-object v15, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    sget-boolean v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v17, :cond_4

    sget-object v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "In bindToService: serviceInfo : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v4, Landroid/content/ComponentName;

    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v10, v5, v1, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v17

    if-eqz v17, :cond_6

    sget-boolean v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v17, :cond_5

    sget-object v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v19, "In bindToService: Success >>> Bind DLP service"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    :try_start_4
    new-instance v17, Ljava/util/concurrent/CountDownLatch;

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v19, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v20, 0x30d40

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-boolean v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v17, :cond_2

    sget-object v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v19, "In bindToService: CoutnDownLatch return false"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v7

    :try_start_5
    sget-object v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v19, "In bindToService: InterruptedException"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v17

    :try_start_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v17

    monitor-exit v18

    throw v17

    :cond_6
    :try_start_7
    sget-object v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v19, "In bindToService: Fail to bind to DLP service"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    sget-object v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v19, "In bindToService: PackageManager : Null"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0
.end method

.method public static checkLaunchIntentForAccessDLP(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;IILjava/lang/String;II)Z
    .locals 2

    sget-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkLaunchIntentForAccessDLP() DLP is not instantiated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    sget-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->checkLaunchIntentForAccessDLPInternal(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method private forceStopPackage(ILjava/lang/String;)V
    .locals 8

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    const-string/jumbo v5, "activity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/am/ActivityManagerService;->killBackgroundProcesses(Ljava/lang/String;I)V

    invoke-virtual {v0, p2, p1}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "android.intent.extra.user_handle"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v4, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;

    const/4 v5, 0x3

    invoke-direct {v1, p0, v5}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;-><init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)V

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/content/Intent;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    sget-boolean v5, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "DLP App ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] force closed !"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public static getAccessInfo(ILjava/lang/String;)I
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, -0x1

    sget-object v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "DLP is not instantiated"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    invoke-static {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isActivated(I)Z

    move-result v3

    if-nez v3, :cond_1

    return v5

    :cond_1
    sget-object v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    iget-object v3, v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpCacheHelper:Lcom/android/server/enterprise/dlp/DLPCacheHelper;

    invoke-virtual {v3, p0}, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->getDLPCache(I)Lcom/android/server/enterprise/dlp/DLPCache;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/android/server/enterprise/dlp/DLPCache;->mWhitelistedPkgs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/server/enterprise/dlp/DLPCache;->mWhitelistedPkgs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_2
    if-nez v1, :cond_5

    const/16 v0, 0x80

    :cond_3
    :goto_0
    sget-boolean v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAccessInfo END "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v0

    :cond_5
    const/4 v3, 0x1

    if-ne v1, v3, :cond_6

    const/16 v0, 0x100

    goto :goto_0

    :cond_6
    const-string/jumbo v3, "com.android.providers.media"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v0, 0x200

    goto :goto_0

    :cond_7
    const-string/jumbo v3, "com.android.providers.downloads"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v0, 0x200

    goto :goto_0

    :cond_8
    const-string/jumbo v3, "com.android.externalstorage"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v0, 0x200

    goto :goto_0
.end method

.method private getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    return-object v0
.end method

.method private getDLPInterface(I)Lcom/samsung/android/knox/dlp/IFrameworkConnector;
    .locals 10

    const/4 v7, 0x0

    const/4 v3, 0x1

    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPConnectionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPConnectionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;->getDLPService()Lcom/samsung/android/knox/dlp/IFrameworkConnector;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_0
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.dlp.service"

    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_1

    const-string/jumbo v1, "com.samsung.android.dlp.service"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    sget-boolean v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "DLP : dlp service enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v7

    :catch_0
    move-exception v6

    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDLPInterface exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private getDlpCacheHelper()Lcom/android/server/enterprise/dlp/DLPCacheHelper;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpCacheHelper:Lcom/android/server/enterprise/dlp/DLPCacheHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/enterprise/dlp/DLPCacheHelper;

    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/dlp/DLPCacheHelper;-><init>(Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpCacheHelper:Lcom/android/server/enterprise/dlp/DLPCacheHelper;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpCacheHelper:Lcom/android/server/enterprise/dlp/DLPCacheHelper;

    return-object v0
.end method

.method private getServiceHelperInstance(Landroid/content/Context;Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;)Lcom/android/server/enterprise/dlp/PolicyServiceHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->getInstance(Landroid/content/Context;Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;)Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    return-object v0
.end method

.method public static isActivated(I)Z
    .locals 5

    const/4 v1, 0x0

    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isActivated() DLP is not instantiated"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_0
    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    iget-object v2, v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpCacheHelper:Lcom/android/server/enterprise/dlp/DLPCacheHelper;

    invoke-virtual {v2, p0}, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->getDLPCache(I)Lcom/android/server/enterprise/dlp/DLPCache;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/enterprise/dlp/DLPCache;->isActivated:Z

    :cond_1
    sget-boolean v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isActivated : DLP activated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "for userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1
.end method

.method public static isFirewallDenyRuleEnabledForUid(Landroid/content/Context;I)Z
    .locals 13

    const/4 v12, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v5, 0x0

    invoke-static {v0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isActivated(I)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    const/16 v10, 0x3e8

    if-eq v9, v10, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    sget-object v9, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "pkgNames is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_0
    const/4 v6, 0x0

    :goto_0
    array-length v9, v8

    if-ge v6, v9, :cond_2

    aget-object v9, v8, v6

    invoke-static {v0, v9}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getAccessInfo(ILjava/lang/String;)I

    move-result v9

    const/16 v10, 0x100

    if-ne v10, v9, :cond_3

    sget-boolean v9, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v9, :cond_1

    sget-object v9, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Package is consumer app:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v8, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v5, 0x1

    :cond_2
    if-eqz v5, :cond_8

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getFirewall()Lcom/samsung/android/knox/net/firewall/Firewall;

    move-result-object v2

    if-eqz v2, :cond_7

    sget-object v9, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->ENABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    const/4 v10, 0x2

    invoke-virtual {v2, v10, v9}, Lcom/samsung/android/knox/net/firewall/Firewall;->getRules(ILcom/samsung/android/knox/net/firewall/FirewallRule$Status;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    array-length v9, v3

    if-ge v4, v9, :cond_8

    aget-object v9, v3, v4

    if-eqz v9, :cond_6

    const-string/jumbo v9, "*"

    aget-object v10, v3, v4

    invoke-virtual {v10}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string/jumbo v9, "*"

    aget-object v10, v3, v4

    invoke-virtual {v10}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v7, 0x0

    :goto_2
    array-length v9, v8

    if-ge v7, v9, :cond_6

    aget-object v9, v3, v4

    invoke-virtual {v9}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPackageName()Ljava/lang/String;

    move-result-object v9

    aget-object v10, v8, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    sget-object v9, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Network is  blocked for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v8, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    return v9

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    sget-object v9, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "pkgNames is null OR firewall rules are not fully deny rules"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    sget-object v9, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "firewallPolicy is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v12
.end method

.method public static isLocked(I)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    if-nez v3, :cond_0

    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isLocked() DLP is not instantiated"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    sget-object v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    invoke-direct {v3}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->isLocked(I)I

    move-result v0

    sget-boolean v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isLocked() END "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-ne v0, v1, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private registerBootReceiver()V
    .locals 3

    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;-><init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)V

    sput-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private registerOrUnregisterProcessObserver(Z)Z
    .locals 4

    iget-object v2, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPProcessObserver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    sget-boolean v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "DLP: registerOrUnregisterProcessObserver :: calling clear calling identity on binder"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p1, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPProcessObserver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;

    invoke-virtual {v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;->registerObserver()V

    :goto_0
    sget-boolean v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "DLP: registerOrUnregisterProcessObserver :: restoring identity on binder"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v2, 0x1

    return v2

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPProcessObserver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;

    invoke-virtual {v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;->unregister()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setConfig(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Z
    .locals 31

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->getConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v24

    const/16 v18, 0x1

    const/16 v23, 0x0

    if-eqz p2, :cond_1d

    const/16 v25, 0x0

    :try_start_0
    const-string/jumbo v28, "ExpiryAfter"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    const-string/jumbo v28, "ExpiryAfter"

    const/16 v29, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    if-eqz v24, :cond_0

    const-string/jumbo v28, "ExpiryAfter"

    const/16 v29, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v28

    move/from16 v0, v28

    if-eq v15, v0, :cond_2

    :cond_0
    sget-boolean v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v28, :cond_1

    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "DLP : In setDLPExpiry userId : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " expiry_after : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1, v15}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->setDLPAdminExpiry(II)Z

    move-result v25

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v8

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v14

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x0

    aput-object v29, v28, v30

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x1

    aput-object v29, v28, v30

    const/16 v29, 0x3

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v28

    invoke-virtual {v14, v0, v1, v2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->sendDLPCommand(II[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v18, :cond_f

    move/from16 v18, v25

    :goto_0
    const-string/jumbo v28, "Activate"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    const/16 v23, 0x1

    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v28, "android.intent.extra.user_handle"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    new-instance v6, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v6, v0, v1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;-><init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)V

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Landroid/content/Intent;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v20, v28, v29

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_1
    const/16 v28, 0x118

    :try_start_3
    invoke-static/range {v28 .. v28}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v28

    if-eqz v28, :cond_10

    const-string/jumbo v28, "CREATE"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_3

    const-string/jumbo v28, "OPEN"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_3

    const-string/jumbo v28, "RENAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_3

    const-string/jumbo v28, "EXPIRED"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_3

    const-string/jumbo v28, "UNAUTHORIZED"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->getIntValueForAuditEvents(Landroid/os/Bundle;)I

    move-result v5

    const-string/jumbo v28, "AUDIT"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->sendSetDLPAuditEPMDCommand(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_4
    :goto_2
    const/16 v28, 0x10e

    :try_start_4
    invoke-static/range {v28 .. v28}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v28

    if-eqz v28, :cond_14

    const/16 v25, 0x0

    const-string/jumbo v28, "Extensions"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_6

    const-string/jumbo v28, "Extensions"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->getMergedExtensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v28

    if-eqz v28, :cond_11

    :cond_5
    :goto_3
    if-eqz v18, :cond_13

    move/from16 v18, v25

    :cond_6
    :goto_4
    const/16 v28, 0x118

    :try_start_5
    invoke-static/range {v28 .. v28}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v28

    if-eqz v28, :cond_17

    const-string/jumbo v28, "Domains"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_8

    const-string/jumbo v28, "Domains"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->getFormatedDomainList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_15

    :cond_7
    sget-boolean v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v28, :cond_8

    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v29, "DLP : domain list is null or empty"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :cond_8
    :goto_5
    const/16 v25, 0x0

    :try_start_6
    const-string/jumbo v28, "Lock"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_b

    const-string/jumbo v28, "Lock"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v22

    sget-boolean v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v28, :cond_9

    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "DLP : isLocked : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const-string/jumbo v28, "Lock"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v28

    move/from16 v0, v22

    move/from16 v1, v28

    if-eq v0, v1, :cond_b

    if-eqz v22, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getWhitelistApps(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_18

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_a
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_18

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/knox/dlp/DLPPackageInfo;

    iget-object v4, v11, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/samsung/android/knox/AppIdentity;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->forceStopPackage(ILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    :catch_0
    move-exception v13

    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "setConfig exception:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "setConfig Exception: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/16 v18, 0x0

    :cond_b
    :goto_7
    :try_start_7
    const-string/jumbo v28, "Activate"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_d

    const-string/jumbo v28, "Activate"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    const-string/jumbo v28, "Activate"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v28

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getWhitelistApps(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v27

    if-eqz v27, :cond_1a

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_c
    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/knox/dlp/DLPPackageInfo;

    iget-object v4, v11, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/samsung/android/knox/AppIdentity;

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->forceStopPackage(ILjava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_8

    :catch_1
    move-exception v13

    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "setConfig exception:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "setConfig Exception: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/16 v18, 0x0

    :cond_d
    :goto_9
    sget-boolean v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v28, :cond_e

    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "setConfig: Adding/Updating DLP cache for userId: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-eqz v18, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->setDLPConfig(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Z

    move-result v28

    if-eqz v28, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpCacheHelper:Lcom/android/server/enterprise/dlp/DLPCacheHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->updateUserDLPCacheFromDB(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v28

    return v28

    :catchall_0
    move-exception v28

    :try_start_8
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v28
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v13

    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "setConfig Exception: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "setConfig Exception: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_f
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_10
    :try_start_9
    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v29, "Knox version not supported for DLP Audit events."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v13

    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "setConfig exception:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "setConfig Exception: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_11
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v26

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->setDLPExtension(ILjava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_12

    sget-boolean v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v28, :cond_12

    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "DLP : Extensions set for user: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " ["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->sendSetExtensionEPMDCommand(Ljava/lang/String;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_3

    :catch_4
    move-exception v13

    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "setConfig Exception: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "setConfig Exception: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_13
    const/16 v18, 0x0

    goto/16 :goto_4

    :cond_14
    :try_start_b
    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v29, "Knox version not supported for extension"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_4

    :cond_15
    :try_start_c
    sget-boolean v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v28, :cond_16

    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "DLP : Domain set for user: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " ["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    const-string/jumbo v28, "Domains"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_5

    :catch_5
    move-exception v13

    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "setConfig exception:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "setConfig Exception: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_17
    :try_start_d
    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v29, "Knox version not supported for domains list"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_5

    :cond_18
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v26

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->setDLPLock(IZ)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    move-result v25

    if-eqz v18, :cond_19

    move/from16 v18, v25

    goto/16 :goto_7

    :cond_19
    const/16 v18, 0x0

    goto/16 :goto_7

    :cond_1a
    :try_start_f
    const-string/jumbo v28, "com.android.providers.media"

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->forceStopPackage(ILjava/lang/String;)V

    sget-boolean v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v28, :cond_1b

    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "DLP : isActivated : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    if-nez v23, :cond_1c

    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v28, "android.intent.extra.user_handle"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    new-instance v6, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;

    const/16 v28, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v6, v0, v1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;-><init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)V

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Landroid/content/Intent;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v20, v28, v29

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1c
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->registerOrUnregisterProcessObserver(Z)Z

    move-result v28

    if-nez v28, :cond_d

    sget-boolean v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v28, :cond_d

    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "DLP : registerOrUnregisterProcessObserver failed for isActive : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    goto/16 :goto_9

    :cond_1d
    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v29, "DLP: config is null"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    goto/16 :goto_9

    :cond_1e
    const/16 v28, 0x0

    return v28
.end method


# virtual methods
.method public addPackagesToAllowDLPWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/dlp/DLPPackageInfo;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->enforceKnoxDLPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return v8

    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v6

    if-nez v6, :cond_2

    sget-object v6, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "In addPackagesToAllowDLPWhiteList: dlpHelper is not initialized"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_2
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    iget-object v6, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    iget-object v7, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v7, p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getDLPConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->feederToMdmMigration(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)V

    invoke-static {v5}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isActivated(I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/dlp/DLPPackageInfo;

    if-eqz v1, :cond_3

    iget-object v0, v1, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/samsung/android/knox/AppIdentity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v6, p1, v3, v4}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->isListAppsContainsDLPPackageInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-direct {p0, v5, v3}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->forceStopPackage(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->addPackagesToAllowWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpCacheHelper:Lcom/android/server/enterprise/dlp/DLPCacheHelper;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->updateUserDLPCacheFromDB(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v6

    return v6

    :cond_5
    return v8
.end method

.method public addToAuditLog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V
    .locals 16

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->checkCaller()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    :try_start_0
    sget-boolean v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "callingUid : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " Actual callerPackage : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " Audit logging with pkg : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpCacheHelper:Lcom/android/server/enterprise/dlp/DLPCacheHelper;

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->getDLPCache(I)Lcom/android/server/enterprise/dlp/DLPCache;

    move-result-object v11

    if-eqz v11, :cond_e

    const/16 v2, 0x3e8

    if-eq v10, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    invoke-virtual {v2, v9}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->isPlatformOrProvider(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_1
    sget-boolean v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Caller is trusted (platform, system or provider), proceeding for audit log!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    packed-switch p5, :pswitch_data_0

    :pswitch_0
    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Invalid Opcode for audit logging. Returning!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :pswitch_1
    :try_start_1
    iget-boolean v2, v11, Lcom/android/server/enterprise/dlp/DLPCache;->auditCreate:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " /pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " created DLP file ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] using ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x4

    move/from16 v5, p3

    move-object/from16 v6, p1

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    return-void

    :cond_4
    :try_start_2
    sget-boolean v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Audit logging is diabled or no config found for file create event, returning!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :pswitch_2
    :try_start_3
    iget-boolean v2, v11, Lcom/android/server/enterprise/dlp/DLPCache;->auditOpen:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " /pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " DLP file ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] opened by ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x4

    move/from16 v5, p3

    move-object/from16 v6, p1

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v12

    :try_start_4
    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "addToAuditLog exception:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    :cond_6
    :try_start_5
    sget-boolean v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Audit logging is diabled or no config found for open event, returning!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_7
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :pswitch_3
    :try_start_6
    iget-boolean v2, v11, Lcom/android/server/enterprise/dlp/DLPCache;->auditRename:Z

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " /pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "renamed DLP file ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] using ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x4

    move/from16 v5, p3

    move-object/from16 v6, p1

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_8
    :try_start_7
    sget-boolean v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v2, :cond_9

    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Audit logging is diabled or no config found for file rename event, returning!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_9
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :pswitch_4
    :try_start_8
    iget-boolean v2, v11, Lcom/android/server/enterprise/dlp/DLPCache;->auditExpired:Z

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " /pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "attempt to access expired DLP file ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] by ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x4

    move/from16 v5, p3

    move-object/from16 v6, p1

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_a
    sget-boolean v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v2, :cond_b

    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Audit logging is diabled or no config found for file expired event, returning!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_b
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :pswitch_5
    :try_start_9
    iget-boolean v2, v11, Lcom/android/server/enterprise/dlp/DLPCache;->auditUnauthorized:Z

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " /pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " DLP file ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] access denied to ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    move/from16 v5, p3

    move-object/from16 v6, p1

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_c
    sget-boolean v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v2, :cond_d

    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Audit logging is diabled or no config found for access denied event, returning!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_d
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_e
    :try_start_a
    sget-boolean v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "DLP config doesn\'t exist for user or caller is not media provider or trusted component.. UIDs dont match !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Permission Denial: can\'t dump DLPManagerPolicyService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getDLPConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "In getDLPConfig: dlpHelper is not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->getConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromAllowDLPWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/dlp/DLPPackageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "In getPackagesFromAllowDLPWhiteList: dlpHelper is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->getPackagesFromAllowWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isDLPActivated(I)Z
    .locals 1

    invoke-static {p1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isActivated(I)Z

    move-result v0

    return v0
.end method

.method public isShareAllowed(Lcom/samsung/android/knox/ContextInfo;[Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 26

    if-nez p1, :cond_0

    sget-object v23, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v24, "DLP: isShareAllowed: ctxInfo is null, returning false!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    return v23

    :cond_0
    const/4 v12, 0x1

    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isActivated(I)Z

    move-result v23

    if-eqz v23, :cond_10

    const-string/jumbo v23, "isAllowedToShare"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    if-nez p2, :cond_1

    sget-object v23, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v24, "isShareAllowed. selectionArgs is null. return true"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x1

    return v23

    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getPackagesFromAllowDLPWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v18

    const/4 v10, 0x0

    const/4 v7, 0x0

    if-eqz v18, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_6

    :cond_2
    if-eqz v7, :cond_5

    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isLocked(I)Z

    move-result v11

    if-eqz v10, :cond_3

    if-eqz v10, :cond_5

    if-eqz v11, :cond_5

    :cond_3
    sget-boolean v23, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v23, :cond_4

    sget-object v23, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "isShareAllowed is false - isLocked:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " isCallerAppDLP:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " isConsumerAppDLP:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v12, 0x0

    :cond_5
    :goto_0
    return v12

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string/jumbo v24, "android"

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    const/16 v23, 0x0

    aget-object v23, p2, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/samsung/android/knox/dlp/DLPPackageInfo;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/samsung/android/knox/AppIdentity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/samsung/android/knox/AppIdentity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v21

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    :try_start_1
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_7

    move-object/from16 v0, v21

    invoke-static {v5, v14, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_9

    :cond_7
    move-object/from16 v0, v20

    move/from16 v1, p4

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v19

    move/from16 v0, v22

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    const/4 v10, 0x1

    :cond_8
    move/from16 v0, p5

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    const/4 v7, 0x1

    :cond_9
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    const/4 v12, 0x0

    sget-object v23, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Exception in isShareAllowed : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_0
    move-exception v23

    :try_start_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v23

    :cond_a
    const/16 v23, 0x0

    aget-object v23, p2, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    const/16 v23, 0x1

    aget-object v23, p2, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v4

    sget-boolean v23, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v23, :cond_b

    sget-object v23, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "isShareAllowed consumerPkgName : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/samsung/android/knox/dlp/DLPPackageInfo;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/samsung/android/knox/AppIdentity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/samsung/android/knox/AppIdentity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v21

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-wide v8

    :try_start_4
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_c

    move-object/from16 v0, v21

    invoke-static {v5, v14, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_e

    :cond_c
    move-object/from16 v0, v20

    move/from16 v1, p4

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v19

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v23

    if-eqz v23, :cond_d

    const/4 v10, 0x1

    :cond_d
    move/from16 v0, p5

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    const/4 v7, 0x1

    :cond_e
    :try_start_5
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_1
    move-exception v13

    :try_start_6
    sget-object v23, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "NameNotFoundException occured for package name : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_1
    move-exception v23

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v23

    :cond_f
    sget-object v23, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v24, "In the default case"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    return v23

    :cond_10
    sget-object v23, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v24, "DLP Is not activated"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0
.end method

.method public notifyDLPOpenedFile(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v11, 0x0

    if-nez p1, :cond_0

    sget-object v8, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "DLP: notifyDLPOpenedFile: cxtInfo is null, returning false!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_0
    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    sget-boolean v8, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v8, :cond_1

    sget-object v8, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notifyDLPOpenedFile() called with containerID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " processId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " filePath = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "Calling UID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v8, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v8, "com.android.providers.media"

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v8

    if-eq v7, v8, :cond_2

    const-string/jumbo v8, "com.android.providers.downloads"

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v8

    if-eq v7, v8, :cond_2

    sget-object v8, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "notifyDLPOpenedFile() caller is not authorised permission denied"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v11

    :catch_0
    move-exception v2

    sget-object v8, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception occured : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_1
    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {p3, v8}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_3
    sget-boolean v8, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v8, :cond_4

    sget-object v8, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "path translation failed for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v5, p3

    :cond_5
    iget-object v8, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v3

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/4 v9, 0x2

    aput-object v5, v8, v9

    const/4 v9, 0x4

    const/4 v10, 0x3

    invoke-virtual {v3, v9, v10, v8}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->sendDLPCommand(II[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :catchall_0
    move-exception v8

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2

    invoke-static {p1, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-boolean v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "add DLPManagerPolicyService to system"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 4

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    sget-boolean v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAdminRemoved called for ContainerId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " and adminUid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPConnectionMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAdminRemoved connection object found for userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "removing ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPConnectionMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v0}, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->clearCacheForUser(I)Z

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0

    return-void
.end method

.method public registerEnterpriseDLPpolicyReciever()V
    .locals 6

    const/4 v4, 0x0

    sget-boolean v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerEnterpriseDLPpolicyReciever - Binding the receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$EnterpriseDLPpolicyReciever;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$EnterpriseDLPpolicyReciever;-><init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->receiver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$EnterpriseDLPpolicyReciever;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->receiver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$EnterpriseDLPpolicyReciever;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public removeDLPFiles(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->enforceKnoxDLPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPInterface(I)Lcom/samsung/android/knox/dlp/IFrameworkConnector;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->bindToDLPService(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeDLPFiles => onlyExpired: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPInterface(I)Lcom/samsung/android/knox/dlp/IFrameworkConnector;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-boolean v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "DLP : notify DLPService"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {v1, p2}, Lcom/samsung/android/knox/dlp/IFrameworkConnector;->removeDLPFiles(Z)Z

    move-result v3

    return v3

    :cond_3
    return v0
.end method

.method public removePackagesFromAllowDLPWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->enforceKnoxDLPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return v6

    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "In removePackagesFromAllowDLPWhiteList: dlpHelper is not initialized"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    iget-object v4, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getDLPConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->feederToMdmMigration(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)V

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isActivated(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v3, p1, v0, v5}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->isListAppsContainsDLPPackageInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->forceStopPackage(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->removePackagesFromAllowWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpCacheHelper:Lcom/android/server/enterprise/dlp/DLPCacheHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->updateUserDLPCacheFromDB(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    return v3

    :cond_5
    return v6
.end method

.method public setDLPConfig(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->enforceKnoxDLPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "DLP: setDLPConfig: cxtInfo is null, returning false!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    invoke-virtual {v1}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->isDLPKernelEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v1

    const-string/jumbo v2, "setDLPConfig /dev/sdp_dlp is not found, need to port DLP Kernel"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "In setDLPConfig: /dev/sdp_dlp is not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "In setDLPConfig: dlpHelper is not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->feederToMdmMigration(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->setConfig(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public setExpiryDate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x0

    if-nez p1, :cond_0

    sget-object v5, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "DLP: setExpiryDate: cxtInfo is null, returning false!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_0
    const/4 v4, 0x0

    sget-boolean v5, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setExpiryDate() called with containerID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " file name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    invoke-virtual {v5}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->checkDLPCaller()Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "setExpiryDate() caller is not authorised permission denied"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {p2, v5}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    sget-object v5, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "path translation failed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, p2

    :cond_4
    iget-object v5, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v2

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const/4 v6, 0x2

    const/4 v7, 0x3

    invoke-virtual {v2, v6, v7, v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->sendDLPCommand(II[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_0
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method
