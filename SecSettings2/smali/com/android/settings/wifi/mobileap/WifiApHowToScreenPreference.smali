.class public Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;
.super Landroid/preference/Preference;
.source "WifiApHowToScreenPreference.java"


# instance fields
.field private mHiddenSsid:Z

.field private mPreSharedKey:Ljava/lang/String;

.field private mShouldShowSummary:Z

.field private mSsid:Ljava/lang/String;

.field private mText_color:Ljava/lang/String;

.field private mWpaString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mPreSharedKey:Ljava/lang/String;

    .line 46
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mHiddenSsid:Z

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mWpaString:Ljava/lang/String;

    .line 48
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mShouldShowSummary:Z

    .line 52
    const v0, 0x7f040245

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->setLayoutResource(I)V

    .line 53
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 59
    const v6, 0x7f0d0588

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 60
    .local v2, "title1":Landroid/widget/TextView;
    const v6, 0x7f0d058b

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 61
    .local v3, "title2":Landroid/widget/TextView;
    const v6, 0x7f0d058e

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 62
    .local v4, "title3":Landroid/widget/TextView;
    const v6, 0x7f0d0591

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 63
    .local v5, "title4":Landroid/widget/TextView;
    const v6, 0x7f0d058f

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 64
    .local v0, "layout4":Landroid/widget/LinearLayout;
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 67
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mPreSharedKey:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 68
    iget-boolean v6, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mHiddenSsid:Z

    if-eqz v6, :cond_1

    .line 69
    const v6, 0x7f0e04c7

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0e04c8

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0e04c9

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const-string v6, "TMO"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 73
    const v6, 0x7f0e04ca

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 74
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 122
    :cond_0
    :goto_0
    const v6, 0x7f0d011b

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 123
    .local v1, "summary":Landroid/widget/TextView;
    iget-boolean v6, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mShouldShowSummary:Z

    if-eqz v6, :cond_9

    .line 124
    const v6, 0x7f0e04d5

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 125
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    :goto_1
    return-void

    .line 78
    .end local v1    # "summary":Landroid/widget/TextView;
    :cond_1
    const v6, 0x7f0e04bf

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 79
    const-string v6, "SPRINT"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 80
    const v6, 0x7f0e04c0

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 84
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0e04c1

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const-string v6, "VZW"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "TMO"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "SPRINT"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "ATT"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "MTR"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "USC"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 88
    :cond_2
    const v6, 0x7f0e04c2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 89
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 82
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0e04c0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 93
    :cond_4
    iget-boolean v6, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mHiddenSsid:Z

    if-eqz v6, :cond_5

    .line 94
    const v6, 0x7f0e04cb

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0e04cc

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0e04cd

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mPreSharedKey:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const-string v6, "TMO"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 98
    const v6, 0x7f0e04ce

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 99
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 102
    :cond_5
    const v6, 0x7f0e04c3

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 103
    const-string v6, "SPRINT"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 104
    const v6, 0x7f0e04c4

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 108
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0e04c5

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mPreSharedKey:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    const-string v6, "VZW"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "TMO"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "SPRINT"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "ATT"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "MTR"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "USC"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 112
    :cond_6
    const-string v6, "SPRINT"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0e04c6

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mPreSharedKey:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mWpaString:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_4
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 106
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0e04c4

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 115
    :cond_8
    const v6, 0x7f0e04c2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 127
    .restart local v1    # "summary":Landroid/widget/TextView;
    :cond_9
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public setHowToView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "text_color"    # Ljava/lang/String;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "preSharedKey"    # Ljava/lang/String;
    .param p4, "hiddenSsid"    # Z

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    .line 135
    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    .line 136
    iput-object p3, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mPreSharedKey:Ljava/lang/String;

    .line 137
    iput-boolean p4, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mHiddenSsid:Z

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->notifyHierarchyChanged()V

    .line 139
    return-void
.end method

.method public setHowToView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "text_color"    # Ljava/lang/String;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "preSharedKey"    # Ljava/lang/String;
    .param p4, "hiddenSsid"    # Z
    .param p5, "wpaString"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    .line 153
    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    .line 154
    iput-object p3, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mPreSharedKey:Ljava/lang/String;

    .line 155
    iput-boolean p4, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mHiddenSsid:Z

    .line 156
    iput-object p5, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mWpaString:Ljava/lang/String;

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->notifyHierarchyChanged()V

    .line 158
    return-void
.end method

.method public setHowToView(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "text_color"    # Ljava/lang/String;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "hiddenSsid"    # Z

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    .line 144
    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    .line 145
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mPreSharedKey:Ljava/lang/String;

    .line 146
    iput-boolean p3, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mHiddenSsid:Z

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->notifyHierarchyChanged()V

    .line 148
    return-void
.end method

.method public showSummary()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mShouldShowSummary:Z

    .line 163
    return-void
.end method
