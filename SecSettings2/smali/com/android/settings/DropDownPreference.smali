.class public Lcom/android/settings/DropDownPreference;
.super Landroid/preference/Preference;
.source "DropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DropDownPreference$Callback;
    }
.end annotation


# instance fields
.field private final mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/settings/DropDownPreference$Callback;

.field private final mContext:Landroid/content/Context;

.field private mSelectedPosition:I

.field private final mSpinner:Landroid/widget/Spinner;

.field private final mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settings/DropDownPreference;->mValues:Ljava/util/ArrayList;

    .line 39
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/settings/DropDownPreference;->mSelectedPosition:I

    .line 47
    iput-object p1, p0, Lcom/android/settings/DropDownPreference;->mContext:Landroid/content/Context;

    .line 48
    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/settings/DropDownPreference;->mContext:Landroid/content/Context;

    const v6, 0x1090009

    invoke-direct {v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/settings/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 51
    new-instance v4, Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settings/DropDownPreference;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    .line 53
    iget-object v4, p0, Lcom/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 54
    iget-object v4, p0, Lcom/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settings/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 55
    iget-object v4, p0, Lcom/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    new-instance v5, Lcom/android/settings/DropDownPreference$1;

    invoke-direct {v5, p0}, Lcom/android/settings/DropDownPreference$1;-><init>(Lcom/android/settings/DropDownPreference;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 66
    invoke-virtual {p0, v7}, Lcom/android/settings/DropDownPreference;->setPersistent(Z)V

    .line 67
    new-instance v4, Lcom/android/settings/DropDownPreference$2;

    invoke-direct {v4, p0}, Lcom/android/settings/DropDownPreference$2;-><init>(Lcom/android/settings/DropDownPreference;)V

    invoke-virtual {p0, v4}, Lcom/android/settings/DropDownPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 77
    sget-object v4, Lcom/android/settings/R$styleable;->DropDownPreference:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 79
    .local v1, "entries":[Ljava/lang/CharSequence;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 80
    .local v3, "values":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 81
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 82
    aget-object v4, v1, v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v3, v2

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DropDownPreference;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DropDownPreference;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method


# virtual methods
.method public addItem(ILjava/lang/Object;)V
    .locals 1
    .param p1, "captionResid"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/settings/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    return-void
.end method

.method public addItem(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "caption"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method public clearItems()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 133
    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 134
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 138
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 139
    iget-object v2, p0, Lcom/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 141
    iget-object v2, p0, Lcom/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    move-object v1, p1

    .line 143
    check-cast v1, Landroid/view/ViewGroup;

    .line 144
    .local v1, "vg":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 145
    iget-object v2, p0, Lcom/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 146
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 147
    iget-object v2, p0, Lcom/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setCallback(Lcom/android/settings/DropDownPreference$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/settings/DropDownPreference$Callback;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/settings/DropDownPreference;->mCallback:Lcom/android/settings/DropDownPreference$Callback;

    .line 93
    return-void
.end method

.method public setSelectedItem(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/DropDownPreference;->setSelectedItem(IZ)V

    .line 97
    return-void
.end method

.method public setSelectedItem(IZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "doCall"    # Z

    .prologue
    .line 100
    iget-object v2, p0, Lcom/android/settings/DropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 101
    .local v1, "value":Ljava/lang/Object;
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/settings/DropDownPreference;->mCallback:Lcom/android/settings/DropDownPreference$Callback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/DropDownPreference;->mCallback:Lcom/android/settings/DropDownPreference$Callback;

    invoke-interface {v2, p1, v1}, Lcom/android/settings/DropDownPreference$Callback;->onItemSelected(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 105
    iget-object v2, p0, Lcom/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, p0, Lcom/android/settings/DropDownPreference;->mSelectedPosition:I

    .line 106
    iget-object v2, p0, Lcom/android/settings/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings/DropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 107
    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 108
    .local v0, "disableDependents":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/DropDownPreference;->notifyDependencyChange(Z)V

    goto :goto_0

    .line 107
    .end local v0    # "disableDependents":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setSelectedValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 112
    iget-object v1, p0, Lcom/android/settings/DropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 113
    .local v0, "i":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/settings/DropDownPreference;->setSelectedItem(I)V

    .line 116
    :cond_0
    return-void
.end method
