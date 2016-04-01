.class Landroid/widget/SearchView$7;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/widget/SearchView;)V
    .registers 2

    .prologue
    .line 1023
    iput-object p1, p0, this$0:Landroid/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1025
    iget-object v5, p0, this$0:Landroid/widget/SearchView;

    invoke-virtual {v5}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.folder_type"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4a

    iget-object v5, p0, this$0:Landroid/widget/SearchView;

    invoke-virtual {v5}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.dual_lcd"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4a

    move v2, v4

    .line 1029
    .local v2, "isFolderTypeFeature":Z
    :goto_27
    if-eqz v2, :cond_41

    .line 1030
    iget-object v5, p0, this$0:Landroid/widget/SearchView;

    invoke-virtual {v5}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1032
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/16 v5, 0x17

    if-ne p2, v5, :cond_41

    .line 1033
    invoke-virtual {v1, p1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 1034
    invoke-virtual {v1, p1, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1038
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_41
    iget-object v5, p0, this$0:Landroid/widget/SearchView;

    # getter for: Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;
    invoke-static {v5}, Landroid/widget/SearchView;->access$1400(Landroid/widget/SearchView;)Landroid/app/SearchableInfo;

    move-result-object v5

    if-nez v5, :cond_4c

    .line 1076
    :cond_49
    :goto_49
    return v3

    .end local v2    # "isFolderTypeFeature":Z
    :cond_4a
    move v2, v3

    .line 1025
    goto :goto_27

    .line 1049
    .restart local v2    # "isFolderTypeFeature":Z
    :cond_4c
    iget-object v5, p0, this$0:Landroid/widget/SearchView;

    # getter for: Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;
    invoke-static {v5}, Landroid/widget/SearchView;->access$1200(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SearchView$SearchAutoComplete;->isPopupShowing()Z

    move-result v5

    if-eqz v5, :cond_6c

    iget-object v5, p0, this$0:Landroid/widget/SearchView;

    # getter for: Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;
    invoke-static {v5}, Landroid/widget/SearchView;->access$1200(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6c

    .line 1051
    iget-object v3, p0, this$0:Landroid/widget/SearchView;

    # invokes: Landroid/widget/SearchView;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    invoke-static {v3, p1, p2, p3}, Landroid/widget/SearchView;->access$1500(Landroid/widget/SearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_49

    .line 1056
    :cond_6c
    iget-object v5, p0, this$0:Landroid/widget/SearchView;

    # getter for: Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;
    invoke-static {v5}, Landroid/widget/SearchView;->access$1200(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v5

    # invokes: Landroid/widget/SearchView$SearchAutoComplete;->isEmpty()Z
    invoke-static {v5}, Landroid/widget/SearchView$SearchAutoComplete;->access$1600(Landroid/widget/SearchView$SearchAutoComplete;)Z

    move-result v5

    if-nez v5, :cond_49

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 1057
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_a1

    .line 1058
    const/16 v5, 0x42

    if-ne p2, v5, :cond_a1

    .line 1059
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 1062
    iget-object v5, p0, this$0:Landroid/widget/SearchView;

    const/4 v6, 0x0

    iget-object v7, p0, this$0:Landroid/widget/SearchView;

    # getter for: Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;
    invoke-static {v7}, Landroid/widget/SearchView;->access$1200(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Landroid/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v3, v6, v7}, Landroid/widget/SearchView;->access$1700(Landroid/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 1064
    goto :goto_49

    .line 1067
    :cond_a1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_49

    .line 1068
    iget-object v5, p0, this$0:Landroid/widget/SearchView;

    # getter for: Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;
    invoke-static {v5}, Landroid/widget/SearchView;->access$1400(Landroid/widget/SearchView;)Landroid/app/SearchableInfo;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .line 1069
    .local v0, "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_49

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_49

    .line 1070
    iget-object v3, p0, this$0:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, this$0:Landroid/widget/SearchView;

    # getter for: Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;
    invoke-static {v6}, Landroid/widget/SearchView;->access$1200(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Landroid/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, p2, v5, v6}, Landroid/widget/SearchView;->access$1700(Landroid/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 1072
    goto/16 :goto_49
.end method
