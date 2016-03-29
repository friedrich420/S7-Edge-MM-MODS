.class Lcom/android/settings/DataSlotChoice$2;
.super Ljava/lang/Object;
.source "DataSlotChoice.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataSlotChoice;->onRoamingDisplayMobileDataOnAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataSlotChoice;


# direct methods
.method constructor <init>(Lcom/android/settings/DataSlotChoice;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/settings/DataSlotChoice$2;->this$0:Lcom/android/settings/DataSlotChoice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/settings/DataSlotChoice$2;->this$0:Lcom/android/settings/DataSlotChoice;

    # invokes: Lcom/android/settings/DataSlotChoice;->getAvailData()Z
    invoke-static {v0}, Lcom/android/settings/DataSlotChoice;->access$300(Lcom/android/settings/DataSlotChoice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/settings/DataSlotChoice$2;->this$0:Lcom/android/settings/DataSlotChoice;

    # getter for: Lcom/android/settings/DataSlotChoice;->mHandler:Lcom/android/settings/DataSlotChoice$SwitchHandler;
    invoke-static {v0}, Lcom/android/settings/DataSlotChoice;->access$400(Lcom/android/settings/DataSlotChoice;)Lcom/android/settings/DataSlotChoice$SwitchHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/DataSlotChoice$SwitchHandler;->sendEmptyMessage(I)Z

    .line 472
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataSlotChoice$2;->this$0:Lcom/android/settings/DataSlotChoice;

    # getter for: Lcom/android/settings/DataSlotChoice;->mHandler:Lcom/android/settings/DataSlotChoice$SwitchHandler;
    invoke-static {v0}, Lcom/android/settings/DataSlotChoice;->access$400(Lcom/android/settings/DataSlotChoice;)Lcom/android/settings/DataSlotChoice$SwitchHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/DataSlotChoice$SwitchHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
