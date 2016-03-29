.class Lcom/android/settings/widget/MultiSelectionActionMode$2;
.super Ljava/lang/Object;
.source "MultiSelectionActionMode.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/MultiSelectionActionMode;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/MultiSelectionActionMode;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/MultiSelectionActionMode;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/settings/widget/MultiSelectionActionMode$2;->this$0:Lcom/android/settings/widget/MultiSelectionActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 115
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode$2;->this$0:Lcom/android/settings/widget/MultiSelectionActionMode;

    # getter for: Lcom/android/settings/widget/MultiSelectionActionMode;->mAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/widget/MultiSelectionActionMode;->access$200(Lcom/android/settings/widget/MultiSelectionActionMode;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode$2;->this$0:Lcom/android/settings/widget/MultiSelectionActionMode;

    # invokes: Lcom/android/settings/widget/MultiSelectionActionMode;->clickAllCheck()V
    invoke-static {v0}, Lcom/android/settings/widget/MultiSelectionActionMode;->access$300(Lcom/android/settings/widget/MultiSelectionActionMode;)V

    .line 120
    :cond_0
    return v1
.end method
