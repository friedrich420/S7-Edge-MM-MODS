.class Lcom/android/server/ConnectivityService$LegacyTypeTracker;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyTypeTracker"
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "CSLegacyTypeTracker"

.field private static final VDBG:Z = true


# instance fields
.field private mTypeLists:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 3

    .prologue
    .line 735
    iput-object p1, p0, this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 736
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/util/ArrayList;

    check-cast v0, [Ljava/util/ArrayList;

    iput-object v0, p0, mTypeLists:[Ljava/util/ArrayList;

    .line 738
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 885
    const-string v0, "CSLegacyTypeTracker"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    return-void
.end method

.method private maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;IZ)V
    .registers 7
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p3, "type"    # I
    .param p4, "isDefaultNetwork"    # Z

    .prologue
    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " broadcast for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isDefaultNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, log(Ljava/lang/String;)V

    .line 771
    return-void
.end method

.method private naiToString(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/lang/String;
    .registers 6
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 855
    if-eqz p1, :cond_45

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v0

    .line 856
    .local v0, "name":Ljava/lang/String;
    :goto_6
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v2, :cond_49

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 859
    .local v1, "state":Ljava/lang/String;
    :goto_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 855
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "state":Ljava/lang/String;
    :cond_45
    const-string/jumbo v0, "null"

    goto :goto_6

    .line 856
    .restart local v0    # "name":Ljava/lang/String;
    :cond_49
    const-string v1, "???/???"

    goto :goto_2d
.end method


# virtual methods
.method public add(ILcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 775
    invoke-virtual {p0, p1}, isTypeSupported(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 795
    :goto_6
    return-void

    .line 778
    :cond_7
    const-string v2, "CSLegacyTypeTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add() : Adding agent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for legacy network type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v2, p0, mTypeLists:[Ljava/util/ArrayList;

    aget-object v3, v2, p1

    monitor-enter v3

    .line 780
    :try_start_2e
    iget-object v2, p0, mTypeLists:[Ljava/util/ArrayList;

    aget-object v1, v2, p1

    .line 781
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 782
    monitor-exit v3

    goto :goto_6

    .line 794
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    :catchall_3a
    move-exception v2

    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_2e .. :try_end_3c} :catchall_3a

    throw v2

    .line 785
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    :cond_3d
    :try_start_3d
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    iget-object v2, p0, this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    invoke-static {v2, p2}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    .line 789
    .local v0, "isDefaultNetwork":Z
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4f

    if-eqz v0, :cond_5f

    :cond_4f
    const/16 v2, 0xd

    if-eq p1, v2, :cond_5f

    .line 791
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, p2, v2, p1, v0}, maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;IZ)V

    .line 792
    iget-object v2, p0, this$0:Lcom/android/server/ConnectivityService;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Lcom/android/server/ConnectivityService;->sendLegacyNetworkBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V
    invoke-static {v2, p2, v4, p1}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V

    .line 794
    :cond_5f
    monitor-exit v3
    :try_end_60
    .catchall {:try_start_3d .. :try_end_60} :catchall_3a

    goto :goto_6
.end method

.method public addSupportedType(I)V
    .registers 5
    .param p1, "type"    # I

    .prologue
    .line 741
    iget-object v0, p0, mTypeLists:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    if-eqz v0, :cond_26

    .line 742
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "legacy list for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "already initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 745
    :cond_26
    iget-object v0, p0, mTypeLists:[Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, p1

    .line 746
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 863
    const-string/jumbo v3, "mLegacyTypeTracker:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 864
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 865
    const-string v3, "Supported types:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 866
    const/4 v2, 0x0

    .local v2, "type":I
    :goto_f
    iget-object v3, p0, mTypeLists:[Ljava/util/ArrayList;

    array-length v3, v3

    if-ge v2, v3, :cond_33

    .line 867
    iget-object v3, p0, mTypeLists:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    if-eqz v3, :cond_30

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 866
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 869
    :cond_33
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 870
    const-string v3, "Current state:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 871
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 872
    const/4 v2, 0x0

    :goto_3f
    iget-object v3, p0, mTypeLists:[Ljava/util/ArrayList;

    array-length v3, v3

    if-ge v2, v3, :cond_8a

    .line 873
    iget-object v3, p0, mTypeLists:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    if-eqz v3, :cond_54

    iget-object v3, p0, mTypeLists:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_57

    .line 872
    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 874
    :cond_57
    iget-object v3, p0, mTypeLists:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_5f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 875
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, naiToString(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5f

    .line 878
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_8a
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 879
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 880
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 881
    return-void
.end method

.method public getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 7
    .param p1, "type"    # I

    .prologue
    .line 753
    const/4 v1, 0x0

    .line 754
    .local v1, "agentInfo":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-virtual {p0, p1}, isTypeSupported(I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 755
    iget-object v2, p0, mTypeLists:[Ljava/util/ArrayList;

    aget-object v3, v2, p1

    monitor-enter v3

    .line 756
    :try_start_c
    iget-object v2, p0, mTypeLists:[Ljava/util/ArrayList;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    .line 757
    iget-object v2, p0, mTypeLists:[Ljava/util/ArrayList;

    aget-object v2, v2, p1

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    move-object v1, v0

    .line 759
    :cond_23
    monitor-exit v3

    .line 761
    :cond_24
    return-object v1

    .line 759
    :catchall_25
    move-exception v2

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_25

    throw v2
.end method

.method public isTypeSupported(I)Z
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 749
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, mTypeLists:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public remove(ILcom/android/server/connectivity/NetworkAgentInfo;Z)V
    .registers 11
    .param p1, "type"    # I
    .param p2, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "wasDefault"    # Z

    .prologue
    .line 799
    iget-object v4, p0, mTypeLists:[Ljava/util/ArrayList;

    aget-object v0, v4, p1

    .line 800
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 829
    :cond_c
    :goto_c
    return-void

    .line 803
    :cond_d
    iget-object v4, p0, mTypeLists:[Ljava/util/ArrayList;

    aget-object v5, v4, p1

    monitor-enter v5

    .line 804
    :try_start_12
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 805
    monitor-exit v5

    goto :goto_c

    .line 828
    :catchall_1a
    move-exception v4

    monitor-exit v5
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw v4

    .line 808
    :cond_1d
    const/4 v4, 0x0

    :try_start_1e
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 810
    .local v3, "wasFirstNetwork":Z
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 811
    monitor-exit v5

    goto :goto_c

    .line 814
    :cond_30
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 816
    .local v2, "state":Landroid/net/NetworkInfo$DetailedState;
    if-nez v3, :cond_36

    if-eqz p3, :cond_3e

    .line 817
    :cond_36
    invoke-direct {p0, p2, v2, p1, p3}, maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;IZ)V

    .line 818
    iget-object v4, p0, this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->sendLegacyNetworkBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V
    invoke-static {v4, p2, v2, p1}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V

    .line 821
    :cond_3e
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_77

    if-eqz v3, :cond_77

    .line 822
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Other network available for type "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", sending connected broadcast"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, log(Ljava/lang/String;)V

    .line 824
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 825
    .local v1, "replacement":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v4, p0, this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    invoke-static {v4, v1}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v4

    invoke-direct {p0, v1, v2, p1, v4}, maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;IZ)V

    .line 826
    iget-object v4, p0, this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->sendLegacyNetworkBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V
    invoke-static {v4, v1, v2, p1}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V

    .line 828
    .end local v1    # "replacement":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_77
    monitor-exit v5
    :try_end_78
    .catchall {:try_start_1e .. :try_end_78} :catchall_1a

    goto :goto_c
.end method

.method public remove(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V
    .registers 6
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "wasDefault"    # Z

    .prologue
    .line 832
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing agent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " wasDefault="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 833
    const/4 v0, 0x0

    .local v0, "type":I
    :goto_21
    iget-object v1, p0, mTypeLists:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_2c

    .line 834
    invoke-virtual {p0, v0, p1, p2}, remove(ILcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 833
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 836
    :cond_2c
    return-void
.end method

.method public update(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 11
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 841
    iget-object v8, p0, this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    invoke-static {v8, p1}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v1

    .line 842
    .local v1, "isDefault":Z
    iget-object v8, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    .line 843
    .local v4, "state":Landroid/net/NetworkInfo$DetailedState;
    const/4 v5, 0x0

    .local v5, "type":I
    :goto_f
    iget-object v8, p0, mTypeLists:[Ljava/util/ArrayList;

    array-length v8, v8

    if-ge v5, v8, :cond_45

    .line 844
    iget-object v8, p0, mTypeLists:[Ljava/util/ArrayList;

    aget-object v3, v8, v5

    .line 845
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    if-eqz v3, :cond_41

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_41

    move v0, v6

    .line 846
    .local v0, "contains":Z
    :goto_21
    if-eqz v3, :cond_43

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_43

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_43

    move v2, v6

    .line 847
    .local v2, "isFirst":Z
    :goto_30
    if-nez v2, :cond_36

    if-eqz v0, :cond_3e

    if-eqz v1, :cond_3e

    .line 848
    :cond_36
    invoke-direct {p0, p1, v4, v5, v1}, maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;IZ)V

    .line 849
    iget-object v8, p0, this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->sendLegacyNetworkBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V
    invoke-static {v8, p1, v4, v5}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V

    .line 843
    :cond_3e
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .end local v0    # "contains":Z
    .end local v2    # "isFirst":Z
    :cond_41
    move v0, v7

    .line 845
    goto :goto_21

    .restart local v0    # "contains":Z
    :cond_43
    move v2, v7

    .line 846
    goto :goto_30

    .line 852
    .end local v0    # "contains":Z
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    :cond_45
    return-void
.end method
