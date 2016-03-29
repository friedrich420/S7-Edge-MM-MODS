.class public Lcom/android/settings/helpdialog/TwHelpDialog;
.super Landroid/app/Dialog;
.source "TwHelpDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/helpdialog/TwHelpDialog$1;,
        Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;
    }
.end annotation


# instance fields
.field private fPunchEvent:Z

.field private mShowWrongInputToast:Z

.field private mTouchTransparencyMode:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

.field private mWrongInputToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 60
    const v2, 0x7f0f01e6

    invoke-direct {p0, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 42
    sget-object v2, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    iput-object v2, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    .line 44
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    .line 45
    iput-boolean v5, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    .line 46
    iput-boolean v4, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    .line 62
    invoke-static {}, Lcom/android/settings/Utils;->isFullScreenSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/helpdialog/TwHelpDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 64
    .local v1, "window":Landroid/view/Window;
    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 66
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 67
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 68
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 72
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "window":Landroid/view/Window;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/helpdialog/TwHelpDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 74
    sget-object v2, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    iput-object v2, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    .line 75
    const v2, 0x7f0e10a1

    invoke-static {p1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    .line 77
    iput-boolean v5, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    .line 78
    iput-boolean v4, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    .line 79
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const v6, 0x7f0d0013

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-le v4, v2, :cond_0

    .line 178
    :goto_0
    return v2

    .line 103
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 105
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_1

    .line 106
    iput-boolean v2, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    .line 111
    :cond_1
    sget-object v4, Lcom/android/settings/helpdialog/TwHelpDialog$1;->$SwitchMap$com$android$settings$helpdialog$TwHelpDialog$TouchMode:[I

    iget-object v5, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v5}, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/helpdialog/TwHelpDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 169
    :cond_2
    :goto_1
    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    if-eqz v0, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    if-eq v0, v7, :cond_4

    .line 175
    :cond_3
    iput-boolean v3, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    :cond_4
    move v2, v3

    .line 178
    goto :goto_0

    .line 114
    :pswitch_0
    iget-boolean v4, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    if-eqz v4, :cond_6

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/helpdialog/TwHelpDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 117
    if-nez v0, :cond_5

    .line 119
    invoke-virtual {p0, v6}, Lcom/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 121
    .local v1, "containerView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 122
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 124
    .end local v1    # "containerView":Landroid/view/View;
    :cond_5
    if-ne v0, v2, :cond_2

    .line 125
    invoke-virtual {p0, v6}, Lcom/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 127
    .restart local v1    # "containerView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 128
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 132
    .end local v1    # "containerView":Landroid/view/View;
    :cond_6
    iget-boolean v4, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    if-eqz v4, :cond_2

    .line 133
    iget-object v4, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 140
    :pswitch_1
    iget-boolean v4, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    if-eqz v4, :cond_8

    if-eq v0, v7, :cond_8

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/helpdialog/TwHelpDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 143
    if-nez v0, :cond_7

    .line 145
    invoke-virtual {p0, v6}, Lcom/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 147
    .restart local v1    # "containerView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 148
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 150
    .end local v1    # "containerView":Landroid/view/View;
    :cond_7
    if-ne v0, v2, :cond_2

    .line 151
    invoke-virtual {p0, v6}, Lcom/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 153
    .restart local v1    # "containerView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 154
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 158
    .end local v1    # "containerView":Landroid/view/View;
    :cond_8
    iget-boolean v4, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    if-eqz v4, :cond_2

    if-eq v0, v7, :cond_2

    .line 159
    iget-object v4, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setShowWrongInputToast(Z)V
    .locals 0
    .param p1, "pShowWrongInputToast"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    .line 91
    return-void
.end method

.method public setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V
    .locals 0
    .param p1, "touchTransparencyMode"    # Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    .line 83
    return-void
.end method
