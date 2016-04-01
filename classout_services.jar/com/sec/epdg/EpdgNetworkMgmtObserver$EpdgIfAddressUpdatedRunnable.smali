.class Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfAddressUpdatedRunnable;
.super Ljava/lang/Object;
.source "EpdgNetworkMgmtObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgNetworkMgmtObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgIfAddressUpdatedRunnable"
.end annotation


# instance fields
.field private final mAddress:Landroid/net/LinkAddress;

.field private final mIface:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/epdg/EpdgNetworkMgmtObserver;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/EpdgNetworkMgmtObserver;Landroid/net/LinkAddress;Ljava/lang/String;)V
    .registers 5
    .param p2, "address"    # Landroid/net/LinkAddress;
    .param p3, "iface"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, this$0:Lcom/sec/epdg/EpdgNetworkMgmtObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p2, p0, mAddress:Landroid/net/LinkAddress;

    .line 109
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mIface:Ljava/lang/String;

    .line 110
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 114
    iget-object v0, p0, this$0:Lcom/sec/epdg/EpdgNetworkMgmtObserver;

    iget-object v1, p0, mAddress:Landroid/net/LinkAddress;

    iget-object v2, p0, mIface:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/EpdgNetworkMgmtObserver;->EpdgAddressUpdated(Landroid/net/LinkAddress;Ljava/lang/String;)V

    .line 115
    return-void
.end method
