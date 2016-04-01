.class final Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SPenGestureInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 770
    iput-object p1, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 771
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 772
    return-void
.end method

.method private disableSPenGestureView(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 775
    iget-object v0, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 776
    iget-object v0, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/smartclip/SmartClipView;->isShowingGestureEffect()Z

    move-result v0

    if-nez v0, :cond_43

    .line 777
    iget-object v0, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mIsVisibleSPenGestureView:Z
    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2300(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 778
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "disableSPenGestureView, mSmartClipView.addSPenEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v0, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mIsVisibleSPenGestureView:Z
    invoke-static {v0, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2302(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z

    .line 780
    iget-object v0, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-virtual {v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->keyguardOn()Z

    move-result v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/smartclip/SmartClipView;->addSPenEvent(Landroid/view/MotionEvent;ZZ)V

    .line 781
    iget-object v0, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/smartclip/SmartClipView;->closeView()V

    .line 787
    :cond_42
    :goto_42
    return-void

    .line 784
    :cond_43
    iget-object v0, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView;->setPhoneWindowMangerFlag(Z)V

    goto :goto_42
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 13
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 792
    const/4 v2, 0x0

    .line 794
    .local v2, "handled":Z
    :try_start_5
    instance-of v7, p1, Landroid/view/MotionEvent;

    if-eqz v7, :cond_9a

    .line 795
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v4, v0

    .line 796
    .local v4, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 797
    .local v1, "action":I
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v7

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->EVENT_STATE_PEN_BUTTON_PRESSED:I
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2400()I

    move-result v8

    and-int/2addr v7, v8

    if-eqz v7, :cond_1d

    move v3, v6

    .line 799
    .local v3, "isSideButtonPressed":Z
    :cond_1d
    iget-object v7, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v7

    if-eqz v7, :cond_2d

    iget-object v7, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I
    invoke-static {v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)I

    move-result v7

    if-eq v7, v9, :cond_35

    :cond_2d
    iget-object v7, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I
    invoke-static {v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)I

    move-result v7

    if-lt v7, v10, :cond_99

    .line 801
    :cond_35
    iget-object v7, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->processMotionEventForAirCMD(Landroid/view/MotionEvent;IZ)V
    invoke-static {v7, v4, v1, v3}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2500(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;IZ)V

    .line 803
    if-nez v3, :cond_44

    iget-object v7, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferEventToAirButton:Z
    invoke-static {v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2600(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v7

    if-eqz v7, :cond_80

    :cond_44
    const/4 v7, 0x7

    if-eq v1, v7, :cond_80

    if-eq v1, v9, :cond_80

    .line 806
    sget-object v7, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onInputEvent : Action="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", sideButtonPressed="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", coverOpened="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$700(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_80
    const/4 v5, 0x0

    .line 812
    .local v5, "needsToProcessEvent":Z
    if-eqz v3, :cond_8c

    iget-object v7, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z
    invoke-static {v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$700(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v7

    if-ne v7, v6, :cond_8c

    .line 813
    const/4 v5, 0x1

    .line 816
    :cond_8c
    if-ne v5, v6, :cond_127

    .line 819
    packed-switch v1, :pswitch_data_134

    .line 860
    :pswitch_91
    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onInputEvent : default"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catchall {:try_start_5 .. :try_end_99} :catchall_e8

    .line 869
    .end local v5    # "needsToProcessEvent":Z
    :cond_99
    :goto_99
    const/4 v2, 0x1

    .line 872
    .end local v1    # "action":I
    .end local v3    # "isSideButtonPressed":Z
    .end local v4    # "motionEvent":Landroid/view/MotionEvent;
    :cond_9a
    invoke-virtual {p0, p1, v2}, finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 874
    return-void

    .line 823
    .restart local v1    # "action":I
    .restart local v3    # "isSideButtonPressed":Z
    .restart local v4    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v5    # "needsToProcessEvent":Z
    :pswitch_9e
    :try_start_9e
    iget-object v6, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mIsVisibleSPenGestureView:Z
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2300(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v6

    if-nez v6, :cond_be

    .line 824
    iget-object v6, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v6

    if-eqz v6, :cond_be

    .line 825
    iget-object v6, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/smartclip/SmartClipView;->setVisibility(I)V

    .line 826
    iget-object v6, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const/4 v7, 0x1

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mIsVisibleSPenGestureView:Z
    invoke-static {v6, v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2302(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z

    .line 830
    :cond_be
    iget-object v6, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v6

    if-eqz v6, :cond_d6

    .line 831
    iget-object v6, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-virtual {v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->keyguardOn()Z

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v6, v4, v7, v8}, Lcom/android/server/smartclip/SmartClipView;->addSPenEvent(Landroid/view/MotionEvent;ZZ)V

    .line 834
    :cond_d6
    iget-object v6, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)I

    move-result v6

    if-lt v6, v10, :cond_99

    .line 835
    iget-object v6, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2700(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/GestureDetector;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_e7
    .catchall {:try_start_9e .. :try_end_e7} :catchall_e8

    goto :goto_99

    .line 872
    .end local v1    # "action":I
    .end local v3    # "isSideButtonPressed":Z
    .end local v4    # "motionEvent":Landroid/view/MotionEvent;
    .end local v5    # "needsToProcessEvent":Z
    :catchall_e8
    move-exception v6

    invoke-virtual {p0, p1, v2}, finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v6

    .line 842
    .restart local v1    # "action":I
    .restart local v3    # "isSideButtonPressed":Z
    .restart local v4    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v5    # "needsToProcessEvent":Z
    :pswitch_ed
    :try_start_ed
    iget-object v6, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v6

    if-eqz v6, :cond_99

    .line 843
    iget-object v6, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-virtual {v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->keyguardOn()Z

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v6, v4, v7, v8}, Lcom/android/server/smartclip/SmartClipView;->addSPenEvent(Landroid/view/MotionEvent;ZZ)V

    .line 844
    invoke-direct {p0, v4}, disableSPenGestureView(Landroid/view/MotionEvent;)V

    goto :goto_99

    .line 851
    :pswitch_109
    iget-object v6, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v6

    if-eqz v6, :cond_114

    .line 852
    invoke-direct {p0, v4}, disableSPenGestureView(Landroid/view/MotionEvent;)V

    .line 854
    :cond_114
    iget-object v6, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)I

    move-result v6

    if-lt v6, v10, :cond_99

    .line 855
    iget-object v6, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2700(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/GestureDetector;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_99

    .line 864
    :cond_127
    iget-object v6, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v6

    if-eqz v6, :cond_99

    .line 865
    invoke-direct {p0, v4}, disableSPenGestureView(Landroid/view/MotionEvent;)V
    :try_end_132
    .catchall {:try_start_ed .. :try_end_132} :catchall_e8

    goto/16 :goto_99

    .line 819
    :pswitch_data_134
    .packed-switch 0x0
        :pswitch_9e
        :pswitch_109
        :pswitch_9e
        :pswitch_109
        :pswitch_91
        :pswitch_9e
        :pswitch_109
        :pswitch_ed
        :pswitch_91
        :pswitch_ed
        :pswitch_ed
    .end packed-switch
.end method
