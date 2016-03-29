.class Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$2;
.super Ljava/lang/Object;
.source "TapAndHoldDelayCustomFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$2;->this$0:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 95
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$2;->this$0:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    # getter for: Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;
    invoke-static {v1}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->access$000(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->checkLongPressStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$2;->this$0:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    # invokes: Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->showDialog(I)V
    invoke-static {v1, v0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->access$900(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;I)V

    .line 101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
