.class Lcom/android/settings/widget/MultiSelectionActionMode$1;
.super Ljava/lang/Object;
.source "MultiSelectionActionMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 101
    iput-object p1, p0, Lcom/android/settings/widget/MultiSelectionActionMode$1;->this$0:Lcom/android/settings/widget/MultiSelectionActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode$1;->this$0:Lcom/android/settings/widget/MultiSelectionActionMode;

    # invokes: Lcom/android/settings/widget/MultiSelectionActionMode;->clickAllCheck()V
    invoke-static {v0}, Lcom/android/settings/widget/MultiSelectionActionMode;->access$300(Lcom/android/settings/widget/MultiSelectionActionMode;)V

    .line 105
    return-void
.end method
