.class public Lcom/android/keyguard/EmergencyCarrierArea;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;
.source "EmergencyCarrierArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;
    }
.end annotation


# instance fields
.field private mBackupPINButton:Landroid/widget/Button;

.field private mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

.field private mEmergencyButtonArea:Landroid/widget/LinearLayout;

.field private mForgotPatternButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->onFinishInflate()V

    .line 57
    sget v0, Lcom/android/keyguard/R$id;->forgot_password_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyCarrierArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mForgotPatternButton:Landroid/widget/Button;

    .line 58
    sget v0, Lcom/android/keyguard/R$id;->backup_pin_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyCarrierArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mBackupPINButton:Landroid/widget/Button;

    .line 59
    sget v0, Lcom/android/keyguard/R$id;->emergency_call_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyCarrierArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    .line 60
    sget v0, Lcom/android/keyguard/R$id;->keyguard_emergency_button_area:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyCarrierArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    .line 61
    return-void
.end method

.method public resizeFooter()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 64
    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mForgotPatternButton:Landroid/widget/Button;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mBackupPINButton:Landroid/widget/Button;

    if-nez v6, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyCarrierArea;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$dimen;->keyguard_bottom_area_emergency_button_area_max_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v1, v6

    .line 70
    .local v1, "emergencyButtonAreaHeight":I
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyCarrierArea;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$dimen;->keyguard_emergency_button_inner_min_padding:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    .line 72
    .local v0, "buttonMinPadding":I
    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v6}, Lcom/android/keyguard/EmergencyButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 74
    .local v2, "emergencyButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 77
    .local v3, "emergencyCarrierAreaParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v5, 0x0

    .line 78
    .local v5, "visibleCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 79
    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    .line 81
    add-int/lit8 v5, v5, 0x1

    .line 78
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 84
    :cond_3
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 86
    :pswitch_0
    const/4 v6, -0x2

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 87
    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 90
    :pswitch_1
    iput v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 91
    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/widget/Button;->setPadding(IIII)V

    goto :goto_0

    .line 95
    :pswitch_2
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 96
    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v6, v2}, Lcom/android/keyguard/EmergencyButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setMaxLines(I)V

    .line 100
    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setMaxLines(I)V

    .line 101
    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v6, v9}, Lcom/android/keyguard/EmergencyButton;->setMaxLines(I)V

    .line 102
    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v6, v0, v8, v0, v8}, Lcom/android/keyguard/EmergencyButton;->setPadding(IIII)V

    .line 103
    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v6, v0, v8, v0, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 104
    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v6, v0, v8, v0, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 105
    iput v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 106
    iget-object v6, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
