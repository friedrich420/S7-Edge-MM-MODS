.class Lcom/android/server/enterprise/security/SecurityPolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/security/SecurityPolicy;->formatExternalStorageCard()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

.field final synthetic val$lock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 738
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    iput-object p2, p0, val$lock:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 740
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 741
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 743
    .local v2, "path":Ljava/lang/String;
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 744
    iget-object v4, p0, val$lock:Ljava/lang/Object;

    monitor-enter v4

    .line 746
    :try_start_17
    iget-object v3, p0, this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z
    invoke-static {v3, v5}, Lcom/android/server/enterprise/security/SecurityPolicy;->access$1202(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z

    .line 747
    iget-object v3, p0, val$lock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V
    :try_end_22
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_17 .. :try_end_22} :catch_24
    .catchall {:try_start_17 .. :try_end_22} :catchall_2e

    .line 751
    :goto_22
    :try_start_22
    monitor-exit v4

    .line 753
    :cond_23
    return-void

    .line 748
    :catch_24
    move-exception v1

    .line 749
    .local v1, "e":Ljava/lang/IllegalMonitorStateException;
    const-string v3, "SecurityPolicy"

    const-string/jumbo v5, "formatStorageCard - IllegalMonitorStateException"

    invoke-static {v3, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 751
    .end local v1    # "e":Ljava/lang/IllegalMonitorStateException;
    :catchall_2e
    move-exception v3

    monitor-exit v4
    :try_end_30
    .catchall {:try_start_22 .. :try_end_30} :catchall_2e

    throw v3
.end method
