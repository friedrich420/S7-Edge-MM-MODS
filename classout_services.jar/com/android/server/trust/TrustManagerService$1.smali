.class Lcom/android/server/trust/TrustManagerService$1;
.super Landroid/app/trust/ITrustManager$Stub;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .registers 2

    .prologue
    .line 623
    iput-object p1, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0}, Landroid/app/trust/ITrustManager$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/trust/TrustManagerService$1;Ljava/io/PrintWriter;Landroid/content/pm/UserInfo;Z)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService$1;
    .param p1, "x1"    # Ljava/io/PrintWriter;
    .param p2, "x2"    # Landroid/content/pm/UserInfo;
    .param p3, "x3"    # Z

    .prologue
    .line 623
    invoke-direct {p0, p1, p2, p3}, dumpUser(Ljava/io/PrintWriter;Landroid/content/pm/UserInfo;Z)V

    return-void
.end method

.method private dumpBool(Z)Ljava/lang/String;
    .registers 3
    .param p1, "b"    # Z

    .prologue
    .line 769
    if-eqz p1, :cond_5

    const-string v0, "1"

    :goto_4
    return-object v0

    :cond_5
    const-string v0, "0"

    goto :goto_4
.end method

.method private dumpHex(I)Ljava/lang/String;
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private dumpUser(Ljava/io/PrintWriter;Landroid/content/pm/UserInfo;Z)V
    .registers 15
    .param p1, "fout"    # Ljava/io/PrintWriter;
    .param p2, "user"    # Landroid/content/pm/UserInfo;
    .param p3, "isCurrent"    # Z

    .prologue
    .line 722
    const-string v0, " User \"%s\" (id=%d, flags=%#x)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p2, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 724
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v0

    if-nez v0, :cond_30

    .line 725
    const-string v0, "(managed profile)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 726
    const-string v0, "   disabled because switching to this user is not possible."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 766
    :goto_2f
    return-void

    .line 729
    :cond_30
    if-eqz p3, :cond_37

    .line 730
    const-string v0, " (current)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 732
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": trusted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    # invokes: Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z
    invoke-static {v1, v2}, Lcom/android/server/trust/TrustManagerService;->access$900(Lcom/android/server/trust/TrustManagerService;I)Z

    move-result v1

    invoke-direct {p0, v1}, dumpBool(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", trustManaged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    # invokes: Lcom/android/server/trust/TrustManagerService;->aggregateIsTrustManaged(I)Z
    invoke-static {v1, v2}, Lcom/android/server/trust/TrustManagerService;->access$1000(Lcom/android/server/trust/TrustManagerService;I)Z

    move-result v1

    invoke-direct {p0, v1}, dumpBool(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", deviceLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    move-result v1

    invoke-direct {p0, v1}, dumpBool(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", strongAuthRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->access$1100(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    move-result-object v1

    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v1

    invoke-direct {p0, v1}, dumpHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 738
    const-string v0, "   Enabled agents:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 739
    const/4 v5, 0x0

    .line 740
    .local v5, "duplicateSimpleNames":Z
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 741
    .local v9, "simpleNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$1200(Lcom/android/server/trust/TrustManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_db
    :goto_db
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1de

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 742
    .local v7, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v0, v7, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    if-ne v0, v1, :cond_db

    .line 743
    iget-object v0, v7, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v0}, Lcom/android/server/trust/TrustAgentWrapper;->isTrusted()Z

    move-result v10

    .line 744
    .local v10, "trusted":Z
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     bound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v1}, Lcom/android/server/trust/TrustAgentWrapper;->isBound()Z

    move-result v1

    invoke-direct {p0, v1}, dumpBool(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", connected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v1}, Lcom/android/server/trust/TrustAgentWrapper;->isConnected()Z

    move-result v1

    invoke-direct {p0, v1}, dumpBool(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", managingTrust="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v1}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v1

    invoke-direct {p0, v1}, dumpBool(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", trusted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v10}, dumpBool(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 749
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 750
    if-eqz v10, :cond_1a2

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      message=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v1}, Lcom/android/server/trust/TrustAgentWrapper;->getMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 753
    :cond_1a2
    iget-object v0, v7, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v0}, Lcom/android/server/trust/TrustAgentWrapper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1cf

    .line 754
    iget-object v0, v7, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v0}, Lcom/android/server/trust/TrustAgentWrapper;->getScheduledRestartUptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/android/server/trust/TrustArchive;->formatDuration(J)Ljava/lang/String;

    move-result-object v8

    .line 757
    .local v8, "restartTime":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      restartScheduledAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 759
    .end local v8    # "restartTime":Ljava/lang/String;
    :cond_1cf
    iget-object v0, v7, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/android/server/trust/TrustArchive;->getSimpleName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_db

    .line 760
    const/4 v5, 0x1

    goto/16 :goto_db

    .line 763
    .end local v7    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    .end local v10    # "trusted":Z
    :cond_1de
    const-string v0, "   Events:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 764
    iget-object v0, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    const/16 v2, 0x32

    iget v3, p2, Landroid/content/pm/UserInfo;->id:I

    const-string v4, "    "

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/trust/TrustArchive;->dump(Ljava/io/PrintWriter;IILjava/lang/String;Z)V

    .line 765
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_2f
.end method

.method private enforceListenerPermission()V
    .registers 4

    .prologue
    .line 692
    iget-object v0, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$400(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TRUST_LISTENER"

    const-string/jumbo v2, "register trust listener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    return-void
.end method

.method private enforceReportPermission()V
    .registers 4

    .prologue
    .line 683
    iget-object v0, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$400(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string/jumbo v2, "reporting trust events"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 699
    iget-object v1, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->access$400(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.DUMP"

    const-string/jumbo v3, "dumping TrustManagerService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    iget-object v1, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v1}, Lcom/android/server/trust/TrustManagerService;->isSafeMode()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 702
    const-string/jumbo v1, "disabled because the system is in safe mode."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 719
    :goto_1c
    return-void

    .line 705
    :cond_1d
    iget-object v1, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z
    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->access$500(Lcom/android/server/trust/TrustManagerService;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 706
    const-string/jumbo v1, "disabled because the third-party apps can\'t run yet."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1c

    .line 709
    :cond_2c
    iget-object v1, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;
    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->access$600(Lcom/android/server/trust/TrustManagerService;)Landroid/os/UserManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 710
    .local v0, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v1, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->access$200(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/trust/TrustManagerService$1$1;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/server/trust/TrustManagerService$1$1;-><init>(Lcom/android/server/trust/TrustManagerService$1;Ljava/io/PrintWriter;Ljava/util/List;)V

    const-wide/16 v4, 0x5dc

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    goto :goto_1c
.end method

.method public isDeviceLocked(I)Z
    .registers 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 661
    invoke-static {}, getCallingPid()I

    move-result v0

    invoke-static {}, getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v5, "isDeviceLocked"

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 663
    iget-object v0, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    # invokes: Lcom/android/server/trust/TrustManagerService;->resolveProfileParent(I)I
    invoke-static {v0, p1}, Lcom/android/server/trust/TrustManagerService;->access$300(Lcom/android/server/trust/TrustManagerService;I)I

    move-result p1

    .line 665
    iget-object v0, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    move-result v0

    return v0
.end method

.method public isDeviceSecure(I)Z
    .registers 12
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 670
    invoke-static {}, getCallingPid()I

    move-result v0

    invoke-static {}, getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v5, "isDeviceSecure"

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 672
    iget-object v0, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    # invokes: Lcom/android/server/trust/TrustManagerService;->resolveProfileParent(I)I
    invoke-static {v0, p1}, Lcom/android/server/trust/TrustManagerService;->access$300(Lcom/android/server/trust/TrustManagerService;I)I

    move-result p1

    .line 674
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 676
    .local v8, "token":J
    :try_start_1d
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->access$400(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_30

    move-result v0

    .line 678
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_30
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public registerTrustListener(Landroid/app/trust/ITrustListener;)V
    .registers 4
    .param p1, "trustListener"    # Landroid/app/trust/ITrustListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 649
    invoke-direct {p0}, enforceListenerPermission()V

    .line 650
    iget-object v0, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$200(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 651
    return-void
.end method

.method public reportEnabledTrustAgentsChanged(I)V
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    .line 633
    invoke-direct {p0}, enforceReportPermission()V

    .line 635
    iget-object v0, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$200(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 636
    iget-object v0, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$200(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 637
    return-void
.end method

.method public reportKeyguardShowingChanged()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x6

    .line 641
    invoke-direct {p0}, enforceReportPermission()V

    .line 643
    iget-object v0, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$200(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 644
    iget-object v0, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$200(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 645
    return-void
.end method

.method public reportUnlockAttempt(ZI)V
    .registers 6
    .param p1, "authenticated"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 626
    invoke-direct {p0}, enforceReportPermission()V

    .line 627
    iget-object v0, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$200(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    if-eqz p1, :cond_15

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {v1, v2, v0, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 629
    return-void

    .line 627
    :cond_15
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public unregisterTrustListener(Landroid/app/trust/ITrustListener;)V
    .registers 4
    .param p1, "trustListener"    # Landroid/app/trust/ITrustListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 655
    invoke-direct {p0}, enforceListenerPermission()V

    .line 656
    iget-object v0, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$200(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 657
    return-void
.end method
