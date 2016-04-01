.class Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;
.super Landroid/os/AsyncTask;
.source "FirewallPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/FirewallPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HostnameResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mFinishResolving:Z

.field final synthetic this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V
    .registers 3

    .prologue
    .line 2119
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2120
    const/4 v0, 0x0

    iput-boolean v0, p0, mFinishResolving:Z

    .line 2121
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 2117
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .registers 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2124
    const/4 v2, 0x0

    aget-object v1, p1, v2

    .line 2125
    .local v1, "hostname":Ljava/lang/String;
    # setter for: Lcom/android/server/enterprise/firewall/FirewallPolicy;->allIpsInfo:[Ljava/net/InetAddress;
    invoke-static {v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$702([Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    .line 2127
    :try_start_8
    invoke-static {v1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    # setter for: Lcom/android/server/enterprise/firewall/FirewallPolicy;->allIpsInfo:[Ljava/net/InetAddress;
    invoke-static {v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$702([Ljava/net/InetAddress;)[Ljava/net/InetAddress;
    :try_end_f
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_f} :catch_23
    .catchall {:try_start_8 .. :try_end_f} :catchall_2a

    .line 2131
    iput-boolean v3, p0, mFinishResolving:Z

    .line 2133
    :goto_11
    iget-object v2, p0, this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    # getter for: Lcom/android/server/enterprise/firewall/FirewallPolicy;->mLocker:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$800(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2134
    :try_start_18
    iget-object v2, p0, this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    # getter for: Lcom/android/server/enterprise/firewall/FirewallPolicy;->mLocker:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$800(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 2135
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_2e

    .line 2136
    return-object v4

    .line 2128
    :catch_23
    move-exception v0

    .line 2129
    .local v0, "e":Ljava/net/UnknownHostException;
    :try_start_24
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2a

    .line 2131
    iput-boolean v3, p0, mFinishResolving:Z

    goto :goto_11

    .end local v0    # "e":Ljava/net/UnknownHostException;
    :catchall_2a
    move-exception v2

    iput-boolean v3, p0, mFinishResolving:Z

    throw v2

    .line 2135
    :catchall_2e
    move-exception v2

    :try_start_2f
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v2
.end method

.method protected isFinished()Z
    .registers 2

    .prologue
    .line 2139
    iget-boolean v0, p0, mFinishResolving:Z

    return v0
.end method
