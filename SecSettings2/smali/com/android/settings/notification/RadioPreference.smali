.class public Lcom/android/settings/notification/RadioPreference;
.super Landroid/preference/Preference;
.source "RadioPreference.java"


# instance fields
.field private mChecked:Z

.field mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private volatile mPreventRadioButtonCallbacks:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private final mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/RadioPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    const v0, 0x7f010133

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/notification/RadioPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance v0, Lcom/android/settings/notification/RadioPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/RadioPreference$1;-><init>(Lcom/android/settings/notification/RadioPreference;)V

    iput-object v0, p0, Lcom/android/settings/notification/RadioPreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 102
    new-instance v0, Lcom/android/settings/notification/RadioPreference$3;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/RadioPreference$3;-><init>(Lcom/android/settings/notification/RadioPreference;)V

    iput-object v0, p0, Lcom/android/settings/notification/RadioPreference;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 57
    const v0, 0x7f040197

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/RadioPreference;->setLayoutResource(I)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/RadioPreference;Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/RadioPreference;
    .param p1, "x1"    # Landroid/widget/CompoundButton;
    .param p2, "x2"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/RadioPreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/settings/notification/RadioPreference;->mPreventRadioButtonCallbacks:Z

    if-eqz v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 124
    :cond_0
    iput-boolean p2, p0, Lcom/android/settings/notification/RadioPreference;->mChecked:Z

    .line 125
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 126
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/RadioPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 71
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 72
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0d0405

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 73
    .local v2, "rb":Landroid/widget/RadioButton;
    iget-object v4, p0, Lcom/android/settings/notification/RadioPreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 75
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/notification/RadioPreference;->mPreventRadioButtonCallbacks:Z

    .line 76
    iget-boolean v4, p0, Lcom/android/settings/notification/RadioPreference;->mChecked:Z

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 77
    iput-boolean v5, p0, Lcom/android/settings/notification/RadioPreference;->mPreventRadioButtonCallbacks:Z

    .line 79
    iput-object v2, p0, Lcom/android/settings/notification/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 81
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 82
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 84
    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setFocusable(Z)V

    .line 87
    :cond_0
    const v4, 0x7f0d0404

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 88
    .local v1, "radiocontainer":Landroid/view/View;
    new-instance v4, Lcom/android/settings/notification/RadioPreference$2;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/notification/RadioPreference$2;-><init>(Lcom/android/settings/notification/RadioPreference;Landroid/widget/RadioButton;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v4, 0x7f0d02ea

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 99
    return-object v3
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 135
    iget-boolean v1, p0, Lcom/android/settings/notification/RadioPreference;->mChecked:Z

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 136
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 137
    iput-boolean p1, p0, Lcom/android/settings/notification/RadioPreference;->mChecked:Z

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/RadioPreference;->persistBoolean(Z)Z

    .line 139
    iget-object v1, p0, Lcom/android/settings/notification/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_2

    .line 140
    iget-object v1, p0, Lcom/android/settings/notification/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 145
    :cond_0
    :goto_1
    return-void

    .line 135
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 142
    .restart local v0    # "changed":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notification/RadioPreference;->notifyChanged()V

    goto :goto_1
.end method
