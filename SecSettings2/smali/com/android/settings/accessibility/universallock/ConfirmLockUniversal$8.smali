.class Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$8;
.super Ljava/lang/Object;
.source "ConfirmLockUniversal.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$8;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    iput-object p2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$8;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 3
    .param p1, "token"    # [B
    .param p2, "timeoutMs"    # I

    .prologue
    .line 640
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$8;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mPendingLockCheck:Landroid/os/AsyncTask;
    invoke-static {v1, v2}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$1502(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 641
    const-string v1, "ConfirmLockUniversal"

    const-string v2, "startVerifyPattern onVerified:"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const/4 v0, 0x0

    .line 643
    .local v0, "matched":Z
    if-eqz p1, :cond_0

    .line 644
    const/4 v0, 0x1

    .line 645
    const-string v1, "ConfirmLockUniversal"

    const-string v2, "startVerifyPattern token is not null setting token in intent:"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$8;->val$intent:Landroid/content/Intent;

    const-string v2, "hw_auth_token"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 651
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$8;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$8;->val$intent:Landroid/content/Intent;

    # invokes: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->onDirectionChecking(ZLandroid/content/Intent;I)V
    invoke-static {v1, v0, v2, p2}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$1600(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;ZLandroid/content/Intent;I)V

    .line 652
    return-void
.end method
