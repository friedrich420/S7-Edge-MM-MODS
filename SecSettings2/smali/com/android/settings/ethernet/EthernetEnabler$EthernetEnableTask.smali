.class Lcom/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;
.super Landroid/os/AsyncTask;
.source "EthernetEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ethernet/EthernetEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EthernetEnableTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ethernet/EthernetEnabler;


# direct methods
.method private constructor <init>(Lcom/android/settings/ethernet/EthernetEnabler;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;->this$0:Lcom/android/settings/ethernet/EthernetEnabler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ethernet/EthernetEnabler;Lcom/android/settings/ethernet/EthernetEnabler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/ethernet/EthernetEnabler;
    .param p2, "x1"    # Lcom/android/settings/ethernet/EthernetEnabler$1;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;-><init>(Lcom/android/settings/ethernet/EthernetEnabler;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 82
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    aget-object v0, p1, v3

    .line 86
    .local v0, "enable":Ljava/lang/String;
    aget-object v1, p1, v4

    .line 88
    .local v1, "enabling":Ljava/lang/String;
    const-string v2, "enabling"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;->this$0:Lcom/android/settings/ethernet/EthernetEnabler;

    # getter for: Lcom/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;
    invoke-static {v2}, Lcom/android/settings/ethernet/EthernetEnabler;->access$200(Lcom/android/settings/ethernet/EthernetEnabler;)Landroid/net/EthernetManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;->this$0:Lcom/android/settings/ethernet/EthernetEnabler;

    # getter for: Lcom/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;
    invoke-static {v3}, Lcom/android/settings/ethernet/EthernetEnabler;->access$200(Lcom/android/settings/ethernet/EthernetEnabler;)Landroid/net/EthernetManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/net/EthernetManager;->setEthernetState(I)V

    .line 95
    :goto_0
    return-object v0

    .line 90
    :cond_0
    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p0, Lcom/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;->this$0:Lcom/android/settings/ethernet/EthernetEnabler;

    # getter for: Lcom/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;
    invoke-static {v2}, Lcom/android/settings/ethernet/EthernetEnabler;->access$200(Lcom/android/settings/ethernet/EthernetEnabler;)Landroid/net/EthernetManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/net/EthernetManager;->setEthEnabled(Z)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object v2, p0, Lcom/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;->this$0:Lcom/android/settings/ethernet/EthernetEnabler;

    # getter for: Lcom/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;
    invoke-static {v2}, Lcom/android/settings/ethernet/EthernetEnabler;->access$200(Lcom/android/settings/ethernet/EthernetEnabler;)Landroid/net/EthernetManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/net/EthernetManager;->setEthEnabled(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 82
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 100
    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;->this$0:Lcom/android/settings/ethernet/EthernetEnabler;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/ethernet/EthernetEnabler;->postEnableTaskFinishedUIUpdate(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/ethernet/EthernetEnabler;->access$300(Lcom/android/settings/ethernet/EthernetEnabler;Z)V

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;->this$0:Lcom/android/settings/ethernet/EthernetEnabler;

    const/4 v1, 0x0

    # invokes: Lcom/android/settings/ethernet/EthernetEnabler;->postEnableTaskFinishedUIUpdate(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/ethernet/EthernetEnabler;->access$300(Lcom/android/settings/ethernet/EthernetEnabler;Z)V

    goto :goto_0
.end method
