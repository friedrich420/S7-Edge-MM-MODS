.class Lcom/android/settings/ethernet/EthernetEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "EthernetEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ethernet/EthernetEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ethernet/EthernetEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/ethernet/EthernetEnabler;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings/ethernet/EthernetEnabler$1;->this$0:Lcom/android/settings/ethernet/EthernetEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 61
    const-string v0, "SettingsEthEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent.getAction() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "samsung.net.ethernet.ETH_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetEnabler$1;->this$0:Lcom/android/settings/ethernet/EthernetEnabler;

    const-string v1, "eth_state"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "previous_eth_state"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # invokes: Lcom/android/settings/ethernet/EthernetEnabler;->handleEthStateChanged(II)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/ethernet/EthernetEnabler;->access$000(Lcom/android/settings/ethernet/EthernetEnabler;II)V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.ethernet.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetEnabler$1;->this$0:Lcom/android/settings/ethernet/EthernetEnabler;

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    # invokes: Lcom/android/settings/ethernet/EthernetEnabler;->handleNetworkStateChanged(Landroid/net/NetworkInfo;)V
    invoke-static {v1, v0}, Lcom/android/settings/ethernet/EthernetEnabler;->access$100(Lcom/android/settings/ethernet/EthernetEnabler;Landroid/net/NetworkInfo;)V

    goto :goto_0
.end method
