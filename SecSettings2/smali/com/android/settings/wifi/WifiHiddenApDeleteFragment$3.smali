.class Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$3;
.super Ljava/lang/Object;
.source "WifiHiddenApDeleteFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$3;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "selectedPos"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 141
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$3;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    # getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$300(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$3;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    # getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$400(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$3;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    # getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$500(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$3;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    # getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$300(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$3;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    # getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$200(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 150
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$3;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    # getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mSelectAllCheckbox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$100(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 155
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$3;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    # getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mCountTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$600(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$3;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    # getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$300(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$3;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    # getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$400(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$3;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    # getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$500(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$3;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    # getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mSelectAllCheckbox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$100(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$3;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    # getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mSelectAllCheckbox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$100(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_1
.end method
