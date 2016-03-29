.class Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$3;
.super Ljava/lang/Object;
.source "WifiApAllowedListDelete.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 168
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->removeSelectedList()V
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->access$400(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)V

    .line 170
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 171
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x4d

    iput v2, v1, Landroid/os/Message;->what:I

    .line 172
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 173
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "feature"

    const-string v3, "MHAD"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v2, "extra"

    const-string v3, "DELETE"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 176
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->access$500(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 178
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;

    invoke-virtual {v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->finish()V

    .line 179
    return-void
.end method
