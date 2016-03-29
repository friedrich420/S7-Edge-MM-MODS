.class Lcom/android/systemui/qs/tiles/NfcTile$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/NfcTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/NfcTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/NfcTile;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "action":Ljava/lang/String;
    const-string v3, "NfcTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v3, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 65
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    # getter for: Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/NfcTile;->access$000(Lcom/android/systemui/qs/tiles/NfcTile;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    if-nez v3, :cond_0

    .line 66
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    # getter for: Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/NfcTile;->access$100(Lcom/android/systemui/qs/tiles/NfcTile;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    # setter for: Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v3, v4}, Lcom/android/systemui/qs/tiles/NfcTile;->access$002(Lcom/android/systemui/qs/tiles/NfcTile;Landroid/nfc/NfcAdapter;)Landroid/nfc/NfcAdapter;

    .line 68
    :cond_0
    const-string v3, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 69
    .local v2, "state":I
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    invoke-virtual {v4, v2}, Lcom/android/systemui/qs/tiles/NfcTile;->getNfcTileState(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    # invokes: Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v3, v4}, Lcom/android/systemui/qs/tiles/NfcTile;->access$200(Lcom/android/systemui/qs/tiles/NfcTile;Ljava/lang/Object;)V

    .line 105
    .end local v2    # "state":I
    :cond_1
    :goto_0
    return-void

    .line 72
    :cond_2
    const-string v3, "com.samsung.felica.action.LOCKSTATUS_LOCK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 73
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    # invokes: Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v3, v4}, Lcom/android/systemui/qs/tiles/NfcTile;->access$300(Lcom/android/systemui/qs/tiles/NfcTile;Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    :cond_3
    const-string v3, "com.samsung.felica.action.LOCKSTATUS_UNLOCK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 75
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    # getter for: Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/NfcTile;->access$000(Lcom/android/systemui/qs/tiles/NfcTile;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    if-nez v3, :cond_4

    .line 76
    const-string v3, "NfcTile"

    const-string v4, "mIntentReceiver mNfcAdapter : null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    # invokes: Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v3, v4}, Lcom/android/systemui/qs/tiles/NfcTile;->access$400(Lcom/android/systemui/qs/tiles/NfcTile;Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    invoke-virtual {v4}, Lcom/android/systemui/qs/tiles/NfcTile;->getNfcTileState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    # invokes: Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v3, v4}, Lcom/android/systemui/qs/tiles/NfcTile;->access$500(Lcom/android/systemui/qs/tiles/NfcTile;Ljava/lang/Object;)V

    goto :goto_0

    .line 81
    :cond_5
    const-string v3, "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 82
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSupportNFCFactoryModeForJPN:Z

    if-eqz v3, :cond_7

    .line 83
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    # getter for: Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/NfcTile;->access$000(Lcom/android/systemui/qs/tiles/NfcTile;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    if-nez v3, :cond_6

    .line 84
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    # invokes: Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v3, v4}, Lcom/android/systemui/qs/tiles/NfcTile;->access$600(Lcom/android/systemui/qs/tiles/NfcTile;Ljava/lang/Object;)V

    goto :goto_0

    .line 86
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    invoke-virtual {v4}, Lcom/android/systemui/qs/tiles/NfcTile;->getNfcTileState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    # invokes: Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v3, v4}, Lcom/android/systemui/qs/tiles/NfcTile;->access$700(Lcom/android/systemui/qs/tiles/NfcTile;Ljava/lang/Object;)V

    goto :goto_0

    .line 88
    :cond_7
    const-string v3, "com.felicanetworks.nfc.extra.ADAPTER_RW_P2P_STATE"

    const/16 v4, 0xb

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 90
    .local v1, "rwP2pState":I
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    # getter for: Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/NfcTile;->access$000(Lcom/android/systemui/qs/tiles/NfcTile;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    .line 92
    .restart local v2    # "state":I
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    invoke-virtual {v4, v2, v1}, Lcom/android/systemui/qs/tiles/NfcTile;->getNfcTileStateForJPN(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    # invokes: Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v3, v4}, Lcom/android/systemui/qs/tiles/NfcTile;->access$800(Lcom/android/systemui/qs/tiles/NfcTile;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 94
    .end local v1    # "rwP2pState":I
    .end local v2    # "state":I
    :cond_8
    const-string v3, "android.nfc.action.ADAPTER_BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    const-string v3, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 96
    .restart local v2    # "state":I
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    # getter for: Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/NfcTile;->access$000(Lcom/android/systemui/qs/tiles/NfcTile;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    if-nez v3, :cond_9

    .line 97
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    # invokes: Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v3, v4}, Lcom/android/systemui/qs/tiles/NfcTile;->access$900(Lcom/android/systemui/qs/tiles/NfcTile;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 98
    :cond_9
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSupportNFCFactoryModeForJPN:Z

    if-eqz v3, :cond_a

    .line 99
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    invoke-virtual {v4}, Lcom/android/systemui/qs/tiles/NfcTile;->getNfcTileState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    # invokes: Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v3, v4}, Lcom/android/systemui/qs/tiles/NfcTile;->access$1000(Lcom/android/systemui/qs/tiles/NfcTile;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 101
    :cond_a
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    # getter for: Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/NfcTile;->access$000(Lcom/android/systemui/qs/tiles/NfcTile;)Landroid/nfc/NfcAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->getAdapterRwP2pState()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/android/systemui/qs/tiles/NfcTile;->getNfcTileStateForJPN(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    # invokes: Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v3, v4}, Lcom/android/systemui/qs/tiles/NfcTile;->access$1100(Lcom/android/systemui/qs/tiles/NfcTile;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
