.class Lcom/android/server/LockSettingsService$2;
.super Landroid/content/BroadcastReceiver;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsService;)V
    .registers 2

    .prologue
    .line 897
    iput-object p1, p0, this$0:Lcom/android/server/LockSettingsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 900
    const-string v5, "android.intent.action.USER_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 902
    const-string v5, "android.intent.extra.user_handle"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 903
    .local v4, "userHandle":I
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 904
    .local v0, "ks":Landroid/security/KeyStore;
    iget-object v5, p0, this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/LockSettingsService;->access$900(Lcom/android/server/LockSettingsService;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 905
    .local v3, "um":Landroid/os/UserManager;
    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 906
    .local v2, "parentInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_39

    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    .line 907
    .local v1, "parentHandle":I
    :goto_2e
    invoke-virtual {v0, v4, v1}, Landroid/security/KeyStore;->onUserAdded(II)V

    .line 910
    iget-object v5, p0, this$0:Lcom/android/server/LockSettingsService;

    const-wide/16 v6, 0x1

    # invokes: Lcom/android/server/LockSettingsService;->setKnoxRecoveryVersion(JI)V
    invoke-static {v5, v6, v7, v4}, Lcom/android/server/LockSettingsService;->access$1000(Lcom/android/server/LockSettingsService;JI)V

    .line 923
    .end local v0    # "ks":Landroid/security/KeyStore;
    .end local v1    # "parentHandle":I
    .end local v2    # "parentInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "um":Landroid/os/UserManager;
    .end local v4    # "userHandle":I
    :cond_38
    :goto_38
    return-void

    .line 906
    .restart local v0    # "ks":Landroid/security/KeyStore;
    .restart local v2    # "parentInfo":Landroid/content/pm/UserInfo;
    .restart local v3    # "um":Landroid/os/UserManager;
    .restart local v4    # "userHandle":I
    :cond_39
    const/4 v1, -0x1

    goto :goto_2e

    .line 912
    .end local v0    # "ks":Landroid/security/KeyStore;
    .end local v2    # "parentInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "um":Landroid/os/UserManager;
    .end local v4    # "userHandle":I
    :cond_3b
    const-string v5, "android.intent.action.USER_STARTING"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 913
    const-string v5, "android.intent.extra.user_handle"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 914
    .restart local v4    # "userHandle":I
    iget-object v5, p0, this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;
    invoke-static {v5}, Lcom/android/server/LockSettingsService;->access$600(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsStorage;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/LockSettingsStorage;->prefetchUser(I)V

    goto :goto_38

    .line 915
    .end local v4    # "userHandle":I
    :cond_57
    const-string v5, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 916
    iget-object v5, p0, this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;
    invoke-static {v5}, Lcom/android/server/LockSettingsService;->access$1100(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsStrongAuth;

    move-result-object v5

    invoke-virtual {p0}, getSendingUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/LockSettingsStrongAuth;->reportUnlock(I)V

    goto :goto_38

    .line 917
    :cond_71
    const-string v5, "android.intent.action.USER_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 918
    const-string v5, "android.intent.extra.user_handle"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 919
    .restart local v4    # "userHandle":I
    if-lez v4, :cond_38

    .line 920
    iget-object v5, p0, this$0:Lcom/android/server/LockSettingsService;

    # invokes: Lcom/android/server/LockSettingsService;->removeUser(I)V
    invoke-static {v5, v4}, Lcom/android/server/LockSettingsService;->access$1200(Lcom/android/server/LockSettingsService;I)V

    goto :goto_38
.end method
