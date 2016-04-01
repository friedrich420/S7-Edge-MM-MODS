.class Lcom/android/server/enterprise/datetime/DateTimePolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "DateTimePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/datetime/DateTimePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/datetime/DateTimePolicy;)V
    .registers 2

    .prologue
    .line 718
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 721
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 722
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    # getter for: Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfoLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->access$000(Lcom/android/server/enterprise/datetime/DateTimePolicy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 725
    :try_start_13
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    # getter for: Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Landroid/app/enterprise/NtpInfo;
    invoke-static {v0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->access$100(Lcom/android/server/enterprise/datetime/DateTimePolicy;)Landroid/app/enterprise/NtpInfo;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, this$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    # getter for: Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Landroid/app/enterprise/NtpInfo;
    invoke-static {v0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->access$100(Lcom/android/server/enterprise/datetime/DateTimePolicy;)Landroid/app/enterprise/NtpInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/NtpInfo;->getServer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 726
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    # invokes: Lcom/android/server/enterprise/datetime/DateTimePolicy;->sendBroadcastToNtpServices()V
    invoke-static {v0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->access$200(Lcom/android/server/enterprise/datetime/DateTimePolicy;)V

    .line 728
    :cond_2c
    monitor-exit v1

    .line 730
    :cond_2d
    return-void

    .line 728
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_13 .. :try_end_30} :catchall_2e

    throw v0
.end method
