.class public Lcom/sec/epdg/smartwifi/SmartWifiAdapter$LteToWifiCallable;
.super Ljava/lang/Object;
.source "SmartWifiAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LteToWifiCallable"
.end annotation


# instance fields
.field private final mNetworkType:I

.field final synthetic this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;


# direct methods
.method constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;I)V
    .registers 3
    .param p2, "networkType"    # I

    .prologue
    .line 1513
    iput-object p1, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1514
    iput p2, p0, mNetworkType:I

    .line 1515
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1519
    iget-object v0, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    iget v1, p0, mNetworkType:I

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->doLteToWifiHO(I)Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$5000(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1510
    invoke-virtual {p0}, call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
