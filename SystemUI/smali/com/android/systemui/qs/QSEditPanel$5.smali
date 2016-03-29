.class Lcom/android/systemui/qs/QSEditPanel$5;
.super Ljava/lang/Object;
.source "QSEditPanel.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSEditPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSEditPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/16 v7, 0x6e

    .line 1172
    const/4 v3, 0x1

    .line 1173
    .local v3, "retVal":Z
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 1175
    .local v0, "dragEvent":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1176
    .local v1, "idx":I
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # setter for: Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I
    invoke-static {v5, v1}, Lcom/android/systemui/qs/QSEditPanel;->access$3002(Lcom/android/systemui/qs/QSEditPanel;I)I

    .line 1177
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # getter for: Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel;->access$3000(Lcom/android/systemui/qs/QSEditPanel;)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # getter for: Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel;->access$2200(Lcom/android/systemui/qs/QSEditPanel;)I

    move-result v6

    if-ge v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # getter for: Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel;->access$2300(Lcom/android/systemui/qs/QSEditPanel;)Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    move-result-object v5

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1178
    .local v4, "toList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # getter for: Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel;->access$2200(Lcom/android/systemui/qs/QSEditPanel;)I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 1179
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # getter for: Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel;->access$2200(Lcom/android/systemui/qs/QSEditPanel;)I

    move-result v5

    sub-int/2addr v1, v5

    .line 1182
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 1241
    :cond_1
    :goto_1
    :pswitch_0
    return v3

    .line 1177
    .end local v4    # "toList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # getter for: Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel;->access$2400(Lcom/android/systemui/qs/QSEditPanel;)Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    move-result-object v5

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0

    .line 1184
    .restart local v4    # "toList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1
    const-string v5, "QSEditPanel"

    const-string v6, "DragEvent.ACTION_DROP"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # setter for: Lcom/android/systemui/qs/QSEditPanel;->mIsDroppedOnView:Z
    invoke-static {v5, v10}, Lcom/android/systemui/qs/QSEditPanel;->access$3102(Lcom/android/systemui/qs/QSEditPanel;Z)Z

    .line 1186
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # getter for: Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel;->access$3200(Lcom/android/systemui/qs/QSEditPanel;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1187
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # getter for: Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel;->access$3200(Lcom/android/systemui/qs/QSEditPanel;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1189
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # getter for: Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel;->access$3200(Lcom/android/systemui/qs/QSEditPanel;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 1193
    :pswitch_2
    const-string v5, "QSEditPanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DragEvent.ACTION_DRAG_ENTERED idx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # invokes: Lcom/android/systemui/qs/QSEditPanel;->showToastPopup()Z
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel;->access$3300(Lcom/android/systemui/qs/QSEditPanel;)Z

    move-result v2

    .line 1195
    .local v2, "isShowToast":Z
    if-eqz v2, :cond_4

    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # invokes: Lcom/android/systemui/qs/QSEditPanel;->isEmptyPanel(Ljava/util/ArrayList;I)Z
    invoke-static {v5, v4, v1}, Lcom/android/systemui/qs/QSEditPanel;->access$3400(Lcom/android/systemui/qs/QSEditPanel;Ljava/util/ArrayList;I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1196
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # invokes: Lcom/android/systemui/qs/QSEditPanel;->animateViews()V
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel;->access$3500(Lcom/android/systemui/qs/QSEditPanel;)V

    .line 1198
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isSupportMobileKeyboard()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # getter for: Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel;->access$1300(Lcom/android/systemui/qs/QSEditPanel;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/statusbar/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1199
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # invokes: Lcom/android/systemui/qs/QSEditPanel;->scrollPanleViews()V
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel;->access$3600(Lcom/android/systemui/qs/QSEditPanel;)V

    goto :goto_1

    .line 1202
    :cond_4
    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # invokes: Lcom/android/systemui/qs/QSEditPanel;->isEmptyPanel(Ljava/util/ArrayList;I)Z
    invoke-static {v5, v4, v1}, Lcom/android/systemui/qs/QSEditPanel;->access$3400(Lcom/android/systemui/qs/QSEditPanel;Ljava/util/ArrayList;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1203
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # invokes: Lcom/android/systemui/qs/QSEditPanel;->animateEmptyPanelViews()V
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel;->access$3700(Lcom/android/systemui/qs/QSEditPanel;)V

    .line 1205
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isSupportMobileKeyboard()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # getter for: Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel;->access$1300(Lcom/android/systemui/qs/QSEditPanel;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/statusbar/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1206
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # invokes: Lcom/android/systemui/qs/QSEditPanel;->scrollPanleViews()V
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel;->access$3600(Lcom/android/systemui/qs/QSEditPanel;)V

    goto/16 :goto_1

    .line 1213
    .end local v2    # "isShowToast":Z
    :pswitch_3
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # setter for: Lcom/android/systemui/qs/QSEditPanel;->mIsDroppedOnView:Z
    invoke-static {v5, v9}, Lcom/android/systemui/qs/QSEditPanel;->access$3102(Lcom/android/systemui/qs/QSEditPanel;Z)Z

    .line 1214
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # getter for: Lcom/android/systemui/qs/QSEditPanel;->mLongClickedView:Landroid/widget/FrameLayout;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel;->access$2000(Lcom/android/systemui/qs/QSEditPanel;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1216
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isSupportMobileKeyboard()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # getter for: Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel;->access$1300(Lcom/android/systemui/qs/QSEditPanel;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/statusbar/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1217
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # getter for: Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel;->access$2100(Lcom/android/systemui/qs/QSEditPanel;)I

    move-result v6

    # setter for: Lcom/android/systemui/qs/QSEditPanel;->mStartLongClickedIdx:I
    invoke-static {v5, v6}, Lcom/android/systemui/qs/QSEditPanel;->access$3802(Lcom/android/systemui/qs/QSEditPanel;I)I

    goto/16 :goto_1

    .line 1226
    :pswitch_4
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # getter for: Lcom/android/systemui/qs/QSEditPanel;->mLongClickedView:Landroid/widget/FrameLayout;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel;->access$2000(Lcom/android/systemui/qs/QSEditPanel;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1227
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # getter for: Lcom/android/systemui/qs/QSEditPanel;->mIsDroppedOnView:Z
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel;->access$3100(Lcom/android/systemui/qs/QSEditPanel;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1228
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # getter for: Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel;->access$3200(Lcom/android/systemui/qs/QSEditPanel;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1229
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # getter for: Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel;->access$3200(Lcom/android/systemui/qs/QSEditPanel;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1231
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # getter for: Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel;->access$3200(Lcom/android/systemui/qs/QSEditPanel;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1232
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # setter for: Lcom/android/systemui/qs/QSEditPanel;->mIsDroppedOnView:Z
    invoke-static {v5, v10}, Lcom/android/systemui/qs/QSEditPanel;->access$3102(Lcom/android/systemui/qs/QSEditPanel;Z)Z

    .line 1234
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel$5;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # setter for: Lcom/android/systemui/qs/QSEditPanel;->mMaxActiveToAvailableEnabled:Z
    invoke-static {v5, v9}, Lcom/android/systemui/qs/QSEditPanel;->access$3902(Lcom/android/systemui/qs/QSEditPanel;Z)Z

    goto/16 :goto_1

    .line 1182
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
