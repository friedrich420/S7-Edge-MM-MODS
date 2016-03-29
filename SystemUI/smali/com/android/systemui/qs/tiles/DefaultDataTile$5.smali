.class Lcom/android/systemui/qs/tiles/DefaultDataTile$5;
.super Landroid/telephony/PhoneStateListener;
.source "DefaultDataTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/DefaultDataTile;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 368
    iget v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$5;->mSubId:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/DeviceState;->getPhoneId(I)I

    move-result v0

    .line 369
    .local v0, "phoneId":I
    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  onDataConnectionStateChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    packed-switch p1, :pswitch_data_0

    .line 377
    :goto_0
    :pswitch_0
    return-void

    .line 373
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->getMobileDataEnabled()Z

    move-result v2

    # setter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsDataEnabled:Z
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$302(Lcom/android/systemui/qs/tiles/DefaultDataTile;Z)Z

    .line 374
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState()V
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$1700(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    goto :goto_0

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
