.class Lcom/android/server/connectivity/NetworkMonitor$2;
.super Landroid/net/ICaptivePortal$Stub;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/NetworkMonitor;->startLoginActivity(Landroid/net/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .registers 2

    .prologue
    .line 778
    iput-object p1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Landroid/net/ICaptivePortal$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public appResponse(I)V
    .registers 5
    .param p1, "response"    # I

    .prologue
    .line 781
    const/4 v0, 0x2

    if-ne p1, v0, :cond_10

    .line 782
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "CaptivePortal"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    :cond_10
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v1, 0x82009

    invoke-virtual {v0, v1, p1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(II)V

    .line 787
    return-void
.end method
