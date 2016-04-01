.class Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy$1;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;)V
    .registers 2

    .prologue
    .line 3731
    iput-object p1, p0, this$1:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 3734
    :try_start_0
    iget-object v2, p0, this$1:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    iget-object v2, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v1

    .line 3736
    .local v1, "topActivity":Landroid/content/ComponentName;
    if-eqz v1, :cond_4a

    .line 3737
    iget-object v2, p0, this$1:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    # getter for: Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mSFinderIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->access$800(Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "componentname"

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3739
    const-string v2, "SFinderLaunchPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mStartSFinder: top="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3741
    iget-object v2, p0, this$1:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    iget-object v2, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, this$1:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    # getter for: Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mSFinderIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->access$800(Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;)Landroid/content/Intent;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3748
    .end local v1    # "topActivity":Landroid/content/ComponentName;
    :goto_49
    return-void

    .line 3743
    .restart local v1    # "topActivity":Landroid/content/ComponentName;
    :cond_4a
    const-string v2, "SFinderLaunchPolicy"

    const-string/jumbo v3, "mStartSFinder: Unknown top activity!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_52} :catch_53

    goto :goto_49

    .line 3745
    .end local v1    # "topActivity":Landroid/content/ComponentName;
    :catch_53
    move-exception v0

    .line 3746
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SFinderLaunchPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mStartSFinder: Cannot launch activity : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49
.end method
