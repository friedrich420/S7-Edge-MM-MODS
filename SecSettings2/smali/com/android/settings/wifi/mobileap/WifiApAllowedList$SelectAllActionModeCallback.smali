.class Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/mobileap/WifiApAllowedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectAllActionModeCallback"
.end annotation


# instance fields
.field private isShow:Z

.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 1

    .prologue
    .line 889
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 890
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->isShow:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;Lcom/android/settings/wifi/mobileap/WifiApAllowedList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;
    .param p2, "x1"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList$1;

    .prologue
    .line 889
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 911
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v2, v3

    .line 933
    :goto_0
    return v2

    .line 913
    :pswitch_0
    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z
    invoke-static {}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isAnyDeviceChecked()Z
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$400(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 914
    # setter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$002(Z)Z

    .line 915
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteDone:Z
    invoke-static {v3, v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$502(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z

    .line 916
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->removeSelectedList()V
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$600(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    .line 917
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->changeActionBar()V
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$100(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    .line 918
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v3}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateList()V

    .line 920
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 921
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x4d

    iput v3, v1, Landroid/os/Message;->what:I

    .line 922
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 923
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "feature"

    const-string v4, "MHAD"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    const-string v3, "extra"

    const-string v4, "DELETE"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 926
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$700(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto :goto_0

    .line 929
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v4}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0e057e

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 911
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 893
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionBarView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$1400(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 894
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    const v1, 0x7f0e049b

    invoke-interface {p2, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedDeleteMenuItem:Landroid/view/MenuItem;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$1502(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;Landroid/view/MenuItem;)Landroid/view/MenuItem;

    .line 895
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedDeleteMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$1500(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 896
    return v3
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 939
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mFlagPref:Z
    invoke-static {v1, v3}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$202(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z

    .line 940
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsStartActionMode:Z
    invoke-static {v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$1602(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z

    .line 941
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$1700(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/CheckBox;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 942
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$1700(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    .line 943
    .local v0, "isChecked":Z
    if-eqz v0, :cond_3

    .line 944
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mOnDestroyActionMode:Z
    invoke-static {v1, v3}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$1802(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z

    .line 945
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$1700(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 946
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$1700(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 947
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateSelectionMenu()V
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$1900(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    .line 948
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateList()V

    .line 953
    .end local v0    # "isChecked":Z
    :cond_0
    :goto_0
    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z
    invoke-static {}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 954
    # setter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$002(Z)Z

    .line 955
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->changeActionBar()V
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$100(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    .line 956
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateList()V

    .line 958
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$2000(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/view/ActionMode;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 959
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$2002(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 961
    :cond_2
    return-void

    .line 950
    .restart local v0    # "isChecked":Z
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$1700(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 901
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->isShow:Z

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedDeleteMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$1500(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 906
    :goto_0
    return v2

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedDeleteMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$1500(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public setDeleteEnabled(Z)V
    .locals 3
    .param p1, "isShow"    # Z

    .prologue
    .line 964
    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->isShow:Z

    .line 965
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$2000(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 966
    const-string v0, "WifiApAllowedList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling invalidate with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$2000(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 969
    :cond_0
    return-void
.end method
