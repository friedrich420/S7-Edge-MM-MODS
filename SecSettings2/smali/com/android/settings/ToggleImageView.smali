.class public Lcom/android/settings/ToggleImageView;
.super Landroid/widget/ImageView;
.source "ToggleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ToggleImageView$OnToggleListener;
    }
.end annotation


# instance fields
.field private mOffRexID:I

.field private mOnResID:I

.field private mOnToggleListener:Lcom/android/settings/ToggleImageView$OnToggleListener;

.field private mToggleState:Z


# virtual methods
.method public setOnToggleListener(Lcom/android/settings/ToggleImageView$OnToggleListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings/ToggleImageView$OnToggleListener;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings/ToggleImageView;->mOnToggleListener:Lcom/android/settings/ToggleImageView$OnToggleListener;

    .line 104
    return-void
.end method

.method public updateToggleState(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/settings/ToggleImageView;->mToggleState:Z

    .line 98
    iget-boolean v0, p0, Lcom/android/settings/ToggleImageView;->mToggleState:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/ToggleImageView;->mOnResID:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/ToggleImageView;->setImageResource(I)V

    .line 99
    return-void

    .line 98
    :cond_0
    iget v0, p0, Lcom/android/settings/ToggleImageView;->mOffRexID:I

    goto :goto_0
.end method
