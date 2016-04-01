.class public Landroid/widget/AutoCompleteTextView;
.super Landroid/widget/EditText;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;,
        Landroid/widget/AutoCompleteTextView$PassThroughClickListener;,
        Landroid/widget/AutoCompleteTextView$OnDismissListener;,
        Landroid/widget/AutoCompleteTextView$Validator;,
        Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;,
        Landroid/widget/AutoCompleteTextView$MyWatcher;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final EXPAND_MAX:I = 0x3

.field static final TAG:Ljava/lang/String; = "AutoCompleteTextView"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mBlockCompletion:Z

.field private mDropDownAnchorId:I

.field private mDropDownDismissedOnCompletion:Z

.field private mFilter:Landroid/widget/Filter;

.field private mHintResource:I

.field private mHintText:Ljava/lang/CharSequence;

.field private mHintView:Landroid/widget/TextView;

.field private mIsDeviceDefault:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mLastKeyCode:I

.field private mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

.field private mOpenBefore:Z

.field private mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private mPopupCanBeUpdated:Z

.field private mThreshold:I

.field private mValidator:Landroid/widget/AutoCompleteTextView$Validator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 137
    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 146
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 113
    iput-boolean v5, p0, mDropDownDismissedOnCompletion:Z

    .line 115
    iput v7, p0, mLastKeyCode:I

    .line 118
    iput-object v6, p0, mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    .line 125
    iput-boolean v5, p0, mPopupCanBeUpdated:Z

    .line 130
    iput-boolean v7, p0, mIsDeviceDefault:Z

    .line 149
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 150
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x11600bd

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 151
    iget v3, v2, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_27

    .line 152
    iput-boolean v5, p0, mIsDeviceDefault:Z

    .line 155
    :cond_27
    new-instance v3, Landroid/widget/ListPopupWindow;

    invoke-direct {v3, p1, p2, p3, p4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v3, p0, mPopup:Landroid/widget/ListPopupWindow;

    .line 156
    iget-object v3, p0, mPopup:Landroid/widget/ListPopupWindow;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setSoftInputMode(I)V

    .line 157
    iget-object v3, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3, v5}, Landroid/widget/ListPopupWindow;->setPromptPosition(I)V

    .line 159
    sget-object v3, Lcom/android/internal/R$styleable;->AutoCompleteTextView:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 162
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, mThreshold:I

    .line 164
    iget-object v3, p0, mPopup:Landroid/widget/ListPopupWindow;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setListSelector(Landroid/graphics/drawable/Drawable;)V

    .line 170
    const/4 v3, 0x6

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, mDropDownAnchorId:I

    .line 175
    iget-object v3, p0, mPopup:Landroid/widget/ListPopupWindow;

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 177
    iget-object v3, p0, mPopup:Landroid/widget/ListPopupWindow;

    const/4 v4, 0x7

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 180
    const v3, 0x10900fc

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, mHintResource:I

    .line 183
    iget-object v3, p0, mPopup:Landroid/widget/ListPopupWindow;

    new-instance v4, Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;

    invoke-direct {v4, p0, v6}, Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 184
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, setCompletionHint(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual {p0}, getInputType()I

    move-result v1

    .line 189
    .local v1, "inputType":I
    and-int/lit8 v3, v1, 0xf

    if-ne v3, v5, :cond_94

    .line 191
    const/high16 v3, 0x10000

    or-int/2addr v1, v3

    .line 192
    invoke-virtual {p0, v1}, setRawInputType(I)V

    .line 195
    :cond_94
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 197
    invoke-virtual {p0, v5}, setFocusable(Z)V

    .line 199
    new-instance v3, Landroid/widget/AutoCompleteTextView$MyWatcher;

    invoke-direct {v3, p0, v6}, Landroid/widget/AutoCompleteTextView$MyWatcher;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    invoke-virtual {p0, v3}, addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 201
    new-instance v3, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-direct {v3, p0, v6}, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    iput-object v3, p0, mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    .line 202
    iget-object v3, p0, mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-super {p0, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    return-void
.end method

.method static synthetic access$500(Landroid/widget/AutoCompleteTextView;Landroid/view/View;IJ)V
    .registers 6
    .param p0, "x0"    # Landroid/widget/AutoCompleteTextView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, performCompletion(Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/AutoCompleteTextView;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/AutoCompleteTextView;

    .prologue
    .line 93
    invoke-direct {p0}, onClickImpl()V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/AutoCompleteTextView;)Landroid/widget/ListAdapter;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AutoCompleteTextView;

    .prologue
    .line 93
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/AutoCompleteTextView;I)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/AutoCompleteTextView;
    .param p1, "x1"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1}, updateDropDownForFilter(I)V

    return-void
.end method

.method private buildImeCompletions()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 1150
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    .line 1151
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_44

    .line 1152
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v6

    .line 1153
    .local v6, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v6, :cond_44

    .line 1154
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    const/16 v11, 0x14

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1155
    .local v2, "count":I
    new-array v1, v2, [Landroid/view/inputmethod/CompletionInfo;

    .line 1156
    .local v1, "completions":[Landroid/view/inputmethod/CompletionInfo;
    const/4 v8, 0x0

    .line 1158
    .local v8, "realCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    if-ge v3, v2, :cond_39

    .line 1159
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_36

    .line 1160
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    .line 1161
    .local v7, "item":Ljava/lang/Object;
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1162
    .local v4, "id":J
    new-instance v10, Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {p0, v7}, convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-direct {v10, v4, v5, v8, v11}, Landroid/view/inputmethod/CompletionInfo;-><init>(JILjava/lang/CharSequence;)V

    aput-object v10, v1, v8

    .line 1164
    add-int/lit8 v8, v8, 0x1

    .line 1158
    .end local v4    # "id":J
    .end local v7    # "item":Ljava/lang/Object;
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 1168
    :cond_39
    if-eq v8, v2, :cond_41

    .line 1169
    new-array v9, v8, [Landroid/view/inputmethod/CompletionInfo;

    .line 1170
    .local v9, "tmp":[Landroid/view/inputmethod/CompletionInfo;
    invoke-static {v1, v12, v9, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1171
    move-object v1, v9

    .line 1174
    .end local v9    # "tmp":[Landroid/view/inputmethod/CompletionInfo;
    :cond_41
    invoke-virtual {v6, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 1177
    .end local v1    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v6    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v8    # "realCount":I
    :cond_44
    return-void
.end method

.method private onClickImpl()V
    .registers 2

    .prologue
    .line 227
    invoke-virtual {p0}, isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 228
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, ensureImeVisible(Z)V

    .line 230
    :cond_a
    return-void
.end method

.method private performCompletion(Landroid/view/View;IJ)V
    .registers 14
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 904
    invoke-virtual {p0}, isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 906
    if-gez p2, :cond_19

    .line 907
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    .line 911
    .local v7, "selectedItem":Ljava/lang/Object;
    :goto_e
    if-nez v7, :cond_20

    .line 912
    const-string v0, "AutoCompleteTextView"

    const-string/jumbo v1, "performCompletion: no selected item"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    .end local v7    # "selectedItem":Ljava/lang/Object;
    :cond_18
    :goto_18
    return-void

    .line 909
    :cond_19
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    .restart local v7    # "selectedItem":Ljava/lang/Object;
    goto :goto_e

    .line 916
    :cond_20
    const/4 v0, 0x1

    iput-boolean v0, p0, mBlockCompletion:Z

    .line 917
    invoke-virtual {p0, v7}, convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, replaceText(Ljava/lang/CharSequence;)V

    .line 918
    const/4 v0, 0x0

    iput-boolean v0, p0, mBlockCompletion:Z

    .line 920
    iget-object v0, p0, mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_4f

    .line 921
    iget-object v6, p0, mPopup:Landroid/widget/ListPopupWindow;

    .line 923
    .local v6, "list":Landroid/widget/ListPopupWindow;
    if-eqz p1, :cond_37

    if-gez p2, :cond_43

    .line 924
    :cond_37
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getSelectedView()Landroid/view/View;

    move-result-object p1

    .line 925
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getSelectedItemPosition()I

    move-result p2

    .line 926
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getSelectedItemId()J

    move-result-wide p3

    .line 928
    :cond_43
    iget-object v0, p0, mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 932
    .end local v6    # "list":Landroid/widget/ListPopupWindow;
    .end local v7    # "selectedItem":Ljava/lang/Object;
    :cond_4f
    iget-boolean v0, p0, mDropDownDismissedOnCompletion:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_18

    .line 933
    invoke-virtual {p0}, dismissDropDown()V

    goto :goto_18
.end method

.method private updateDropDownForFilter(I)V
    .registers 6
    .param p1, "count"    # I

    .prologue
    .line 984
    invoke-virtual {p0}, getWindowVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_9

    .line 1006
    :cond_8
    :goto_8
    return-void

    .line 993
    :cond_9
    iget-object v2, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    .line 994
    .local v0, "dropDownAlwaysVisible":Z
    invoke-virtual {p0}, enoughToFilter()Z

    move-result v1

    .line 995
    .local v1, "enoughToFilter":Z
    if-gtz p1, :cond_17

    if-eqz v0, :cond_2d

    :cond_17
    if-eqz v1, :cond_2d

    .line 996
    invoke-virtual {p0}, hasFocus()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean v2, p0, mPopupCanBeUpdated:Z

    if-eqz v2, :cond_8

    .line 997
    invoke-virtual {p0}, showDropDown()V

    goto :goto_8

    .line 999
    :cond_2d
    if-nez v0, :cond_8

    invoke-virtual {p0}, isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1000
    invoke-virtual {p0}, dismissDropDown()V

    .line 1004
    const/4 v2, 0x1

    iput-boolean v2, p0, mPopupCanBeUpdated:Z

    goto :goto_8
.end method


# virtual methods
.method public clearListSelection()V
    .registers 2

    .prologue
    .line 846
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    .line 847
    return-void
.end method

.method protected convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "selectedItem"    # Ljava/lang/Object;

    .prologue
    .line 838
    iget-object v0, p0, mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public dismissDropDown()V
    .registers 3

    .prologue
    .line 1061
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1062
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_a

    .line 1063
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 1065
    :cond_a
    iget-object v1, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1066
    const/4 v1, 0x0

    iput-boolean v1, p0, mPopupCanBeUpdated:Z

    .line 1067
    return-void
.end method

.method doAfterTextChanged()V
    .registers 3

    .prologue
    .line 790
    iget-boolean v0, p0, mBlockCompletion:Z

    if-eqz v0, :cond_5

    .line 818
    :cond_4
    :goto_4
    return-void

    .line 797
    :cond_5
    iget-boolean v0, p0, mOpenBefore:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 803
    :cond_f
    invoke-virtual {p0}, enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 804
    iget-object v0, p0, mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_4

    .line 805
    const/4 v0, 0x1

    iput-boolean v0, p0, mPopupCanBeUpdated:Z

    .line 806
    invoke-virtual {p0}, getText()Landroid/text/Editable;

    move-result-object v0

    iget v1, p0, mLastKeyCode:I

    invoke-virtual {p0, v0, v1}, performFiltering(Ljava/lang/CharSequence;I)V

    goto :goto_4

    .line 811
    :cond_26
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_31

    .line 812
    invoke-virtual {p0}, dismissDropDown()V

    .line 814
    :cond_31
    iget-object v0, p0, mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_4

    .line 815
    iget-object v0, p0, mFilter:Landroid/widget/Filter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method doBeforeTextChanged()V
    .registers 2

    .prologue
    .line 781
    iget-boolean v0, p0, mBlockCompletion:Z

    if-eqz v0, :cond_5

    .line 787
    :goto_4
    return-void

    .line 785
    :cond_5
    invoke-virtual {p0}, isPopupShowing()Z

    move-result v0

    iput-boolean v0, p0, mOpenBefore:Z

    goto :goto_4
.end method

.method public enoughToFilter()Z
    .registers 3

    .prologue
    .line 761
    invoke-virtual {p0}, getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, mThreshold:I

    if-lt v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public ensureImeVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .prologue
    .line 1096
    iget-object v1, p0, mPopup:Landroid/widget/ListPopupWindow;

    if-eqz p1, :cond_28

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 1098
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_27

    invoke-virtual {p0}, enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1099
    :cond_1a
    iget-boolean v0, p0, mIsDeviceDefault:Z

    if-eqz v0, :cond_24

    invoke-virtual {p0}, isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1100
    :cond_24
    invoke-virtual {p0}, showDropDown()V

    .line 1102
    :cond_27
    return-void

    .line 1096
    :cond_28
    const/4 v0, 0x2

    goto :goto_5
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 630
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCompletionHint()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDropDownAnchor()I
    .registers 2

    .prologue
    .line 336
    iget v0, p0, mDropDownAnchorId:I

    return v0
.end method

.method public getDropDownAnimationStyle()I
    .registers 2

    .prologue
    .line 455
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getDropDownBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDropDownHeight()I
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getHeight()I

    move-result v0

    return v0
.end method

.method public getDropDownHorizontalOffset()I
    .registers 2

    .prologue
    .line 427
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getHorizontalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .registers 2

    .prologue
    .line 405
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getVerticalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownWidth()I
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getWidth()I

    move-result v0

    return v0
.end method

.method protected getFilter()Landroid/widget/Filter;
    .registers 2

    .prologue
    .line 1225
    iget-object v0, p0, mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 571
    iget-object v0, p0, mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 584
    iget-object v0, p0, mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getListSelection()I
    .registers 2

    .prologue
    .line 869
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .prologue
    .line 594
    iget-object v0, p0, mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .registers 2

    .prologue
    .line 604
    iget-object v0, p0, mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getThreshold()I
    .registers 2

    .prologue
    .line 516
    iget v0, p0, mThreshold:I

    return v0
.end method

.method public getValidator()Landroid/widget/AutoCompleteTextView$Validator;
    .registers 2

    .prologue
    .line 1199
    iget-object v0, p0, mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    return-object v0
.end method

.method public isDropDownAlwaysVisible()Z
    .registers 2

    .prologue
    .line 464
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    return v0
.end method

.method public isDropDownDismissedOnCompletion()Z
    .registers 2

    .prologue
    .line 490
    iget-boolean v0, p0, mDropDownDismissedOnCompletion:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .registers 3

    .prologue
    .line 1108
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isPerformingCompletion()Z
    .registers 2

    .prologue
    .line 942
    iget-boolean v0, p0, mBlockCompletion:Z

    return v0
.end method

.method public isPopupShowing()Z
    .registers 2

    .prologue
    .line 826
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 1048
    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    .line 1049
    return-void
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .registers 4
    .param p1, "completion"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 898
    invoke-virtual {p0}, isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 899
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->performItemClick(I)Z

    .line 901
    :cond_f
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x2

    .line 207
    invoke-super {p0, p1}, Landroid/widget/EditText;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 209
    invoke-virtual {p0}, isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, getImeOptions()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-nez v0, :cond_25

    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getInputMethodMode()I

    move-result v0

    if-ne v0, v2, :cond_25

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_25

    .line 212
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 214
    :cond_25
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 1053
    invoke-virtual {p0}, dismissDropDown()V

    .line 1054
    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    .line 1055
    return-void
.end method

.method protected onDisplayHint(I)V
    .registers 3
    .param p1, "hint"    # I

    .prologue
    .line 1018
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDisplayHint(I)V

    .line 1019
    packed-switch p1, :pswitch_data_14

    .line 1026
    :cond_6
    :goto_6
    return-void

    .line 1021
    :pswitch_7
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1022
    invoke-virtual {p0}, dismissDropDown()V

    goto :goto_6

    .line 1019
    nop

    :pswitch_data_14
    .packed-switch 0x4
        :pswitch_7
    .end packed-switch
.end method

.method public onFilterComplete(I)V
    .registers 2
    .param p1, "count"    # I

    .prologue
    .line 979
    invoke-direct {p0, p1}, updateDropDownForFilter(I)V

    .line 980
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1030
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1032
    iget-boolean v0, p0, mTemporaryDetach:Z

    if-eqz v0, :cond_8

    .line 1044
    :cond_7
    :goto_7
    return-void

    .line 1038
    :cond_8
    if-nez p1, :cond_d

    .line 1039
    invoke-virtual {p0}, performValidation()V

    .line 1041
    :cond_d
    if-nez p1, :cond_7

    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1042
    invoke-virtual {p0}, dismissDropDown()V

    goto :goto_7
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 724
    iget-object v1, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, p1, p2}, Landroid/widget/ListPopupWindow;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 749
    :cond_9
    :goto_9
    return v0

    .line 728
    :cond_a
    invoke-virtual {p0}, isPopupShowing()Z

    move-result v1

    if-nez v1, :cond_13

    .line 729
    packed-switch p1, :pswitch_data_42

    .line 737
    :cond_13
    :goto_13
    invoke-virtual {p0}, isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_23

    const/16 v1, 0x3d

    if-ne p1, v1, :cond_23

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-nez v1, :cond_9

    .line 741
    :cond_23
    iput p1, p0, mLastKeyCode:I

    .line 742
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 743
    .local v0, "handled":Z
    const/4 v1, 0x0

    iput v1, p0, mLastKeyCode:I

    .line 745
    if-eqz v0, :cond_9

    invoke-virtual {p0}, isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 746
    invoke-virtual {p0}, clearListSelection()V

    goto :goto_9

    .line 731
    .end local v0    # "handled":Z
    :pswitch_38
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 732
    invoke-virtual {p0}, performValidation()V

    goto :goto_13

    .line 729
    :pswitch_data_42
    .packed-switch 0x14
        :pswitch_38
    .end packed-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 672
    const/4 v2, 0x4

    if-ne p1, v2, :cond_47

    invoke-virtual {p0}, isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_47

    iget-object v2, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v2

    if-nez v2, :cond_47

    .line 676
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_28

    .line 677
    invoke-virtual {p0}, getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 678
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_27

    .line 679
    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 693
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_27
    :goto_27
    return v1

    .line 682
    :cond_28
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_47

    .line 683
    invoke-virtual {p0}, getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 684
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_37

    .line 685
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 687
    :cond_37
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_47

    .line 688
    invoke-virtual {p0}, dismissDropDown()V

    goto :goto_27

    .line 693
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_47
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_27
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 698
    iget-object v2, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, p1, p2}, Landroid/widget/ListPopupWindow;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 699
    .local v0, "consumed":Z
    if-eqz v0, :cond_c

    .line 700
    sparse-switch p1, :sswitch_data_30

    .line 714
    :cond_c
    invoke-virtual {p0}, isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v2, 0x3d

    if-ne p1, v2, :cond_2a

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 715
    invoke-virtual {p0}, performCompletion()V

    .line 719
    :cond_1f
    :goto_1f
    return v1

    .line 707
    :sswitch_20
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 708
    invoke-virtual {p0}, performCompletion()V

    goto :goto_1f

    .line 719
    :cond_2a
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1f

    .line 700
    nop

    :sswitch_data_30
    .sparse-switch
        0x17 -> :sswitch_20
        0x3d -> :sswitch_20
        0x42 -> :sswitch_20
    .end sparse-switch
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1010
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    .line 1011
    if-nez p1, :cond_10

    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1012
    invoke-virtual {p0}, dismissDropDown()V

    .line 1014
    :cond_10
    return-void
.end method

.method public performCompletion()V
    .registers 5

    .prologue
    .line 893
    const/4 v0, 0x0

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, performCompletion(Landroid/view/View;IJ)V

    .line 894
    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "keyCode"    # I

    .prologue
    .line 884
    iget-object v0, p0, mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 885
    return-void
.end method

.method public performValidation()V
    .registers 3

    .prologue
    .line 1210
    iget-object v1, p0, mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-nez v1, :cond_5

    .line 1217
    :cond_4
    :goto_4
    return-void

    .line 1212
    :cond_5
    invoke-virtual {p0}, getText()Landroid/text/Editable;

    move-result-object v0

    .line 1214
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v1, v0}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1215
    iget-object v1, p0, mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v1, v0}, Landroid/widget/AutoCompleteTextView$Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 969
    invoke-virtual {p0}, clearComposingText()V

    .line 971
    invoke-virtual {p0, p1}, setText(Ljava/lang/CharSequence;)V

    .line 973
    invoke-virtual {p0}, getText()Landroid/text/Editable;

    move-result-object v0

    .line 974
    .local v0, "spannable":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 975
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .local p1, "adapter":Landroid/widget/ListAdapter;, "TT;"
    const/4 v2, 0x0

    .line 653
    iget-object v0, p0, mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    if-nez v0, :cond_29

    .line 654
    new-instance v0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-direct {v0, p0, v2}, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    iput-object v0, p0, mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    .line 658
    :cond_c
    :goto_c
    iput-object p1, p0, mAdapter:Landroid/widget/ListAdapter;

    .line 659
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_35

    .line 661
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iput-object v0, p0, mFilter:Landroid/widget/Filter;

    .line 662
    iget-object v0, p0, mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 667
    :goto_21
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 668
    return-void

    .line 655
    :cond_29
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_c

    .line 656
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_c

    .line 664
    :cond_35
    iput-object v2, p0, mFilter:Landroid/widget/Filter;

    goto :goto_21
.end method

.method public setCompletionHint(Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 244
    iput-object p1, p0, mHintText:Ljava/lang/CharSequence;

    .line 245
    if-eqz p1, :cond_33

    .line 246
    iget-object v1, p0, mHintView:Landroid/widget/TextView;

    if-nez v1, :cond_2d

    .line 247
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, mHintResource:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 249
    .local v0, "hintView":Landroid/widget/TextView;
    iget-object v1, p0, mHintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iput-object v0, p0, mHintView:Landroid/widget/TextView;

    .line 251
    iget-object v1, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setPromptView(Landroid/view/View;)V

    .line 259
    .end local v0    # "hintView":Landroid/widget/TextView;
    :goto_2c
    return-void

    .line 253
    :cond_2d
    iget-object v1, p0, mHintView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2c

    .line 256
    :cond_33
    iget-object v1, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/ListPopupWindow;->setPromptView(Landroid/view/View;)V

    .line 257
    iput-object v3, p0, mHintView:Landroid/widget/TextView;

    goto :goto_2c
.end method

.method public setDropDownAlwaysVisible(Z)V
    .registers 3
    .param p1, "dropDownAlwaysVisible"    # Z

    .prologue
    .line 481
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setDropDownAlwaysVisible(Z)V

    .line 482
    return-void
.end method

.method public setDropDownAnchor(I)V
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 349
    iput p1, p0, mDropDownAnchorId:I

    .line 350
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 351
    return-void
.end method

.method public setDropDownAnimationStyle(I)V
    .registers 3
    .param p1, "animationStyle"    # I

    .prologue
    .line 443
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnimationStyle(I)V

    .line 444
    return-void
.end method

.method public setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 372
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 373
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 383
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 384
    return-void
.end method

.method public setDropDownDismissedOnCompletion(Z)V
    .registers 2
    .param p1, "dropDownDismissedOnCompletion"    # Z

    .prologue
    .line 502
    iput-boolean p1, p0, mDropDownDismissedOnCompletion:Z

    .line 503
    return-void
.end method

.method public setDropDownHeight(I)V
    .registers 3
    .param p1, "height"    # I

    .prologue
    .line 325
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 326
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .registers 3
    .param p1, "offset"    # I

    .prologue
    .line 416
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 417
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .registers 3
    .param p1, "offset"    # I

    .prologue
    .line 394
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 395
    return-void
.end method

.method public setDropDownWidth(I)V
    .registers 3
    .param p1, "width"    # I

    .prologue
    .line 297
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 298
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .registers 3
    .param p1, "forceIgnoreOutsideTouch"    # Z

    .prologue
    .line 1146
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setForceIgnoreOutsideTouch(Z)V

    .line 1147
    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 7
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 1071
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setFrame(IIII)Z

    move-result v0

    .line 1073
    .local v0, "result":Z
    invoke-virtual {p0}, isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1074
    invoke-virtual {p0}, showDropDown()V

    .line 1077
    :cond_d
    return v0
.end method

.method public setListSelection(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 855
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setSelection(I)V

    .line 856
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 218
    iget-object v0, p0, mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    # setter for: Landroid/widget/AutoCompleteTextView$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;
    invoke-static {v0, p1}, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;->access$302(Landroid/widget/AutoCompleteTextView$PassThroughClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    .line 219
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V
    .registers 4
    .param p1, "dismissListener"    # Landroid/widget/AutoCompleteTextView$OnDismissListener;

    .prologue
    .line 613
    const/4 v0, 0x0

    .line 614
    .local v0, "wrappedListener":Landroid/widget/PopupWindow$OnDismissListener;
    if-eqz p1, :cond_8

    .line 615
    new-instance v0, Landroid/widget/AutoCompleteTextView$1;

    .end local v0    # "wrappedListener":Landroid/widget/PopupWindow$OnDismissListener;
    invoke-direct {v0, p0, p1}, Landroid/widget/AutoCompleteTextView$1;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    .line 621
    .restart local v0    # "wrappedListener":Landroid/widget/PopupWindow$OnDismissListener;
    :cond_8
    iget-object v1, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 622
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 548
    iput-object p1, p0, mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 549
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 2
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 558
    iput-object p1, p0, mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 559
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "filter"    # Z

    .prologue
    .line 952
    if-eqz p2, :cond_6

    .line 953
    invoke-virtual {p0, p1}, setText(Ljava/lang/CharSequence;)V

    .line 959
    :goto_5
    return-void

    .line 955
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, mBlockCompletion:Z

    .line 956
    invoke-virtual {p0, p1}, setText(Ljava/lang/CharSequence;)V

    .line 957
    const/4 v0, 0x0

    iput-boolean v0, p0, mBlockCompletion:Z

    goto :goto_5
.end method

.method public setThreshold(I)V
    .registers 2
    .param p1, "threshold"    # I

    .prologue
    .line 534
    if-gtz p1, :cond_3

    .line 535
    const/4 p1, 0x1

    .line 538
    :cond_3
    iput p1, p0, mThreshold:I

    .line 539
    return-void
.end method

.method public setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V
    .registers 2
    .param p1, "validator"    # Landroid/widget/AutoCompleteTextView$Validator;

    .prologue
    .line 1188
    iput-object p1, p0, mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    .line 1189
    return-void
.end method

.method public showDropDown()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1115
    invoke-direct {p0}, buildImeCompletions()V

    .line 1117
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_20

    .line 1118
    iget v0, p0, mDropDownAnchorId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_45

    .line 1119
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, getRootView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, mDropDownAnchorId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1124
    :cond_20
    :goto_20
    invoke-virtual {p0}, isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_31

    .line 1126
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 1127
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setListItemExpandMax(I)V

    .line 1129
    :cond_31
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 1132
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 1135
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/ListPopupWindow;->setIsAutoCompleteTextPopup(Z)V

    .line 1136
    return-void

    .line 1121
    :cond_45
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    goto :goto_20
.end method

.method public showDropDownAfterLayout()V
    .registers 2

    .prologue
    .line 1086
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->postShow()V

    .line 1087
    return-void
.end method
