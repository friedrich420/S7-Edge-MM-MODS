.class Lcom/android/settings/CryptKeeper$4;
.super Landroid/content/BroadcastReceiver;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 692
    iput-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 695
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 696
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 697
    const-string v1, "CryptKeeper"

    const-string v2, "CryptKeeper received ACTION_BOOT_COMPLETED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    # setter for: Lcom/android/settings/CryptKeeper;->mBootCompleted:Z
    invoke-static {v1, v3}, Lcom/android/settings/CryptKeeper;->access$1502(Lcom/android/settings/CryptKeeper;Z)Z

    .line 699
    iget-object v1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    # getter for: Lcom/android/settings/CryptKeeper;->mResetButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->access$1600(Lcom/android/settings/CryptKeeper;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 700
    iget-object v1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    # getter for: Lcom/android/settings/CryptKeeper;->mResetButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->access$1600(Lcom/android/settings/CryptKeeper;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 703
    :cond_0
    return-void
.end method
