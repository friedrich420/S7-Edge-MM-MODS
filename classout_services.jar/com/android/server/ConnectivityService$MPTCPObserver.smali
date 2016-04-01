.class Lcom/android/server/ConnectivityService$MPTCPObserver;
.super Landroid/database/ContentObserver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MPTCPObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1117
    iput-object p1, p0, this$0:Lcom/android/server/ConnectivityService;

    .line 1118
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1120
    # getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$400(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mptcp_value_internal"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3e

    :goto_1d
    # setter for: Lcom/android/server/ConnectivityService;->mMPTCPEnabled:Z
    invoke-static {p1, v0}, Lcom/android/server/ConnectivityService;->access$302(Lcom/android/server/ConnectivityService;Z)Z

    .line 1122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MPTCPObserver():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/android/server/ConnectivityService;->mMPTCPEnabled:Z
    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$300(Lcom/android/server/ConnectivityService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    .line 1123
    # invokes: Lcom/android/server/ConnectivityService;->updateMptcpDefaultRoute()V
    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$600(Lcom/android/server/ConnectivityService;)V

    .line 1124
    return-void

    :cond_3e
    move v0, v1

    .line 1120
    goto :goto_1d
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1136
    iget-object v2, p0, this$0:Lcom/android/server/ConnectivityService;

    iget-object v3, p0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$400(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mptcp_value_internal"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_3c

    :goto_17
    # setter for: Lcom/android/server/ConnectivityService;->mMPTCPEnabled:Z
    invoke-static {v2, v0}, Lcom/android/server/ConnectivityService;->access$302(Lcom/android/server/ConnectivityService;Z)Z

    .line 1138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MPTCPObserver onChange():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mMPTCPEnabled:Z
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$300(Lcom/android/server/ConnectivityService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    .line 1139
    iget-object v0, p0, this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->updateMptcpDefaultRoute()V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$600(Lcom/android/server/ConnectivityService;)V

    .line 1140
    return-void

    :cond_3c
    move v0, v1

    .line 1136
    goto :goto_17
.end method

.method public register(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1127
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mptcp_value_internal"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1129
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1132
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1133
    return-void
.end method
