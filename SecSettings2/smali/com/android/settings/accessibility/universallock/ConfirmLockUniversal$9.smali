.class Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$9;
.super Ljava/lang/Object;
.source "ConfirmLockUniversal.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V
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
    .line 668
    iput-object p1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$9;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    iput-object p2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$9;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 3
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$9;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mPendingLockCheck:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$1502(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 672
    if-eqz p1, :cond_0

    .line 673
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$9;->val$intent:Landroid/content/Intent;

    const-string v1, "password"

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$9;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v2}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$000(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$9;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$9;->val$intent:Landroid/content/Intent;

    # invokes: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->onDirectionChecking(ZLandroid/content/Intent;I)V
    invoke-static {v0, p1, v1, p2}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$1600(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;ZLandroid/content/Intent;I)V

    .line 677
    return-void
.end method
