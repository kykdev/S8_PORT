.class Lcom/android/launcher3/home/HomeController$25;
.super Ljava/lang/Object;
.source "HomeController.java"

# interfaces
.implements Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeController;->removeItemsByMatcher(Lcom/android/launcher3/util/ItemInfoMatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeController;

.field final synthetic val$children:Ljava/util/HashMap;

.field final synthetic val$childrenToRemove:Ljava/util/ArrayList;

.field final synthetic val$folderAppsToRemove:Ljava/util/HashMap;

.field final synthetic val$matcher:Lcom/android/launcher3/util/ItemInfoMatcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/util/ItemInfoMatcher;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeController$25;->this$0:Lcom/android/launcher3/home/HomeController;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeController$25;->val$matcher:Lcom/android/launcher3/util/ItemInfoMatcher;

    iput-object p3, p0, Lcom/android/launcher3/home/HomeController$25;->val$folderAppsToRemove:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/android/launcher3/home/HomeController$25;->val$childrenToRemove:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/launcher3/home/HomeController$25;->val$children:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterItem(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 5

    const/4 v2, 0x1

    instance-of v3, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController$25;->val$matcher:Lcom/android/launcher3/util/ItemInfoMatcher;

    invoke-virtual {v3, p2, p3}, Lcom/android/launcher3/util/ItemInfoMatcher;->matches(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController$25;->val$folderAppsToRemove:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController$25;->val$folderAppsToRemove:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :goto_0
    check-cast p2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    return v2

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController$25;->val$folderAppsToRemove:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController$25;->val$matcher:Lcom/android/launcher3/util/ItemInfoMatcher;

    invoke-virtual {v3, p2, p3}, Lcom/android/launcher3/util/ItemInfoMatcher;->matches(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController$25;->val$childrenToRemove:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController$25;->val$children:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method
