.class Lcom/android/server/policy/sec/CombinationKeyManager$6;
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
    .line 850
    iput-object p1, p0, this$0:Lcom/android/server/policy/sec/CombinationKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 852
    # getter for: Lcom/android/server/policy/sec/CombinationKeyManager;->SAFE_DEBUG:Z
    invoke-static {}, Lcom/android/server/policy/sec/CombinationKeyManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "CombinationKeyManager"

    const-string/jumbo v2, "startService Camera QuickShot"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.camera.QuickLauncher"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 854
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "QuickShot"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 855
    iget-object v1, p0, this$0:Lcom/android/server/policy/sec/CombinationKeyManager;

    iget-object v1, v1, Lcom/android/server/policy/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 856
    return-void
.end method
