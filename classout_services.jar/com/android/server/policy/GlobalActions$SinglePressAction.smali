.class abstract Lcom/android/server/policy/GlobalActions$SinglePressAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SinglePressAction"
.end annotation


# static fields
.field public static rebootMode:I

.field public static final rebootOptions:[Ljava/lang/String;

.field public static final rebootString:[Ljava/lang/String;


# instance fields
.field public customAction:I

.field public isKnoxCustom:Z

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconResId:I

.field mLayoutId:I

.field private final mMessage:Ljava/lang/CharSequence;

.field private final mMessageResId:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v2, "Reboot"

    aput-object v2, v0, v3

    const-string/jumbo v2, "Hot Reboot"

    aput-object v2, v0, v4

    const-string/jumbo v2, "Download"

    aput-object v2, v0, v5

    const-string/jumbo v2, "Recovery"

    aput-object v2, v0, v6

    const-string/jumbo v2, "Safe Mode"

    aput-object v2, v0, v7

    sput-object v0, rebootString:[Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "Reboot"

    aput-object v2, v1, v3

    const-string v2, "Hot Reboot"

    aput-object v2, v1, v4

    const-string v2, "Download"

    aput-object v2, v1, v5

    const-string v2, "Recovery"

    aput-object v2, v1, v6

    const-string v2, "Safe Mode"

    aput-object v2, v1, v7

    sput-object v1, rebootOptions:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(II)V
    .registers 5
    .param p1, "iconResId"    # I
    .param p2, "messageResId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3604
    iput-boolean v0, p0, isKnoxCustom:Z

    .line 3605
    iput v0, p0, customAction:I

    .line 3619
    iput p1, p0, mIconResId:I

    .line 3620
    iput p2, p0, mMessageResId:I

    .line 3621
    iput-object v1, p0, mMessage:Ljava/lang/CharSequence;

    .line 3622
    iput-object v1, p0, mIcon:Landroid/graphics/drawable/Drawable;

    .line 3624
    invoke-direct {p0}, init()V

    .line 3626
    return-void
.end method

.method protected constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "iconResId"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "message"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 3628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3604
    iput-boolean v0, p0, isKnoxCustom:Z

    .line 3605
    iput v0, p0, customAction:I

    .line 3629
    iput p1, p0, mIconResId:I

    .line 3630
    iput v0, p0, mMessageResId:I

    .line 3631
    iput-object p3, p0, mMessage:Ljava/lang/CharSequence;

    .line 3632
    iput-object p2, p0, mIcon:Landroid/graphics/drawable/Drawable;

    .line 3634
    invoke-direct {p0}, init()V

    .line 3636
    return-void
.end method

.method protected constructor <init>(ILjava/lang/CharSequence;)V
    .registers 4
    .param p1, "iconResId"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 3638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3604
    iput-boolean v0, p0, isKnoxCustom:Z

    .line 3605
    iput v0, p0, customAction:I

    .line 3639
    iput p1, p0, mIconResId:I

    .line 3640
    iput v0, p0, mMessageResId:I

    .line 3641
    iput-object p2, p0, mMessage:Ljava/lang/CharSequence;

    .line 3642
    const/4 v0, 0x0

    iput-object v0, p0, mIcon:Landroid/graphics/drawable/Drawable;

    .line 3644
    invoke-direct {p0}, init()V

    .line 3646
    return-void
.end method

.method protected constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .registers 5
    .param p1, "iconImageDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "messageChar"    # Ljava/lang/String;
    .param p3, "action"    # I

    .prologue
    const/4 v0, 0x0

    .line 3606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3604
    iput-boolean v0, p0, isKnoxCustom:Z

    .line 3605
    iput v0, p0, customAction:I

    .line 3607
    iput-object p1, p0, mIcon:Landroid/graphics/drawable/Drawable;

    .line 3608
    iput-object p2, p0, mMessage:Ljava/lang/CharSequence;

    .line 3609
    iput v0, p0, mIconResId:I

    .line 3610
    iput v0, p0, mMessageResId:I

    .line 3611
    const/4 v0, 0x1

    iput-boolean v0, p0, isKnoxCustom:Z

    .line 3612
    iput p3, p0, customAction:I

    .line 3614
    invoke-direct {p0}, init()V

    .line 3616
    return-void
.end method

.method private init()V
    .registers 2

    .prologue
    .line 3649
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 3650
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6300()Z

    move-result v0

    if-nez v0, :cond_18

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6400()Z

    move-result v0

    if-nez v0, :cond_18

    .line 3651
    const v0, 0x109006c

    iput v0, p0, mLayoutId:I

    .line 3662
    :goto_17
    return-void

    .line 3653
    :cond_18
    const v0, 0x109006a

    iput v0, p0, mLayoutId:I

    goto :goto_17

    .line 3656
    :cond_1e
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6300()Z

    move-result v0

    if-nez v0, :cond_30

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6400()Z

    move-result v0

    if-nez v0, :cond_30

    .line 3657
    const v0, 0x109006d

    iput v0, p0, mLayoutId:I

    goto :goto_17

    .line 3659
    :cond_30
    const v0, 0x109006b

    iput v0, p0, mLayoutId:I

    goto :goto_17
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const v8, -0x777778

    const/4 v10, 0x0

    .line 3687
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v7

    if-nez v7, :cond_f7

    .line 3688
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6300()Z

    move-result v7

    if-nez v7, :cond_ee

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6400()Z

    move-result v7

    if-nez v7, :cond_ee

    .line 3689
    const v7, 0x109006c

    invoke-virtual {p4, v7, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 3701
    .local v6, "v":Landroid/view/View;
    :goto_1d
    const v7, 0x1020006

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3702
    .local v1, "icon":Landroid/widget/ImageView;
    const v7, 0x102000b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3703
    .local v3, "messageView":Landroid/widget/TextView;
    const v7, 0x10203ad

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 3704
    .local v5, "statusView":Landroid/widget/TextView;
    const v7, 0x10203af

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 3706
    .local v2, "imageFrameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, isEnabled()Z

    move-result v0

    .line 3707
    .local v0, "enabled":Z
    invoke-virtual {p0}, getStatus()Ljava/lang/String;

    move-result-object v4

    .line 3709
    .local v4, "status":Ljava/lang/String;
    if-eqz v5, :cond_59

    .line 3710
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_115

    .line 3711
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3712
    if-nez v0, :cond_59

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3719
    :cond_59
    :goto_59
    iget-object v7, p0, mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_122

    .line 3720
    iget-object v7, p0, mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3721
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3723
    iget v7, p0, mIconResId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3730
    :cond_70
    :goto_70
    if-eqz v3, :cond_80

    .line 3731
    iget-object v7, p0, mMessage:Ljava/lang/CharSequence;

    if-eqz v7, :cond_13a

    .line 3732
    iget-object v7, p0, mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3736
    :goto_7b
    if-nez v0, :cond_80

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3739
    :cond_80
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v7

    if-eqz v7, :cond_c5

    if-eqz v2, :cond_c5

    .line 3740
    iget v7, p0, mMessageResId:I

    if-eqz v7, :cond_b7

    .line 3741
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, mMessageResId:I

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10409b9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3745
    :cond_b7
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 3746
    if-eqz v0, :cond_141

    .line 3747
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 3748
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3755
    :cond_c5
    :goto_c5
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v7

    if-nez v7, :cond_ed

    .line 3756
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6300()Z

    move-result v7

    if-nez v7, :cond_ed

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6400()Z

    move-result v7

    if-nez v7, :cond_ed

    .line 3757
    if-eqz v3, :cond_e2

    .line 3758
    const-string v7, "#FF000000"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3760
    :cond_e2
    if-eqz v5, :cond_ed

    .line 3761
    const-string v7, "#6B6F72"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3765
    :cond_ed
    return-object v6

    .line 3691
    .end local v0    # "enabled":Z
    .end local v1    # "icon":Landroid/widget/ImageView;
    .end local v2    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v3    # "messageView":Landroid/widget/TextView;
    .end local v4    # "status":Ljava/lang/String;
    .end local v5    # "statusView":Landroid/widget/TextView;
    .end local v6    # "v":Landroid/view/View;
    :cond_ee
    const v7, 0x109006a

    invoke-virtual {p4, v7, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "v":Landroid/view/View;
    goto/16 :goto_1d

    .line 3694
    .end local v6    # "v":Landroid/view/View;
    :cond_f7
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6300()Z

    move-result v7

    if-nez v7, :cond_10c

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6400()Z

    move-result v7

    if-nez v7, :cond_10c

    .line 3695
    const v7, 0x109006d

    invoke-virtual {p4, v7, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "v":Landroid/view/View;
    goto/16 :goto_1d

    .line 3697
    .end local v6    # "v":Landroid/view/View;
    :cond_10c
    const v7, 0x109006b

    invoke-virtual {p4, v7, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "v":Landroid/view/View;
    goto/16 :goto_1d

    .line 3714
    .restart local v0    # "enabled":Z
    .restart local v1    # "icon":Landroid/widget/ImageView;
    .restart local v2    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .restart local v3    # "messageView":Landroid/widget/TextView;
    .restart local v4    # "status":Ljava/lang/String;
    .restart local v5    # "statusView":Landroid/widget/TextView;
    :cond_115
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v7

    if-nez v7, :cond_59

    .line 3715
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_59

    .line 3725
    :cond_122
    iget v7, p0, mIconResId:I

    if-eqz v7, :cond_70

    .line 3726
    iget v7, p0, mIconResId:I

    invoke-virtual {p1, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3727
    iget v7, p0, mIconResId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_70

    .line 3734
    :cond_13a
    iget v7, p0, mMessageResId:I

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_7b

    .line 3750
    :cond_141
    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 3751
    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto/16 :goto_c5
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3676
    iget-object v0, p0, mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 3677
    iget-object v0, p0, mMessage:Ljava/lang/CharSequence;

    .line 3679
    :goto_6
    return-object v0

    :cond_7
    iget v0, p0, mMessageResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3670
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 3666
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onPress()V
.end method
