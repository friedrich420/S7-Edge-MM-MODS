.class Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;
.super Landroid/content/BroadcastReceiver;
.source "DLPManagerPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->registerBootReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)V
    .registers 2

    .prologue
    .line 120
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 124
    iget-object v4, p0, this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    iget-object v4, v4, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 125
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 126
    .local v3, "userInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v3, :cond_1e

    .line 127
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "userInfo list returned is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_1d
    return-void

    .line 130
    :cond_1e
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_22
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 131
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isActivated(I)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 132
    iget-object v4, p0, this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    const/4 v5, 0x1

    # invokes: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->registerOrUnregisterProcessObserver(Z)Z
    invoke-static {v4, v5}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$100(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;Z)Z

    goto :goto_22
.end method
