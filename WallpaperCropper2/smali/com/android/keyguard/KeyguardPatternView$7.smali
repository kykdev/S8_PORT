.class Lcom/android/keyguard/KeyguardPatternView$7;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPatternView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPatternView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$7;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$7;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$600(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method
