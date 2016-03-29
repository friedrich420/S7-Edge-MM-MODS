.class Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$2;
.super Ljava/lang/Object;
.source "LedCoverCallerIDSelectionList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;


# direct methods
.method constructor <init>(Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$2;->this$0:Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$2;->this$0:Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;

    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$2;->this$0:Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;

    # getter for: Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mSelectAllCheckbox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->access$000(Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    # invokes: Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->ToggleAllCheck(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->access$100(Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;Z)V

    .line 185
    return-void
.end method
