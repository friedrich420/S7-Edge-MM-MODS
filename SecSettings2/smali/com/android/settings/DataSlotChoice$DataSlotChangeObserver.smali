.class Lcom/android/settings/DataSlotChoice$DataSlotChangeObserver;
.super Landroid/database/ContentObserver;
.source "DataSlotChoice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataSlotChoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataSlotChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataSlotChoice;


# direct methods
.method public constructor <init>(Lcom/android/settings/DataSlotChoice;)V
    .locals 1

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/settings/DataSlotChoice$DataSlotChangeObserver;->this$0:Lcom/android/settings/DataSlotChoice;

    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 132
    const-string v0, " DataSlotChangeObserver."

    # invokes: Lcom/android/settings/DataSlotChoice;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/DataSlotChoice;->access$500(Ljava/lang/String;)V

    .line 133
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 137
    const-string v0, " DataSlotChangeObserver -onChange"

    # invokes: Lcom/android/settings/DataSlotChoice;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/DataSlotChoice;->access$500(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/DataSlotChoice$DataSlotChangeObserver;->this$0:Lcom/android/settings/DataSlotChoice;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/DataSlotChoice;->isReadySwitch:Z
    invoke-static {v0, v1}, Lcom/android/settings/DataSlotChoice;->access$602(Lcom/android/settings/DataSlotChoice;Z)Z

    .line 139
    const-string v0, "DataSlotChoice"

    const-string v1, "Send message UPDATE_UI"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/android/settings/DataSlotChoice$DataSlotChangeObserver;->this$0:Lcom/android/settings/DataSlotChoice;

    # getter for: Lcom/android/settings/DataSlotChoice;->mHandler:Lcom/android/settings/DataSlotChoice$SwitchHandler;
    invoke-static {v0}, Lcom/android/settings/DataSlotChoice;->access$400(Lcom/android/settings/DataSlotChoice;)Lcom/android/settings/DataSlotChoice$SwitchHandler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/settings/DataSlotChoice$SwitchHandler;->sendEmptyMessage(I)Z

    .line 141
    return-void
.end method
