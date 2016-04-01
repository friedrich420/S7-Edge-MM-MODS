.class Lcom/android/server/clipboardex/ClipboardExService$4;
.super Landroid/os/Handler;
.source "ClipboardExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/clipboardex/ClipboardExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/clipboardex/ClipboardExService;


# direct methods
.method constructor <init>(Lcom/android/server/clipboardex/ClipboardExService;)V
    .registers 2

    .prologue
    .line 1794
    iput-object p1, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v11, 0x20

    .line 1797
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_174

    .line 1903
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v8, :cond_13

    .line 1904
    const-string v8, "ClipboardExService"

    const-string/jumbo v9, "handler msg : default"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    :cond_13
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1908
    :cond_16
    :goto_16
    :pswitch_16
    return-void

    .line 1841
    :pswitch_17
    iget-object v8, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iget-object v9, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/clipboardex/ClipboardExService;->access$1300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v9

    # setter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;
    invoke-static {v8, v9}, Lcom/android/server/clipboardex/ClipboardExService;->access$1602(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardUIManager;

    .line 1842
    iget-object v8, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;
    invoke-static {v8}, Lcom/android/server/clipboardex/ClipboardExService;->access$1600(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v8

    iget-object v9, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mEnableFormatId:I
    invoke-static {v9}, Lcom/android/server/clipboardex/ClipboardExService;->access$1700(Lcom/android/server/clipboardex/ClipboardExService;)I

    move-result v9

    iget-object v10, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-static {v10}, Lcom/android/server/clipboardex/ClipboardExService;->access$1800(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/sec/clipboard/ClipboardUIManager;->show(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    goto :goto_16

    .line 1845
    :pswitch_3c
    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->SEC_FLOATING_FEATURE_VIEWSYSTEM_CLIPBOARD_UI_SERVICE:Z
    invoke-static {}, Lcom/android/server/clipboardex/ClipboardExService;->access$1900()Z

    move-result v8

    if-eqz v8, :cond_16

    .line 1846
    iget-object v8, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iget-object v9, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/clipboardex/ClipboardExService;->access$1300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v9

    # setter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;
    invoke-static {v8, v9}, Lcom/android/server/clipboardex/ClipboardExService;->access$1602(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardUIManager;

    .line 1847
    iget-object v8, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;
    invoke-static {v8}, Lcom/android/server/clipboardex/ClipboardExService;->access$1600(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v8

    iget-object v9, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mEnableFormatId:I
    invoke-static {v9}, Lcom/android/server/clipboardex/ClipboardExService;->access$1700(Lcom/android/server/clipboardex/ClipboardExService;)I

    move-result v9

    iget-object v10, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-static {v10}, Lcom/android/server/clipboardex/ClipboardExService;->access$1800(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/sec/clipboard/ClipboardUIManager;->setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    goto :goto_16

    .line 1852
    :pswitch_67
    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->SEC_FLOATING_FEATURE_VIEWSYSTEM_CLIPBOARD_UI_SERVICE:Z
    invoke-static {}, Lcom/android/server/clipboardex/ClipboardExService;->access$1900()Z

    move-result v8

    if-eqz v8, :cond_16

    .line 1853
    iget-object v8, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iget-object v9, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/clipboardex/ClipboardExService;->access$1300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v9

    # setter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;
    invoke-static {v8, v9}, Lcom/android/server/clipboardex/ClipboardExService;->access$1602(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardUIManager;

    .line 1854
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v8, :cond_88

    .line 1855
    const-string v8, "ClipboardExService"

    const-string/jumbo v9, "mCBUIManager enter case. MSG_DISMISS_DIALOG"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    :cond_88
    iget-object v8, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;
    invoke-static {v8}, Lcom/android/server/clipboardex/ClipboardExService;->access$1600(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/sec/clipboard/ClipboardUIManager;->dismiss()V

    goto :goto_16

    .line 1862
    :pswitch_92
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1863
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_16

    .line 1864
    const-string/jumbo v8, "deletePath"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1865
    .local v5, "filePath":Ljava/lang/String;
    const-string/jumbo v8, "extraDataPath"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1867
    .local v4, "extraFilePath":Ljava/lang/String;
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardConstants;->INFO_DEBUG:Z

    if-eqz v8, :cond_cc

    .line 1868
    const-string v8, "ClipboardExService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Delete intent will be called. filePath :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", extraFilePath :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    :cond_cc
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.samsung.clipboardsaveservice.CLIPBOARD_DELETE_RECEIVER"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1871
    .local v3, "deleteIntent":Landroid/content/Intent;
    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1872
    const-string/jumbo v8, "deletePath"

    invoke-virtual {v3, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1873
    if-eqz v4, :cond_ea

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_ea

    .line 1874
    const-string/jumbo v8, "extraDataPath"

    invoke-virtual {v3, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1877
    :cond_ea
    new-instance v7, Landroid/os/UserHandle;

    iget-object v8, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-virtual {v8}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 1878
    .local v7, "user":Landroid/os/UserHandle;
    iget-object v8, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/clipboardex/ClipboardExService;->access$1300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1880
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardConstants;->INFO_DEBUG:Z

    if-eqz v8, :cond_16

    .line 1881
    const-string v8, "ClipboardExService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CLIPBOARD_DELETE_RECEIVER : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 1887
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "deleteIntent":Landroid/content/Intent;
    .end local v4    # "extraFilePath":Ljava/lang/String;
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v7    # "user":Landroid/os/UserHandle;
    :pswitch_120
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 1888
    .local v1, "bundleUri":Landroid/os/Bundle;
    if-eqz v1, :cond_16

    .line 1889
    const-string/jumbo v8, "uriPath"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1890
    .local v6, "uriPath":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.samsung.clipboardsaveservice.CLIPBOARD_COPY_URI_RECEIVER"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1891
    .local v2, "copyIntent":Landroid/content/Intent;
    invoke-virtual {v2, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1892
    const-string/jumbo v8, "uriPath"

    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1894
    new-instance v7, Landroid/os/UserHandle;

    iget-object v8, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-virtual {v8}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 1895
    .restart local v7    # "user":Landroid/os/UserHandle;
    iget-object v8, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/clipboardex/ClipboardExService;->access$1300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v2, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1897
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardConstants;->INFO_DEBUG:Z

    if-eqz v8, :cond_16

    .line 1898
    const-string v8, "ClipboardExService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CLIPBOARD_COPY_URI_RECEIVER : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 1797
    nop

    :pswitch_data_174
    .packed-switch 0x1
        :pswitch_16
        :pswitch_17
        :pswitch_3c
        :pswitch_67
        :pswitch_92
        :pswitch_120
    .end packed-switch
.end method
