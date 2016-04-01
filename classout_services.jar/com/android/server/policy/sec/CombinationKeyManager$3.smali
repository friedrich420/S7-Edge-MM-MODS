.class Lcom/android/server/policy/sec/CombinationKeyManager$3;
.super Ljava/lang/Object;
.source "CombinationKeyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/sec/CombinationKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/sec/CombinationKeyManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/sec/CombinationKeyManager;)V
    .registers 2

    .prologue
    .line 730
    iput-object p1, p0, this$0:Lcom/android/server/policy/sec/CombinationKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 733
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.accesscontrol.TOGGLE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 735
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, this$0:Lcom/android/server/policy/sec/CombinationKeyManager;

    iget-object v1, v1, Lcom/android/server/policy/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 736
    # getter for: Lcom/android/server/policy/sec/CombinationKeyManager;->SAFE_DEBUG:Z
    invoke-static {}, Lcom/android/server/policy/sec/CombinationKeyManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "CombinationKeyManager"

    const-string v2, "Access Control mesage : broadcast"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_1d
    return-void
.end method
