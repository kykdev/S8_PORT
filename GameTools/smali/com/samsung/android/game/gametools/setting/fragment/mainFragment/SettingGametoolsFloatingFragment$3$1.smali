.class Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$3$1;
.super Ljava/lang/Object;
.source "SettingGametoolsFloatingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$3;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$3$1;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$3$1;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$3;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$3;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getinstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$3$1;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$3;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$3;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GT45"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$3$1;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$3;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$3;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment;

    # getter for: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment;->access$100(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;

    const-string/jumbo v1, "FRAGMENT_HELP_TOOLS"

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->replaceFragment(Ljava/lang/String;)V

    return-void
.end method