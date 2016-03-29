.class public Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;
.super Landroid/preference/Preference;
.source "AccessibilityDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$Callback;
    }
.end annotation


# instance fields
.field private ShiftSpinnerFromLeft:I

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

.field private mCallback:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$Callback;

.field private final mContext:Landroid/content/Context;

.field public mPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

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
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mValues:Ljava/util/ArrayList;

    .line 26
    const/4 v4, -0x5

    iput v4, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->ShiftSpinnerFromLeft:I

    .line 125
    new-instance v4, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$3;

    invoke-direct {v4, p0}, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$3;-><init>(Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;)V

    iput-object v4, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 35
    iput-object p1, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mContext:Landroid/content/Context;

    .line 36
    new-instance v4, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$1;

    iget-object v5, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mContext:Landroid/content/Context;

    const v6, 0x1090009

    invoke-direct {v4, p0, v5, v6}, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$1;-><init>(Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 51
    new-instance v4, Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mSpinner:Landroid/widget/Spinner;

    .line 52
    iget-object v4, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mSpinner:Landroid/widget/Spinner;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 53
    iget-object v4, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 54
    iget-object v4, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mSpinner:Landroid/widget/Spinner;

    new-instance v5, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$2;

    invoke-direct {v5, p0}, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$2;-><init>(Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 63
    invoke-virtual {p0, v7}, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->setPersistent(Z)V

    .line 72
    iget-object v4, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 74
    sget-object v4, Lcom/android/settings/R$styleable;->DropDownPreference:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 76
    .local v1, "entries":[Ljava/lang/CharSequence;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 77
    .local v3, "values":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 78
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 79
    aget-object v4, v1, v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v3, v2

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;)Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mCallback:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method


# virtual methods
.method public addItem(ILjava/lang/Object;)V
    .locals 1
    .param p1, "captionResid"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public addItem(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "caption"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public clearItems()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 100
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 101
    return-void
.end method

.method public getClickLister()Landroid/preference/Preference$OnPreferenceClickListener;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 108
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 109
    iget-object v2, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 111
    iget-object v2, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    move-object v1, p1

    .line 113
    check-cast v1, Landroid/view/ViewGroup;

    .line 114
    .local v1, "vg":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 115
    iget-object v2, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 116
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 117
    iget-object v2, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v2, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mSpinner:Landroid/widget/Spinner;

    iget v3, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->ShiftSpinnerFromLeft:I

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    goto :goto_0
.end method

.method public setCallback(Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$Callback;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mCallback:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$Callback;

    .line 87
    return-void
.end method
