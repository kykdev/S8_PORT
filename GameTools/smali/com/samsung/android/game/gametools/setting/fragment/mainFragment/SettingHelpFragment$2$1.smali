.class Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment$2$1;
.super Ljava/lang/Object;
.source "SettingHelpFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment$2$1;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment$2$1;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment$2;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment$2;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->goFAQ()V

    return-void
.end method