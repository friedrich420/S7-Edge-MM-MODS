.class Lcom/android/systemui/qs/tiles/AirplaneModeTile$7;
.super Landroid/telephony/PhoneStateListener;
.source "AirplaneModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$7;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 9
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 439
    const/4 v3, 0x0

    .line 440
    .local v3, "value":Z
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$7;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    iget v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$7;->mSubId:I

    # invokes: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getPhoneId(I)I
    invoke-static {v6, v7}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$800(Lcom/android/systemui/qs/tiles/AirplaneModeTile;I)I

    move-result v2

    .line 441
    .local v2, "phoneId":I
    const/4 v1, 0x0

    .line 442
    .local v1, "numberOfSlotsInAirplaneMode":I
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$7;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mServiceState:[I
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$900(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)[I

    move-result-object v6

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    aput v7, v6, v2

    .line 443
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$7;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSimCount:I
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1000(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 445
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$7;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSimCount:I
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1000(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)I

    move-result v6

    if-nez v6, :cond_1

    .line 446
    const-string v6, "AirplaneModeTile"

    const-string v7, "isMultisim NO SIM"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$7;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mServiceState:[I
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$900(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)[I

    move-result-object v6

    aget v6, v6, v5

    if-ne v6, v8, :cond_0

    .line 448
    const/4 v3, 0x1

    .line 443
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 452
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$7;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mServiceState:[I
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$900(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)[I

    move-result-object v6

    aget v6, v6, v0

    if-ne v6, v8, :cond_2

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$7;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1100(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/GlobalSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v6

    if-ne v6, v4, :cond_2

    .line 453
    add-int/lit8 v1, v1, 0x1

    .line 456
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$7;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSimCount:I
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1000(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)I

    move-result v6

    if-ne v1, v6, :cond_0

    .line 457
    const/4 v3, 0x1

    goto :goto_1

    .line 467
    :cond_3
    const-string v6, "AirplaneModeTile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onServiceStateChanged("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " change to AirplaneMode ? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " SIM#PowerOff "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$7;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    iget-object v6, v6, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$7;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    iget-object v6, v6, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_6

    .line 469
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$7;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1100(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/GlobalSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v6

    if-eqz v6, :cond_5

    move v5, v4

    :cond_5
    if-ne v3, v5, :cond_6

    .line 470
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$7;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    if-eqz v3, :cond_7

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    # invokes: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v5, v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1200(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V

    .line 474
    :cond_6
    return-void

    .line 470
    :cond_7
    const/4 v4, 0x2

    goto :goto_2
.end method
