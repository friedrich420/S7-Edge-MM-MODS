.class Lcom/android/settings/DataSlotChoice$DataEnabledObserver;
.super Landroid/database/ContentObserver;
.source "DataSlotChoice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataSlotChoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataEnabledObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataSlotChoice;


# direct methods
.method constructor <init>(Lcom/android/settings/DataSlotChoice;)V
    .locals 2

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/settings/DataSlotChoice$DataEnabledObserver;->this$0:Lcom/android/settings/DataSlotChoice;

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 109
    const-string v0, "DataSlotChoice"

    const-string v1, "DataEnabledObserver()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 117
    const-string v0, "DataSlotChoice"

    const-string v1, "DataEnabledObserver().onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/android/settings/DataSlotChoice$DataEnabledObserver;->this$0:Lcom/android/settings/DataSlotChoice;

    # invokes: Lcom/android/settings/DataSlotChoice;->updateUi()V
    invoke-static {v0}, Lcom/android/settings/DataSlotChoice;->access$000(Lcom/android/settings/DataSlotChoice;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/DataSlotChoice$DataEnabledObserver;->this$0:Lcom/android/settings/DataSlotChoice;

    iget-object v1, p0, Lcom/android/settings/DataSlotChoice$DataEnabledObserver;->this$0:Lcom/android/settings/DataSlotChoice;

    # getter for: Lcom/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/DataSlotChoice;->access$200(Lcom/android/settings/DataSlotChoice;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v1

    # setter for: Lcom/android/settings/DataSlotChoice;->isAirPlaneMode:Z
    invoke-static {v0, v1}, Lcom/android/settings/DataSlotChoice;->access$102(Lcom/android/settings/DataSlotChoice;Z)Z

    .line 121
    iget-object v0, p0, Lcom/android/settings/DataSlotChoice$DataEnabledObserver;->this$0:Lcom/android/settings/DataSlotChoice;

    # invokes: Lcom/android/settings/DataSlotChoice;->getAvailData()Z
    invoke-static {v0}, Lcom/android/settings/DataSlotChoice;->access$300(Lcom/android/settings/DataSlotChoice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/settings/DataSlotChoice$DataEnabledObserver;->this$0:Lcom/android/settings/DataSlotChoice;

    # getter for: Lcom/android/settings/DataSlotChoice;->mHandler:Lcom/android/settings/DataSlotChoice$SwitchHandler;
    invoke-static {v0}, Lcom/android/settings/DataSlotChoice;->access$400(Lcom/android/settings/DataSlotChoice;)Lcom/android/settings/DataSlotChoice$SwitchHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/DataSlotChoice$SwitchHandler;->sendEmptyMessage(I)Z

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataSlotChoice$DataEnabledObserver;->this$0:Lcom/android/settings/DataSlotChoice;

    # getter for: Lcom/android/settings/DataSlotChoice;->mHandler:Lcom/android/settings/DataSlotChoice$SwitchHandler;
    invoke-static {v0}, Lcom/android/settings/DataSlotChoice;->access$400(Lcom/android/settings/DataSlotChoice;)Lcom/android/settings/DataSlotChoice$SwitchHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/DataSlotChoice$SwitchHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
