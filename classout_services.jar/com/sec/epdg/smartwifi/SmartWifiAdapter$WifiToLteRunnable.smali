.class public Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiToLteRunnable;
.super Ljava/lang/Object;
.source "SmartWifiAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiToLteRunnable"
.end annotation


# instance fields
.field private mFailure:Ljava/lang/Runnable;

.field private mNetworkType:I

.field private mSuccess:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;


# direct methods
.method constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;ILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 5
    .param p2, "networkType"    # I
    .param p3, "s"    # Ljava/lang/Runnable;
    .param p4, "f"    # Ljava/lang/Runnable;

    .prologue
    .line 344
    iput-object p1, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput p2, p0, mNetworkType:I

    .line 346
    iput-object p3, p0, mSuccess:Ljava/lang/Runnable;

    .line 347
    iput-object p4, p0, mFailure:Ljava/lang/Runnable;

    .line 348
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 352
    new-instance v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTask;

    iget-object v1, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    iget-object v2, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$400(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$ResultRunnable;

    iget-object v4, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    iget-object v5, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$400(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, mSuccess:Ljava/lang/Runnable;

    iget-object v7, p0, mFailure:Ljava/lang/Runnable;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$ResultRunnable;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTask;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Landroid/os/Handler;Lcom/sec/epdg/smartwifi/SmartWifiAdapter$ResultRunnable;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/concurrent/Callable;

    const/4 v2, 0x0

    new-instance v3, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiToLteCallable;

    iget-object v4, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    iget v5, p0, mNetworkType:I

    invoke-direct {v3, v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiToLteCallable;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 355
    return-void
.end method
