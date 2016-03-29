.class public Lcom/android/settings/cloud/CloudDescriptionPreference;
.super Landroid/preference/Preference;
.source "CloudDescriptionPreference.java"


# instance fields
.field private cloudDescriptionTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudDescriptionPreference;->cloudDescriptionTextView:Landroid/widget/TextView;

    .line 19
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 24
    const v1, 0x7f0d0114

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/cloud/CloudDescriptionPreference;->cloudDescriptionTextView:Landroid/widget/TextView;

    .line 25
    iget-object v1, p0, Lcom/android/settings/cloud/CloudDescriptionPreference;->cloudDescriptionTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudDescriptionPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e126a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/cloud/CloudDescriptionPreference;->cloudDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    return-void
.end method
