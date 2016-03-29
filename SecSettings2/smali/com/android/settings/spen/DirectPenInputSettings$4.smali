.class Lcom/android/settings/spen/DirectPenInputSettings$4;
.super Ljava/lang/Object;
.source "DirectPenInputSettings.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/spen/DirectPenInputSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/spen/DirectPenInputSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/spen/DirectPenInputSettings;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/settings/spen/DirectPenInputSettings$4;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 203
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 204
    const/16 v2, 0x14

    if-ne p2, v2, :cond_1

    .line 205
    iget-object v2, p0, Lcom/android/settings/spen/DirectPenInputSettings$4;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # getter for: Lcom/android/settings/spen/DirectPenInputSettings;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/spen/DirectPenInputSettings;->access$500(Lcom/android/settings/spen/DirectPenInputSettings;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 206
    iget-object v2, p0, Lcom/android/settings/spen/DirectPenInputSettings$4;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # getter for: Lcom/android/settings/spen/DirectPenInputSettings;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/spen/DirectPenInputSettings;->access$500(Lcom/android/settings/spen/DirectPenInputSettings;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 207
    iget-object v2, p0, Lcom/android/settings/spen/DirectPenInputSettings$4;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # getter for: Lcom/android/settings/spen/DirectPenInputSettings;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/spen/DirectPenInputSettings;->access$500(Lcom/android/settings/spen/DirectPenInputSettings;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 216
    :goto_0
    return v0

    .line 210
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 211
    const/16 v2, 0x13

    if-ne p2, v2, :cond_1

    .line 212
    iget-object v2, p0, Lcom/android/settings/spen/DirectPenInputSettings$4;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # getter for: Lcom/android/settings/spen/DirectPenInputSettings;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/spen/DirectPenInputSettings;->access$500(Lcom/android/settings/spen/DirectPenInputSettings;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 216
    goto :goto_0
.end method
