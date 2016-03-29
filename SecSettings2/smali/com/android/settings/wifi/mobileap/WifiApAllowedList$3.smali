.class Lcom/android/settings/wifi/mobileap/WifiApAllowedList$3;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 300
    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z
    invoke-static {}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isAnyDeviceChecked()Z
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$400(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    # setter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$002(Z)Z

    .line 302
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    const/4 v3, 0x1

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteDone:Z
    invoke-static {v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$502(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z

    .line 303
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->removeSelectedList()V
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$600(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    .line 304
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->changeActionBar()V
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$100(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    .line 305
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateList()V

    .line 307
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 308
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x4d

    iput v2, v1, Landroid/os/Message;->what:I

    .line 309
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 310
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "feature"

    const-string v3, "MHAD"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v2, "extra"

    const-string v3, "DELETE"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 313
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$700(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 318
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e057e

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
