.class public Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "RedactionInterstitial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/RedactionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RedactionInterstitialFragment"
.end annotation


# instance fields
.field private mDoneButton:Landroid/widget/Button;

.field private mHideAllButton:Landroid/widget/CheckedTextView;

.field private mRedactSensitiveButton:Landroid/widget/CheckedTextView;

.field private mShowAllButton:Landroid/widget/CheckedTextView;

.field private mTitleText:Landroid/widget/TextView;

.field title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->title:Ljava/lang/CharSequence;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;)Landroid/widget/CheckedTextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;)Landroid/widget/CheckedTextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;)Landroid/widget/CheckedTextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mHideAllButton:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method private loadFromSettings()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_show_notifications"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 181
    .local v0, "enabled":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_allow_private_notifications"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 183
    .local v1, "show":Z
    :goto_1
    iget-object v5, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    move v4, v2

    :goto_2
    invoke-virtual {v5, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 184
    iget-object v5, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    move v4, v2

    :goto_3
    invoke-virtual {v5, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 185
    iget-object v4, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mHideAllButton:Landroid/widget/CheckedTextView;

    if-nez v0, :cond_4

    :goto_4
    invoke-virtual {v4, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 186
    return-void

    .end local v0    # "enabled":Z
    .end local v1    # "show":Z
    :cond_0
    move v0, v3

    .line 179
    goto :goto_0

    .restart local v0    # "enabled":Z
    :cond_1
    move v1, v3

    .line 181
    goto :goto_1

    .restart local v1    # "show":Z
    :cond_2
    move v4, v3

    .line 183
    goto :goto_2

    :cond_3
    move v4, v3

    .line 184
    goto :goto_3

    :cond_4
    move v2, v3

    .line 185
    goto :goto_4
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 114
    const/16 v0, 0x4a

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 192
    iget-object v4, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mDoneButton:Landroid/widget/Button;

    if-ne p1, v4, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->finish()V

    .line 209
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v4, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Landroid/widget/CheckedTextView;

    if-ne p1, v4, :cond_1

    move v1, v2

    .line 199
    .local v1, "show":Z
    :goto_1
    iget-object v4, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mHideAllButton:Landroid/widget/CheckedTextView;

    if-eq p1, v4, :cond_2

    move v0, v2

    .line 201
    .local v0, "enabled":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_allow_private_notifications"

    if-eqz v1, :cond_3

    move v4, v2

    :goto_3
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_show_notifications"

    if-eqz v0, :cond_4

    move v4, v2

    :goto_4
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 206
    iget-object v5, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    move v4, v2

    :goto_5
    invoke-virtual {v5, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 207
    iget-object v5, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_6

    if-nez v1, :cond_6

    move v4, v2

    :goto_6
    invoke-virtual {v5, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 208
    iget-object v4, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mHideAllButton:Landroid/widget/CheckedTextView;

    if-nez v0, :cond_7

    :goto_7
    invoke-virtual {v4, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    .end local v0    # "enabled":Z
    .end local v1    # "show":Z
    :cond_1
    move v1, v3

    .line 198
    goto :goto_1

    .restart local v1    # "show":Z
    :cond_2
    move v0, v3

    .line 199
    goto :goto_2

    .restart local v0    # "enabled":Z
    :cond_3
    move v4, v3

    .line 201
    goto :goto_3

    :cond_4
    move v4, v3

    .line 203
    goto :goto_4

    :cond_5
    move v4, v3

    .line 206
    goto :goto_5

    :cond_6
    move v4, v3

    .line 207
    goto :goto_6

    :cond_7
    move v2, v3

    .line 208
    goto :goto_7
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    const v0, 0x7f0401b1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 175
    invoke-direct {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->loadFromSettings()V

    .line 176
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 125
    const v1, 0x7f0d044e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Landroid/widget/CheckedTextView;

    .line 126
    const v1, 0x7f0d0450

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Landroid/widget/CheckedTextView;

    .line 127
    const v1, 0x7f0d0452

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mHideAllButton:Landroid/widget/CheckedTextView;

    .line 129
    iget-object v1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mHideAllButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const-string v1, "com.android.settings.SetupRedactionInterstitial$SetupEncryptionInterstitialFragment"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 134
    .local v0, "isSetupWizardPage":Z
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 135
    const v1, 0x7f0d0018

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mDoneButton:Landroid/widget/Button;

    .line 136
    iget-object v1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v1, 0x7f0d0017

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mTitleText:Landroid/widget/TextView;

    .line 139
    iget-object v1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mTitleText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mTitleText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    iget-object v1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0e23

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Landroid/widget/CheckedTextView;

    new-instance v2, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment$1;-><init>(Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->post(Ljava/lang/Runnable;)Z

    .line 153
    iget-object v1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Landroid/widget/CheckedTextView;

    new-instance v2, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment$2;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment$2;-><init>(Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->post(Ljava/lang/Runnable;)Z

    .line 162
    iget-object v1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mHideAllButton:Landroid/widget/CheckedTextView;

    new-instance v2, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment$3;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment$3;-><init>(Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->post(Ljava/lang/Runnable;)Z

    .line 170
    return-void
.end method
