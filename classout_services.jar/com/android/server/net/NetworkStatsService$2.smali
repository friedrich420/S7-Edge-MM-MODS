.class Lcom/android/server/net/NetworkStatsService$2;
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
    .line 828
    iput-object p1, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 831
    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 832
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    const-string v2, "activevideo"

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v2

    # setter for: Lcom/android/server/net/NetworkStatsService;->mIsVideoCall:Z
    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsService;->access$1002(Lcom/android/server/net/NetworkStatsService;Z)Z

    .line 833
    const-string v1, "NetworkStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mVideoCallReceiver - mIsVideoCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mIsVideoCall:Z
    invoke-static {v3}, Lcom/android/server/net/NetworkStatsService;->access$1000(Lcom/android/server/net/NetworkStatsService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    return-void
.end method
