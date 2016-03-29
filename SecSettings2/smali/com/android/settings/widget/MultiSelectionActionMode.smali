.class public Lcom/android/settings/widget/MultiSelectionActionMode;
.super Ljava/lang/Object;
.source "MultiSelectionActionMode.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/MultiSelectionActionMode$ListViewItemClickListener;,
        Lcom/android/settings/widget/MultiSelectionActionMode$ObservableActionModeCallback;
    }
.end annotation


# instance fields
.field private mActionModeCallback:Lcom/android/settings/widget/MultiSelectionActionMode$ObservableActionModeCallback;

.field private mAllCheckBox:Landroid/widget/CheckBox;

.field private mAllCheckContainer:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mListView:Landroid/widget/ListView;

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mSelectedNumView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/MultiSelectionActionMode$ObservableActionModeCallback;Landroid/widget/ListView;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/settings/widget/MultiSelectionActionMode$ObservableActionModeCallback;
    .param p3, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mActionModeCallback:Lcom/android/settings/widget/MultiSelectionActionMode$ObservableActionModeCallback;

    .line 48
    iput-object p3, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;

    .line 49
    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/settings/widget/MultiSelectionActionMode$ListViewItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/widget/MultiSelectionActionMode$ListViewItemClickListener;-><init>(Lcom/android/settings/widget/MultiSelectionActionMode;Lcom/android/settings/widget/MultiSelectionActionMode$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 50
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/widget/MultiSelectionActionMode;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/widget/MultiSelectionActionMode;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/widget/MultiSelectionActionMode;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/widget/MultiSelectionActionMode;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/widget/MultiSelectionActionMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/widget/MultiSelectionActionMode;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings/widget/MultiSelectionActionMode;->clickAllCheck()V

    return-void
.end method

.method private clickAllCheck()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 134
    iget-object v5, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mAllCheckBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 135
    iget-object v2, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    iget-object v2, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 138
    .local v0, "checkedItems":Landroid/util/SparseBooleanArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 139
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 138
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "checkedItems":Landroid/util/SparseBooleanArray;
    .end local v1    # "i":I
    :cond_1
    move v2, v4

    .line 134
    goto :goto_0

    .line 144
    :cond_2
    iget-object v2, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 146
    .restart local v0    # "checkedItems":Landroid/util/SparseBooleanArray;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 147
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 148
    iget-object v2, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 146
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 152
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/widget/MultiSelectionActionMode;->updateActionBarStatus()V

    .line 153
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 85
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 90
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mActionModeCallback:Lcom/android/settings/widget/MultiSelectionActionMode$ObservableActionModeCallback;

    invoke-interface {v0}, Lcom/android/settings/widget/MultiSelectionActionMode$ObservableActionModeCallback;->clickDoneBtn()V

    .line 93
    const/4 v0, 0x1

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x7f0d06bf
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f040069

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mMultiSelectActionBarView:Landroid/view/View;

    .line 100
    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f0d0127

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mAllCheckContainer:Landroid/widget/LinearLayout;

    .line 101
    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mAllCheckContainer:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/settings/widget/MultiSelectionActionMode$1;

    invoke-direct {v3, p0}, Lcom/android/settings/widget/MultiSelectionActionMode$1;-><init>(Lcom/android/settings/widget/MultiSelectionActionMode;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v3, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mAllCheckContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 110
    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f0d0129

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mSelectedNumView:Landroid/widget/TextView;

    .line 111
    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f0d0128

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mAllCheckBox:Landroid/widget/CheckBox;

    .line 112
    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mAllCheckBox:Landroid/widget/CheckBox;

    new-instance v3, Lcom/android/settings/widget/MultiSelectionActionMode$2;

    invoke-direct {v3, p0}, Lcom/android/settings/widget/MultiSelectionActionMode$2;-><init>(Lcom/android/settings/widget/MultiSelectionActionMode;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 125
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v3, 0x7f140004

    invoke-virtual {v0, v3, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 126
    iput-object p2, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mOptionsMenu:Landroid/view/Menu;

    .line 127
    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f0d06bf

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/widget/MultiSelectionActionMode;->updateActionBarStatus()V

    .line 130
    return v1

    :cond_0
    move v0, v2

    .line 108
    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mActionModeCallback:Lcom/android/settings/widget/MultiSelectionActionMode$ObservableActionModeCallback;

    invoke-interface {v0}, Lcom/android/settings/widget/MultiSelectionActionMode$ObservableActionModeCallback;->destroyActionMode()V

    .line 182
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 186
    const/4 v0, 0x1

    return v0
.end method

.method public requestClick(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 71
    iget-object v4, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v2, v4, v5

    .line 72
    .local v2, "firstPos":I
    sub-int v3, p1, v2

    .line 73
    .local v3, "targetPos":I
    iget-object v4, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 74
    .local v1, "childView":Landroid/view/View;
    if-nez v1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    const v4, 0x1020001

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 79
    .local v0, "check":Landroid/widget/CheckBox;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setSoundEffectsEnabled(Z)V

    .line 80
    invoke-virtual {v0}, Landroid/widget/CheckBox;->performClick()Z

    goto :goto_0
.end method

.method public updateActionBarStatus()V
    .locals 0

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/settings/widget/MultiSelectionActionMode;->updateText()V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/widget/MultiSelectionActionMode;->updateMenuBtn()V

    .line 158
    return-void
.end method

.method public updateMenuBtn()V
    .locals 2

    .prologue
    const v1, 0x7f0d06bf

    .line 172
    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public updateText()V
    .locals 4

    .prologue
    .line 161
    iget-object v1, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mSelectedNumView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    .line 163
    .local v0, "count":I
    if-nez v0, :cond_1

    .line 164
    iget-object v1, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mSelectedNumView:Landroid/widget/TextView;

    const v2, 0x7f0e15c6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 169
    .end local v0    # "count":I
    :cond_0
    :goto_0
    return-void

    .line 166
    .restart local v0    # "count":I
    :cond_1
    iget-object v1, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mSelectedNumView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
