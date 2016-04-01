.class abstract Lcom/android/server/policy/GlobalActions$ToggleAction;
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
    name = "ToggleAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    }
.end annotation


# instance fields
.field protected mDisabledIconResid:I

.field protected mDisabledStatusMessageResId:I

.field protected mEnabledIconResId:I

.field protected mEnabledStatusMessageResId:I

.field mLayoutId:I

.field protected mMessageResId:I

.field protected mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;


# direct methods
.method public constructor <init>(IIIII)V
    .registers 7
    .param p1, "enabledIconResId"    # I
    .param p2, "disabledIconResid"    # I
    .param p3, "message"    # I
    .param p4, "enabledStatusMessageResId"    # I
    .param p5, "disabledStatusMessageResId"    # I

    .prologue
    .line 3814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3794
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v0, p0, mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 3815
    iput p1, p0, mEnabledIconResId:I

    .line 3816
    iput p2, p0, mDisabledIconResid:I

    .line 3817
    iput p3, p0, mMessageResId:I

    .line 3818
    iput p4, p0, mEnabledStatusMessageResId:I

    .line 3819
    iput p5, p0, mDisabledStatusMessageResId:I

    .line 3821
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 3822
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6300()Z

    move-result v0

    if-nez v0, :cond_29

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6400()Z

    move-result v0

    if-nez v0, :cond_29

    .line 3823
    const v0, 0x109006c

    iput v0, p0, mLayoutId:I

    .line 3835
    :goto_28
    return-void

    .line 3825
    :cond_29
    const v0, 0x109006a

    iput v0, p0, mLayoutId:I

    goto :goto_28

    .line 3828
    :cond_2f
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6300()Z

    move-result v0

    if-nez v0, :cond_41

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6400()Z

    move-result v0

    if-nez v0, :cond_41

    .line 3829
    const v0, 0x109006d

    iput v0, p0, mLayoutId:I

    goto :goto_28

    .line 3831
    :cond_41
    const v0, 0x109006b

    iput v0, p0, mLayoutId:I

    goto :goto_28
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .registers 5
    .param p1, "buttonOn"    # Z

    .prologue
    .line 3965
    if-eqz p1, :cond_1f

    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_4
    iput-object v0, p0, mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 3966
    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeStateFromPress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3967
    return-void

    .line 3965
    :cond_1f
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_4
.end method

.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 3852
    invoke-virtual {p0}, willCreate()V

    .line 3855
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v7

    if-nez v7, :cond_e3

    .line 3856
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6300()Z

    move-result v7

    if-nez v7, :cond_d9

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6400()Z

    move-result v7

    if-nez v7, :cond_d9

    .line 3857
    const v7, 0x109006c

    const/4 v8, 0x0

    invoke-virtual {p4, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 3869
    .local v6, "v":Landroid/view/View;
    :goto_1d
    const v7, 0x1020006

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3870
    .local v1, "icon":Landroid/widget/ImageView;
    const v7, 0x102000b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3871
    .local v3, "messageView":Landroid/widget/TextView;
    const v7, 0x10203ad

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 3872
    .local v5, "statusView":Landroid/widget/TextView;
    const v7, 0x10203af

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 3873
    .local v2, "imageFrameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, isEnabled()Z

    move-result v0

    .line 3875
    .local v0, "enabled":Z
    if-eqz v3, :cond_57

    .line 3876
    iget v7, p0, mMessageResId:I

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    .line 3877
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3878
    if-nez v0, :cond_57

    .line 3879
    const v7, -0x777778

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3882
    :cond_57
    iget-object v7, p0, mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v8, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-eq v7, v8, :cond_63

    iget-object v7, p0, mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v8, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-ne v7, v8, :cond_103

    :cond_63
    const/4 v4, 0x1

    .line 3883
    .local v4, "on":Z
    :goto_64
    if-eqz v1, :cond_7f

    .line 3884
    if-eqz v4, :cond_106

    iget v7, p0, mEnabledIconResId:I

    :goto_6a
    invoke-virtual {p1, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3886
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 3887
    if-eqz v4, :cond_10a

    iget v7, p0, mEnabledIconResId:I

    :goto_78
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3890
    :cond_7f
    if-eqz v5, :cond_97

    .line 3891
    if-eqz v4, :cond_10e

    iget v7, p0, mEnabledStatusMessageResId:I

    :goto_85
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 3892
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3893
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3894
    if-nez v0, :cond_97

    .line 3895
    const v7, -0x777778

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3898
    :cond_97
    invoke-virtual {v6, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 3900
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v7

    if-eqz v7, :cond_b0

    if-eqz v2, :cond_b0

    .line 3901
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 3902
    if-eqz v0, :cond_112

    .line 3903
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 3904
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3911
    :cond_b0
    :goto_b0
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v7

    if-nez v7, :cond_d8

    .line 3912
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6300()Z

    move-result v7

    if-nez v7, :cond_d8

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6400()Z

    move-result v7

    if-eqz v7, :cond_d8

    .line 3913
    if-eqz v3, :cond_cd

    .line 3914
    const-string v7, "#FF000000"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3916
    :cond_cd
    if-eqz v5, :cond_d8

    .line 3917
    const-string v7, "#6B6F72"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3922
    :cond_d8
    return-object v6

    .line 3859
    .end local v0    # "enabled":Z
    .end local v1    # "icon":Landroid/widget/ImageView;
    .end local v2    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v3    # "messageView":Landroid/widget/TextView;
    .end local v4    # "on":Z
    .end local v5    # "statusView":Landroid/widget/TextView;
    .end local v6    # "v":Landroid/view/View;
    :cond_d9
    const v7, 0x109006a

    const/4 v8, 0x0

    invoke-virtual {p4, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "v":Landroid/view/View;
    goto/16 :goto_1d

    .line 3862
    .end local v6    # "v":Landroid/view/View;
    :cond_e3
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6300()Z

    move-result v7

    if-nez v7, :cond_f9

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6400()Z

    move-result v7

    if-nez v7, :cond_f9

    .line 3863
    const v7, 0x109006d

    const/4 v8, 0x0

    invoke-virtual {p4, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "v":Landroid/view/View;
    goto/16 :goto_1d

    .line 3865
    .end local v6    # "v":Landroid/view/View;
    :cond_f9
    const v7, 0x109006b

    const/4 v8, 0x0

    invoke-virtual {p4, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "v":Landroid/view/View;
    goto/16 :goto_1d

    .line 3882
    .restart local v0    # "enabled":Z
    .restart local v1    # "icon":Landroid/widget/ImageView;
    .restart local v2    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .restart local v3    # "messageView":Landroid/widget/TextView;
    .restart local v5    # "statusView":Landroid/widget/TextView;
    :cond_103
    const/4 v4, 0x0

    goto/16 :goto_64

    .line 3884
    .restart local v4    # "on":Z
    :cond_106
    iget v7, p0, mDisabledIconResid:I

    goto/16 :goto_6a

    .line 3887
    :cond_10a
    iget v7, p0, mDisabledIconResid:I

    goto/16 :goto_78

    .line 3891
    :cond_10e
    iget v7, p0, mDisabledStatusMessageResId:I

    goto/16 :goto_85

    .line 3906
    :cond_112
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 3907
    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_b0
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3847
    iget v0, p0, mMessageResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 3955
    iget-object v0, p0, mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->inTransition()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onPress()V
    .registers 5

    .prologue
    .line 3927
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToggleAction onPress  mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3928
    iget-object v1, p0, mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 3929
    const-string v1, "GlobalActions"

    const-string/jumbo v2, "shouldn\'t be able to toggle when in transition"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3937
    :goto_2a
    return-void

    .line 3933
    :cond_2b
    iget-object v1, p0, mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-eq v1, v2, :cond_52

    const/4 v0, 0x1

    .line 3934
    .local v0, "nowOn":Z
    :goto_32
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPress nowOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3935
    invoke-virtual {p0, v0}, onToggle(Z)V

    .line 3936
    invoke-virtual {p0, v0}, changeStateFromPress(Z)V

    goto :goto_2a

    .line 3933
    .end local v0    # "nowOn":Z
    :cond_52
    const/4 v0, 0x0

    goto :goto_32
.end method

.method public onPressAction()V
    .registers 5

    .prologue
    .line 3941
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToggleAction onPress  mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3942
    iget-object v1, p0, mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 3943
    const-string v1, "GlobalActions"

    const-string/jumbo v2, "shouldn\'t be able to toggle when in transition"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3951
    :goto_2a
    return-void

    .line 3947
    :cond_2b
    iget-object v1, p0, mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-eq v1, v2, :cond_52

    const/4 v0, 0x1

    .line 3948
    .local v0, "nowOn":Z
    :goto_32
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPressAction nowOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3949
    invoke-virtual {p0, v0}, onToggle(Z)V

    .line 3950
    invoke-virtual {p0, v0}, changeStateFromPress(Z)V

    goto :goto_2a

    .line 3947
    .end local v0    # "nowOn":Z
    :cond_52
    const/4 v0, 0x0

    goto :goto_32
.end method

.method abstract onToggle(Z)V
.end method

.method public updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V
    .registers 2
    .param p1, "state"    # Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .prologue
    .line 3972
    iput-object p1, p0, mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 3973
    return-void
.end method

.method willCreate()V
    .registers 1

    .prologue
    .line 3843
    return-void
.end method
