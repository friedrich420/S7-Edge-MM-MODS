.class public Lcom/android/settings/AccessibilitySettingsSetupWizard;
.super Lcom/android/settings/SettingsActivity;
.source "AccessibilitySettingsSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private button:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/android/settings/AccessibilitySettingsSetupWizard;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/AccessibilitySettingsSetupWizard;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method

.method private initViews()V
    .locals 12

    .prologue
    const v9, 0x7f0e0f81

    const v11, 0x7f0c0413

    const/4 v10, 0x0

    .line 67
    const v7, 0x7f0d007e

    invoke-virtual {p0, v7}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/AccessibilitySettingsSetupWizard;->button:Landroid/view/View;

    .line 68
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettingsSetupWizard;->button:Landroid/view/View;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettingsSetupWizard;->button:Landroid/view/View;

    instance-of v7, v7, Landroid/widget/Button;

    if-eqz v7, :cond_1

    .line 71
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettingsSetupWizard;->button:Landroid/view/View;

    check-cast v2, Landroid/widget/Button;

    .line 72
    .local v2, "nextBtn":Landroid/widget/Button;
    const-string v7, ""

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "original_str":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .end local v2    # "nextBtn":Landroid/widget/Button;
    .end local v3    # "original_str":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 83
    .local v5, "r":Landroid/content/res/Resources;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v4, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 87
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "show_button_background"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c02d2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v10, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v6, v7

    .line 93
    .local v6, "topbottomPx":I
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v10, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v1, v7

    .line 99
    .local v1, "endPx":I
    invoke-virtual {v4, v10, v6, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 100
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettingsSetupWizard;->button:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettingsSetupWizard;->button:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02028e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    .end local v6    # "topbottomPx":I
    :goto_1
    return-void

    .line 77
    .end local v1    # "endPx":I
    .end local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "r":Landroid/content/res/Resources;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0909

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "desc_tts":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettingsSetupWizard;->button:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 105
    .end local v0    # "desc_tts":Ljava/lang/String;
    .restart local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v5    # "r":Landroid/content/res/Resources;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v10, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v1, v7

    .line 110
    .restart local v1    # "endPx":I
    invoke-virtual {v4, v10, v10, v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 111
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettingsSetupWizard;->button:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettingsSetupWizard;->button:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02028d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 37
    .local v0, "modIntent":Landroid/content/Intent;
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 38
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->setResult(I)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->finish()V

    .line 120
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 46
    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x10

    invoke-direct {v1, v2, v3, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 47
    .local v1, "mLayoutParams":Landroid/app/ActionBar$LayoutParams;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04001a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "mCustomLayout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 52
    .end local v0    # "mCustomLayout":Landroid/view/View;
    .end local v1    # "mLayoutParams":Landroid/app/ActionBar$LayoutParams;
    :cond_0
    const v2, 0x7f040019

    invoke-virtual {p0, v2}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->setContentView(I)V

    .line 53
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->initViews()V

    .line 55
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onResume()V

    .line 60
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->initViews()V

    .line 61
    return-void
.end method
