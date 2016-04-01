.class Lcom/android/server/net/NetworkStatsService$4;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .registers 2

    .prologue
    .line 851
    iput-object p1, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 856
    iget-object v0, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    const/4 v1, 0x3

    # invokes: Lcom/android/server/net/NetworkStatsService;->performPoll(I)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->access$1100(Lcom/android/server/net/NetworkStatsService;I)V

    .line 859
    iget-object v0, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    # invokes: Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$1200(Lcom/android/server/net/NetworkStatsService;)V

    .line 861
    iget-object v0, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mIsVideoCall:Z
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$1000(Lcom/android/server/net/NetworkStatsService;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mIsDuringVideoCall:Z
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$1300(Lcom/android/server/net/NetworkStatsService;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 862
    const-string v0, "NetworkStats"

    const-string/jumbo v1, "mPollReceiver - mismatch mIsVideoCall & mIsDuringVideoCall"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    iget-object v0, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/net/NetworkStatsService;->mIsDuringVideoCall:Z
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->access$1302(Lcom/android/server/net/NetworkStatsService;Z)Z

    .line 864
    iget-object v0, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    # invokes: Lcom/android/server/net/NetworkStatsService;->registerPollAlarmLocked()V
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$1400(Lcom/android/server/net/NetworkStatsService;)V

    .line 867
    :cond_2e
    return-void
.end method
