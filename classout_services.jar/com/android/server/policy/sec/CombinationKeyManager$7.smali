.class Lcom/android/server/policy/sec/CombinationKeyManager$7;
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
    .line 897
    iput-object p1, p0, this$0:Lcom/android/server/policy/sec/CombinationKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 899
    # getter for: Lcom/android/server/policy/sec/CombinationKeyManager;->SAFE_DEBUG:Z
    invoke-static {}, Lcom/android/server/policy/sec/CombinationKeyManager;->access$000()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "CombinationKeyManager"

    const-string v3, "Stop Lock Task Mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_d
    :try_start_d
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 903
    .local v0, "activityManager":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->stopLockTaskModeOnCurrent()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_15

    .line 907
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    :goto_14
    return-void

    .line 904
    :catch_15
    move-exception v1

    .line 905
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CombinationKeyManager"

    const-string v3, "Unable to reach activity manager"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method
