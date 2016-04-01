.class Lcom/sec/epdg/IPSecAdapter$IpSecAdapterHandler;
.super Landroid/os/Handler;
.source "IPSecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IpSecAdapterHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/IPSecAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/IPSecAdapter;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1900
    iput-object p1, p0, this$0:Lcom/sec/epdg/IPSecAdapter;

    .line 1901
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1902
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1906
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_38

    .line 1926
    :goto_5
    return-void

    .line 1908
    :pswitch_6
    iget-object v1, p0, this$0:Lcom/sec/epdg/IPSecAdapter;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;

    # invokes: Lcom/sec/epdg/IPSecAdapter;->onIpSecAdapterServiceStatusChanged(Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;)V
    invoke-static {v1, v0}, Lcom/sec/epdg/IPSecAdapter;->access$900(Lcom/sec/epdg/IPSecAdapter;Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;)V

    goto :goto_5

    .line 1911
    :pswitch_10
    iget-object v1, p0, this$0:Lcom/sec/epdg/IPSecAdapter;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/epdg/IPSecAdapter$IPSecEventInfo;

    # invokes: Lcom/sec/epdg/IPSecAdapter;->onIpSecAdapterConnectionStatusChanged(Lcom/sec/epdg/IPSecAdapter$IPSecEventInfo;)V
    invoke-static {v1, v0}, Lcom/sec/epdg/IPSecAdapter;->access$1000(Lcom/sec/epdg/IPSecAdapter;Lcom/sec/epdg/IPSecAdapter$IPSecEventInfo;)V

    goto :goto_5

    .line 1914
    :pswitch_1a
    iget-object v1, p0, this$0:Lcom/sec/epdg/IPSecAdapter;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/IPSecAdapter;->onConnectRequestRecv(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;I)V
    invoke-static {v1, v0, v2}, Lcom/sec/epdg/IPSecAdapter;->access$1100(Lcom/sec/epdg/IPSecAdapter;Lcom/sec/epdg/IPSecAdapter$ConnectInfo;I)V

    goto :goto_5

    .line 1917
    :pswitch_26
    iget-object v0, p0, this$0:Lcom/sec/epdg/IPSecAdapter;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/IPSecAdapter;->onDisconnectRequestRecv(I)V
    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecAdapter;->access$1200(Lcom/sec/epdg/IPSecAdapter;I)V

    goto :goto_5

    .line 1920
    :pswitch_2e
    iget-object v0, p0, this$0:Lcom/sec/epdg/IPSecAdapter;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/sec/epdg/IPSecAdapter;->onCheckConnectionRequestRecv(II)V
    invoke-static {v0, v1, v2}, Lcom/sec/epdg/IPSecAdapter;->access$1300(Lcom/sec/epdg/IPSecAdapter;II)V

    goto :goto_5

    .line 1906
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_6
        :pswitch_10
        :pswitch_1a
        :pswitch_26
        :pswitch_2e
    .end packed-switch
.end method
