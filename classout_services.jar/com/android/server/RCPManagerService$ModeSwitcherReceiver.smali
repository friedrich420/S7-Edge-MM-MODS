.class Lcom/android/server/RCPManagerService$ModeSwitcherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RCPManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RCPManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeSwitcherReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RCPManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/RCPManagerService;)V
    .registers 2

    .prologue
    .line 1024
    iput-object p1, p0, this$0:Lcom/android/server/RCPManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/RCPManagerService;Lcom/android/server/RCPManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/RCPManagerService;
    .param p2, "x1"    # Lcom/android/server/RCPManagerService$1;

    .prologue
    .line 1024
    invoke-direct {p0, p1}, <init>(Lcom/android/server/RCPManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, -0x1

    .line 1027
    if-eqz p2, :cond_193

    .line 1028
    const-string v5, "android.intent.extra.user_handle"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1031
    .local v4, "userId":I
    const-string v5, "android.intent.action.USER_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 1032
    iget-object v5, p0, this$0:Lcom/android/server/RCPManagerService;

    # invokes: Lcom/android/server/RCPManagerService;->updateKnoxInfo()V
    invoke-static {v5}, Lcom/android/server/RCPManagerService;->access$1100(Lcom/android/server/RCPManagerService;)V

    .line 1033
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "User added with userId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iget-object v5, p0, this$0:Lcom/android/server/RCPManagerService;

    iget-object v5, v5, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "persona"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 1042
    .local v0, "mPersonaManager":Landroid/os/PersonaManager;
    if-eq v4, v8, :cond_8f

    if-eqz v0, :cond_8f

    .line 1043
    invoke-virtual {v0, v4}, Landroid/os/PersonaManager;->getParentId(I)I

    move-result v1

    .line 1044
    .local v1, "parentId":I
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parentId - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", userId - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    if-eq v1, v4, :cond_8f

    .line 1048
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ModeSwitcherReceiver.onReceive(): Starting RCP Proxy for user = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    iget-object v5, p0, this$0:Lcom/android/server/RCPManagerService;

    invoke-virtual {v5, v1}, Lcom/android/server/RCPManagerService;->scanAndStartRCPProxy(I)V

    .line 1056
    .end local v0    # "mPersonaManager":Landroid/os/PersonaManager;
    .end local v1    # "parentId":I
    :cond_8f
    const-string v5, "android.intent.action.USER_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 1057
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "User removed with userId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iget-object v5, p0, this$0:Lcom/android/server/RCPManagerService;

    # invokes: Lcom/android/server/RCPManagerService;->updateKnoxInfo()V
    invoke-static {v5}, Lcom/android/server/RCPManagerService;->access$1100(Lcom/android/server/RCPManagerService;)V

    .line 1065
    :cond_ba
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.samsung.knox.fmc_incoming_call"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d3

    .line 1066
    iget-object v5, p0, this$0:Lcom/android/server/RCPManagerService;

    iget-object v5, v5, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "persona"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersonaManager;

    .line 1071
    :cond_d3
    const-string v5, "android.intent.action.USER_STARTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e6

    .line 1072
    if-nez v4, :cond_e6

    .line 1073
    iget-object v5, p0, this$0:Lcom/android/server/RCPManagerService;

    # invokes: Lcom/android/server/RCPManagerService;->updateKnoxInfo()V
    invoke-static {v5}, Lcom/android/server/RCPManagerService;->access$1100(Lcom/android/server/RCPManagerService;)V

    .line 1077
    :cond_e6
    const-string v5, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_193

    .line 1079
    const-string v5, "android.intent.extra.USER"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 1081
    .local v3, "profileId":Landroid/os/UserHandle;
    if-eqz v3, :cond_193

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    const/16 v6, 0x64

    if-lt v5, v6, :cond_193

    .line 1083
    iget-object v5, p0, this$0:Lcom/android/server/RCPManagerService;

    # invokes: Lcom/android/server/RCPManagerService;->updateKnoxInfo()V
    invoke-static {v5}, Lcom/android/server/RCPManagerService;->access$1100(Lcom/android/server/RCPManagerService;)V

    .line 1085
    iget-object v5, p0, this$0:Lcom/android/server/RCPManagerService;

    const-string v6, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    # invokes: Lcom/android/server/RCPManagerService;->startKnoxModeSwitcher(Ljava/lang/String;I)V
    invoke-static {v5, v6, v7}, Lcom/android/server/RCPManagerService;->access$600(Lcom/android/server/RCPManagerService;Ljava/lang/String;I)V

    .line 1090
    iget-object v5, p0, this$0:Lcom/android/server/RCPManagerService;

    iget-object v5, v5, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "persona"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    .line 1092
    .local v2, "personaManager":Landroid/os/PersonaManager;
    if-eqz v2, :cond_179

    .line 1093
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/os/PersonaManager;->getParentId(I)I

    move-result v1

    .line 1094
    .restart local v1    # "parentId":I
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parentId - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", profileId - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    if-eq v1, v5, :cond_179

    .line 1096
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_MANAGED_PROFILE_ADDED : Starting RCP Proxy for user = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    iget-object v5, p0, this$0:Lcom/android/server/RCPManagerService;

    invoke-virtual {v5, v1}, Lcom/android/server/RCPManagerService;->scanAndStartRCPProxy(I)V

    .line 1105
    .end local v1    # "parentId":I
    :cond_179
    iget-object v5, p0, this$0:Lcom/android/server/RCPManagerService;

    # invokes: Lcom/android/server/RCPManagerService;->checkIfGearConnected()Z
    invoke-static {v5}, Lcom/android/server/RCPManagerService;->access$1200(Lcom/android/server/RCPManagerService;)Z

    move-result v5

    if-eqz v5, :cond_18a

    .line 1111
    iget-object v5, p0, this$0:Lcom/android/server/RCPManagerService;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    # invokes: Lcom/android/server/RCPManagerService;->sendRCPPolicyBroadcastToGearManager(Landroid/content/Context;I)V
    invoke-static {v5, p1, v6}, Lcom/android/server/RCPManagerService;->access$100(Lcom/android/server/RCPManagerService;Landroid/content/Context;I)V

    .line 1115
    :cond_18a
    iget-object v5, p0, this$0:Lcom/android/server/RCPManagerService;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    # invokes: Lcom/android/server/RCPManagerService;->registerPersonaObserver(I)V
    invoke-static {v5, v6}, Lcom/android/server/RCPManagerService;->access$1300(Lcom/android/server/RCPManagerService;I)V

    .line 1120
    .end local v2    # "personaManager":Landroid/os/PersonaManager;
    .end local v3    # "profileId":Landroid/os/UserHandle;
    .end local v4    # "userId":I
    :cond_193
    return-void
.end method
