.class Lcom/android/phone/RecordCallsAutomaticallyList$QueryThread;
.super Ljava/lang/Thread;
.source "RecordCallsAutomaticallyList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RecordCallsAutomaticallyList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RecordCallsAutomaticallyList;


# direct methods
.method private constructor <init>(Lcom/android/phone/RecordCallsAutomaticallyList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/RecordCallsAutomaticallyList$QueryThread;->this$0:Lcom/android/phone/RecordCallsAutomaticallyList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/RecordCallsAutomaticallyList;Lcom/android/phone/RecordCallsAutomaticallyList$QueryThread;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/RecordCallsAutomaticallyList$QueryThread;-><init>(Lcom/android/phone/RecordCallsAutomaticallyList;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/RecordCallsAutomaticallyList$QueryThread;->this$0:Lcom/android/phone/RecordCallsAutomaticallyList;

    iget-object v2, v2, Lcom/android/phone/RecordCallsAutomaticallyList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v13

    const/16 v2, 0x64

    iput v2, v13, Landroid/os/Message;->what:I

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/4 v11, 0x0

    const-string/jumbo v2, "RecordCallsAutomaticallyList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QueryThread start: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v2, v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v2, "RecordCallsAutomaticallyList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mRecordCallsItemList.size(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/RecordCallsAutomaticallyList$QueryThread;->this$0:Lcom/android/phone/RecordCallsAutomaticallyList;

    invoke-static {v6}, Lcom/android/phone/RecordCallsAutomaticallyList;->-get4(Lcom/android/phone/RecordCallsAutomaticallyList;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v2, v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/RecordCallsAutomaticallyList$QueryThread;->this$0:Lcom/android/phone/RecordCallsAutomaticallyList;

    invoke-static {v2}, Lcom/android/phone/RecordCallsAutomaticallyList;->-get4(Lcom/android/phone/RecordCallsAutomaticallyList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_6

    sget-object v5, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/RecordCallsAutomaticallyList$QueryThread;->this$0:Lcom/android/phone/RecordCallsAutomaticallyList;

    invoke-static {v2}, Lcom/android/phone/RecordCallsAutomaticallyList;->-get4(Lcom/android/phone/RecordCallsAutomaticallyList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;

    iget-object v2, v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;->number:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string/jumbo v2, "display_name"

    const/4 v5, 0x1

    aput-object v2, v4, v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/RecordCallsAutomaticallyList$QueryThread;->this$0:Lcom/android/phone/RecordCallsAutomaticallyList;

    invoke-static {v2}, Lcom/android/phone/RecordCallsAutomaticallyList;->-wrap0(Lcom/android/phone/RecordCallsAutomaticallyList;)Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const/4 v12, 0x0

    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_2

    const-string/jumbo v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v2, v6, v18

    if-nez v2, :cond_1

    const/4 v12, 0x1

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    if-nez v12, :cond_4

    const-string/jumbo v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "display_name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v10, 0x0

    :goto_3
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_8

    if-eqz v10, :cond_3

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_5

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/RecordCallsAutomaticallyList$QueryThread;->this$0:Lcom/android/phone/RecordCallsAutomaticallyList;

    invoke-static {v2}, Lcom/android/phone/RecordCallsAutomaticallyList;->-get4(Lcom/android/phone/RecordCallsAutomaticallyList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;->contact_name:Ljava/lang/String;

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/RecordCallsAutomaticallyList$QueryThread;->this$0:Lcom/android/phone/RecordCallsAutomaticallyList;

    invoke-static {v2}, Lcom/android/phone/RecordCallsAutomaticallyList;->-get4(Lcom/android/phone/RecordCallsAutomaticallyList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;->contact_name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;->contact_name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v9

    const-string/jumbo v2, "RecordCallsAutomaticallyList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "RuntimeException is  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v2, v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/RecordCallsAutomaticallyList$QueryThread;->this$0:Lcom/android/phone/RecordCallsAutomaticallyList;

    iget-object v2, v2, Lcom/android/phone/RecordCallsAutomaticallyList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string/jumbo v2, "RecordCallsAutomaticallyList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QueryThread end: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v2, v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void

    :cond_7
    const/16 v16, 0x1

    :cond_8
    if-eqz v8, :cond_9

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v16, :cond_a

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/RecordCallsAutomaticallyList$QueryThread;->this$0:Lcom/android/phone/RecordCallsAutomaticallyList;

    invoke-static {v2}, Lcom/android/phone/RecordCallsAutomaticallyList;->-get0(Lcom/android/phone/RecordCallsAutomaticallyList;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/RecordCallsAutomaticallyList$QueryThread;->this$0:Lcom/android/phone/RecordCallsAutomaticallyList;

    invoke-static {v2}, Lcom/android/phone/RecordCallsAutomaticallyList;->-get4(Lcom/android/phone/RecordCallsAutomaticallyList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;

    iget-object v2, v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;->contact_name:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/RecordCallsAutomaticallyList$QueryThread;->this$0:Lcom/android/phone/RecordCallsAutomaticallyList;

    invoke-static {v2}, Lcom/android/phone/RecordCallsAutomaticallyList;->-get4(Lcom/android/phone/RecordCallsAutomaticallyList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/RecordCallsAutomaticallyList$QueryThread;->this$0:Lcom/android/phone/RecordCallsAutomaticallyList;

    invoke-static {v5}, Lcom/android/phone/RecordCallsAutomaticallyList;->-get0(Lcom/android/phone/RecordCallsAutomaticallyList;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;->contact_name:Ljava/lang/String;

    :cond_a
    const-string/jumbo v5, "RecordCallsAutomaticallyList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mRecordCallsItemList.get(index).contact_name "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/RecordCallsAutomaticallyList$QueryThread;->this$0:Lcom/android/phone/RecordCallsAutomaticallyList;

    invoke-static {v2}, Lcom/android/phone/RecordCallsAutomaticallyList;->-get4(Lcom/android/phone/RecordCallsAutomaticallyList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;

    iget-object v2, v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;->contact_name:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    invoke-static {v5, v2, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0
.end method
