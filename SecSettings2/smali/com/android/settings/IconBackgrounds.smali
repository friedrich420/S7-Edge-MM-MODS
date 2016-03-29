.class public Lcom/android/settings/IconBackgrounds;
.super Landroid/app/Activity;
.source "IconBackgrounds.java"


# instance fields
.field private isEnabledShowBtnBg:Z

.field private isIconBackgrounds:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mContext:Landroid/content/Context;

.field private mIconBackgroundsClickListener:Landroid/view/View$OnClickListener;

.field private mIconBackgroundsLayout:Landroid/widget/LinearLayout;

.field private mIconBackgroundsRadio:Landroid/widget/RadioButton;

.field private mIconOnlyClickListener:Landroid/view/View$OnClickListener;

.field private mIconOnlyLayout:Landroid/widget/LinearLayout;

.field private mIconOnlyRadio:Landroid/widget/RadioButton;

.field private mPreviewImage:Landroid/widget/ImageView;

.field private mSaveButton:Landroid/widget/Button;

.field private mcancelButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    iput-boolean v0, p0, Lcom/android/settings/IconBackgrounds;->isEnabledShowBtnBg:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/settings/IconBackgrounds;->isIconBackgrounds:Z

    .line 59
    new-instance v0, Lcom/android/settings/IconBackgrounds$1;

    invoke-direct {v0, p0}, Lcom/android/settings/IconBackgrounds$1;-><init>(Lcom/android/settings/IconBackgrounds;)V

    iput-object v0, p0, Lcom/android/settings/IconBackgrounds;->mIconBackgroundsClickListener:Landroid/view/View$OnClickListener;

    .line 72
    new-instance v0, Lcom/android/settings/IconBackgrounds$2;

    invoke-direct {v0, p0}, Lcom/android/settings/IconBackgrounds$2;-><init>(Lcom/android/settings/IconBackgrounds;)V

    iput-object v0, p0, Lcom/android/settings/IconBackgrounds;->mIconOnlyClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/IconBackgrounds;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/IconBackgrounds;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/IconBackgrounds;->mIconBackgroundsRadio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/IconBackgrounds;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/IconBackgrounds;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/IconBackgrounds;->mIconOnlyRadio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/IconBackgrounds;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/IconBackgrounds;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/IconBackgrounds;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/IconBackgrounds;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/settings/IconBackgrounds;->isIconBackgrounds:Z

    return v0
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/settings/IconBackgrounds;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IconBackgrounds;->mActionBar:Landroid/app/ActionBar;

    .line 134
    iget-object v0, p0, Lcom/android/settings/IconBackgrounds;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/IconBackgrounds;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f040081

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 136
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 87
    const-string v0, "IconBackgrounds"

    const-string v3, "KKK onCreate"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/IconBackgrounds;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IconBackgrounds;->mContext:Landroid/content/Context;

    .line 91
    const v0, 0x7f04010d

    invoke-virtual {p0, v0}, Lcom/android/settings/IconBackgrounds;->setContentView(I)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/IconBackgrounds;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "show_button_background"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/IconBackgrounds;->isEnabledShowBtnBg:Z

    .line 95
    invoke-direct {p0}, Lcom/android/settings/IconBackgrounds;->configureActionBar()V

    .line 97
    const v0, 0x7f0d02f2

    invoke-virtual {p0, v0}, Lcom/android/settings/IconBackgrounds;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/IconBackgrounds;->mIconBackgroundsLayout:Landroid/widget/LinearLayout;

    .line 98
    const v0, 0x7f0d02f4

    invoke-virtual {p0, v0}, Lcom/android/settings/IconBackgrounds;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/IconBackgrounds;->mIconOnlyLayout:Landroid/widget/LinearLayout;

    .line 100
    const v0, 0x7f0d0276

    invoke-virtual {p0, v0}, Lcom/android/settings/IconBackgrounds;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;

    .line 102
    const v0, 0x7f0d02f3

    invoke-virtual {p0, v0}, Lcom/android/settings/IconBackgrounds;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/IconBackgrounds;->mIconBackgroundsRadio:Landroid/widget/RadioButton;

    .line 103
    const v0, 0x7f0d02f5

    invoke-virtual {p0, v0}, Lcom/android/settings/IconBackgrounds;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/IconBackgrounds;->mIconOnlyRadio:Landroid/widget/RadioButton;

    .line 105
    iget-object v0, p0, Lcom/android/settings/IconBackgrounds;->mIconBackgroundsLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings/IconBackgrounds;->mIconBackgroundsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/IconBackgrounds;->mIconOnlyLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings/IconBackgrounds;->mIconOnlyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/IconBackgrounds;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "tap_to_icon"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/IconBackgrounds;->isIconBackgrounds:Z

    .line 109
    iget-boolean v0, p0, Lcom/android/settings/IconBackgrounds;->isIconBackgrounds:Z

    if-eqz v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/android/settings/IconBackgrounds;->mIconBackgroundsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 111
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/android/settings/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;

    const v1, 0x7f02010b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 93
    goto :goto_0

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/android/settings/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;

    const v1, 0x7f02010a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/android/settings/IconBackgrounds;->mIconOnlyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 118
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 119
    iget-object v0, p0, Lcom/android/settings/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;

    const v1, 0x7f02010d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 121
    :cond_4
    iget-object v0, p0, Lcom/android/settings/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;

    const v1, 0x7f02010c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v3, 0x7f020354

    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 142
    iget-object v1, p0, Lcom/android/settings/IconBackgrounds;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/settings/IconBackgrounds;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, "customView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 145
    const v1, 0x7f0d015b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/IconBackgrounds;->mcancelButton:Landroid/widget/Button;

    .line 146
    iget-object v1, p0, Lcom/android/settings/IconBackgrounds;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/IconBackgrounds;->mcancelButton:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    .line 147
    iget-object v1, p0, Lcom/android/settings/IconBackgrounds;->mcancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/IconBackgrounds$3;

    invoke-direct {v2, p0}, Lcom/android/settings/IconBackgrounds$3;-><init>(Lcom/android/settings/IconBackgrounds;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    const v1, 0x7f0d015c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/IconBackgrounds;->mSaveButton:Landroid/widget/Button;

    .line 155
    iget-object v1, p0, Lcom/android/settings/IconBackgrounds;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f0e0d05

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 156
    iget-object v1, p0, Lcom/android/settings/IconBackgrounds;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/IconBackgrounds;->mSaveButton:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    .line 157
    iget-object v1, p0, Lcom/android/settings/IconBackgrounds;->mSaveButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/IconBackgrounds$4;

    invoke-direct {v2, p0}, Lcom/android/settings/IconBackgrounds$4;-><init>(Lcom/android/settings/IconBackgrounds;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-boolean v1, p0, Lcom/android/settings/IconBackgrounds;->isEnabledShowBtnBg:Z

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/android/settings/IconBackgrounds;->mcancelButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 177
    iget-object v1, p0, Lcom/android/settings/IconBackgrounds;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 181
    .end local v0    # "customView":Landroid/view/View;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/IconBackgrounds;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 130
    return-void
.end method
