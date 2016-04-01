.class Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "ExchangeAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getDeviceId(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

.field final synthetic val$sync:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 1556
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    iput-object p2, p0, val$sync:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1559
    const-string/jumbo v2, "userid"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1560
    .local v1, "u1":I
    const-string/jumbo v2, "deviceid"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1561
    .local v0, "deviceid":Ljava/lang/String;
    const-string v2, "ExchangeAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDeviceId() : receive userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , deviceid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    # getter for: Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->access$000()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    iget-object v3, p0, val$sync:Ljava/lang/Object;

    monitor-enter v3

    .line 1565
    :try_start_40
    iget-object v2, p0, val$sync:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1566
    monitor-exit v3

    .line 1567
    return-void

    .line 1566
    :catchall_47
    move-exception v2

    monitor-exit v3
    :try_end_49
    .catchall {:try_start_40 .. :try_end_49} :catchall_47

    throw v2
.end method
