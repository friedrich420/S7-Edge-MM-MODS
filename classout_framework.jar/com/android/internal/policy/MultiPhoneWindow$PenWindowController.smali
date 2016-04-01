.class public abstract Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "PenWindowController"
.end annotation


# instance fields
.field protected mBtnDragAndDrop:Landroid/view/View;

.field protected mBtnExit:Landroid/view/View;

.field protected mBtnMaximize:Landroid/view/View;

.field protected mBtnMinimize:Landroid/view/View;

.field protected mControllerHeight:I

.field protected mDnDHelpPopupDialog:Landroid/app/Dialog;

.field protected mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field private mHeaderWindowControllerHoverImage:Landroid/graphics/drawable/Drawable;

.field private mIsInputMethodForceHiding:Z

.field private mIsLongPressed:Z

.field private mIsMoving:Z

.field protected mIsShowing:Z

.field private mLastHandledX:I

.field private mLastHandledY:I

.field protected mMenuContainer:Landroid/view/View;

.field private mMoveInterval:I

.field protected mNeedInvalidate:Z

.field protected mPenWindowHeader:Landroid/view/View;

.field final synthetic this$0:Lcom/android/internal/policy/MultiPhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/MultiPhoneWindow;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2771
    iput-object p1, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2721
    const/4 v0, 0x0

    iput-object v0, p0, mGestureDetector:Landroid/view/GestureDetector;

    .line 2723
    iput v1, p0, mControllerHeight:I

    .line 2724
    iput v1, p0, mMoveInterval:I

    .line 2733
    iput-boolean v1, p0, mNeedInvalidate:Z

    .line 2772
    iput-boolean v1, p0, mIsShowing:Z

    .line 2773
    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, mMoveInterval:I

    .line 2775
    return-void
.end method

.method static synthetic access$4600(Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 2711
    invoke-direct {p0, p1}, startDragMode(Landroid/content/Context;)V

    return-void
.end method

.method private checkFunctionState()V
    .registers 12

    .prologue
    const/16 v10, 0x8

    .line 2923
    iget-object v8, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1500(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 2924
    .local v7, "pm":Landroid/content/pm/PackageManager;
    if-nez v7, :cond_f

    .line 2966
    :cond_e
    return-void

    .line 2928
    :cond_f
    const/4 v1, 0x0

    .line 2930
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    :try_start_10
    iget-object v8, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1500(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_1f} :catch_90

    move-result-object v1

    .line 2934
    :goto_20
    if-eqz v1, :cond_e

    .line 2938
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2939
    .local v4, "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v8, :cond_42

    .line 2940
    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.samsung.android.sdk.multiwindow.disablefunction"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2941
    .local v0, "activityFunction":Ljava/lang/String;
    if-eqz v0, :cond_42

    .line 2942
    const-string v8, "\\|"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2945
    .end local v0    # "activityFunction":Ljava/lang/String;
    :cond_42
    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_65

    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v8, :cond_65

    .line 2946
    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.samsung.android.sdk.multiwindow.disablefunction"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2947
    .local v2, "applicationFunction":Ljava/lang/String;
    if-eqz v2, :cond_65

    .line 2948
    const-string v8, "\\|"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2952
    .end local v2    # "applicationFunction":Ljava/lang/String;
    :cond_65
    iget-object v8, p0, mBtnDragAndDrop:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2954
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_6f
    :goto_6f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2955
    .local v3, "disableFunction":Ljava/lang/String;
    const-string/jumbo v8, "minimize"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_95

    .line 2956
    iget-object v8, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    const/4 v9, 0x1

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsMinimizeDisabled:Z
    invoke-static {v8, v9}, Lcom/android/internal/policy/MultiPhoneWindow;->access$4702(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z

    .line 2957
    iget-object v8, p0, mBtnMinimize:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6f

    .line 2931
    .end local v3    # "disableFunction":Ljava/lang/String;
    .end local v4    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    :catch_90
    move-exception v5

    .line 2932
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_20

    .line 2958
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "disableFunction":Ljava/lang/String;
    .restart local v4    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_95
    const-string/jumbo v8, "maximize"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a4

    .line 2959
    iget-object v8, p0, mBtnMaximize:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6f

    .line 2960
    :cond_a4
    const-string v8, "exit"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b2

    .line 2961
    iget-object v8, p0, mBtnExit:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6f

    .line 2962
    :cond_b2
    const-string v8, "drag_and_drop"

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6f

    .line 2963
    iget-object v8, p0, mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6f
.end method

.method private makeDnDHelpPopupLayout()V
    .registers 9

    .prologue
    .line 2805
    iget-object v5, p0, mDnDHelpPopupDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_d

    iget-object v5, p0, mDnDHelpPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2845
    :cond_c
    :goto_c
    return-void

    .line 2810
    :cond_d
    :try_start_d
    iget-object v5, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 2811
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v5, 0x1090075

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2812
    .local v0, "dnDHelpPopupView":Landroid/view/View;
    if-eqz v0, :cond_c

    iget-object v5, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z
    invoke-static {v5}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/MultiPhoneWindow;)Z

    move-result v5

    if-eqz v5, :cond_41

    iget-object v5, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v5, v5, mDnDHelpPopupDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_41

    iget-object v5, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v5, v5, mDnDHelpPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_c

    .line 2816
    :cond_41
    const v5, 0x10203cc

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 2817
    .local v2, "okButton":Landroid/widget/Button;
    new-instance v5, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$1;-><init>(Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2825
    new-instance v5, Landroid/app/Dialog;

    iget-object v6, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x10304f3

    invoke-direct {v5, v6, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, mDnDHelpPopupDialog:Landroid/app/Dialog;

    .line 2826
    iget-object v5, p0, mDnDHelpPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 2827
    iget-object v5, p0, mDnDHelpPopupDialog:Landroid/app/Dialog;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2829
    iget-object v5, p0, mDnDHelpPopupDialog:Landroid/app/Dialog;

    new-instance v6, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$2;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$2;-><init>(Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2835
    iget-object v5, p0, mDnDHelpPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 2836
    .local v4, "w":Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 2837
    .local v3, "p":Landroid/view/WindowManager$LayoutParams;
    const-string v5, "DnDHelpPopupDialog"

    invoke-virtual {v3, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2838
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v5, v5, 0x202

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2839
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v6, -0x20001

    and-int/2addr v5, v6

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2840
    const/high16 v5, 0x3f000000    # 0.5f

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 2841
    const/4 v5, 0x2

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2842
    iget-object v5, p0, mDnDHelpPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V
    :try_end_a0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_a0} :catch_a2

    goto/16 :goto_c

    .line 2843
    .end local v0    # "dnDHelpPopupView":Landroid/view/View;
    .end local v1    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v2    # "okButton":Landroid/widget/Button;
    .end local v3    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "w":Landroid/view/Window;
    :catch_a2
    move-exception v5

    goto/16 :goto_c
.end method

.method private makeDnDHelpPopupLegacyLayout()V
    .registers 10

    .prologue
    .line 2849
    :try_start_0
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x1030132

    invoke-direct {v2, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 2850
    .local v2, "context":Landroid/content/Context;
    const-string v6, "layout_inflater"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 2851
    .local v3, "layoutInflater":Landroid/view/LayoutInflater;
    const v6, 0x1090076

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2853
    .local v1, "contentView":Landroid/view/View;
    if-eqz v1, :cond_34

    iget-object v6, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/MultiPhoneWindow;)Z

    move-result v6

    if-eqz v6, :cond_35

    iget-object v6, p0, mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    if-eqz v6, :cond_35

    iget-object v6, p0, mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_35

    .line 2888
    .end local v1    # "contentView":Landroid/view/View;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_34
    :goto_34
    return-void

    .line 2857
    .restart local v1    # "contentView":Landroid/view/View;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v3    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_35
    const v6, 0x10203d0

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 2859
    .local v0, "checkBox":Landroid/widget/CheckBox;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x5

    invoke-direct {v6, v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040baa

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x104000a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$3;

    invoke-direct {v8, p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$3;-><init>(Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;Landroid/widget/CheckBox;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    .line 2873
    iget-object v6, p0, mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$4;

    invoke-direct {v7, p0, v2}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$4;-><init>(Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2879
    iget-object v6, p0, mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 2880
    .local v5, "w":Landroid/view/Window;
    const/16 v6, 0x200

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 2881
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 2882
    .local v4, "p":Landroid/view/WindowManager$LayoutParams;
    const-string v6, "DnDHelpPopupDialog"

    invoke-virtual {v4, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2883
    const/4 v6, 0x2

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2885
    iget-object v6, p0, mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V
    :try_end_97
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_97} :catch_98

    goto :goto_34

    .line 2886
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v1    # "contentView":Landroid/view/View;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v4    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "w":Landroid/view/Window;
    :catch_98
    move-exception v6

    goto :goto_34
.end method

.method private setHeaderWindowControllerHoverImage()V
    .registers 4

    .prologue
    .line 3218
    iget-object v0, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080590

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, mHeaderWindowControllerHoverImage:Landroid/graphics/drawable/Drawable;

    .line 3220
    return-void
.end method

.method private startDragMode(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2891
    iget-object v1, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    if-eqz v1, :cond_16

    iget-object v1, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_16

    .line 2909
    :goto_15
    return-void

    .line 2894
    :cond_16
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2895
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 2896
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.multiwindow.centerbarwindow.SmartClipDragDrop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2902
    :goto_28
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2903
    invoke-virtual {p0}, performStartDragMode()V

    .line 2904
    iget-object v1, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->access$2700(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/internal/policy/MultiPhoneWindow;->access$2600(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setDragAndDropModeOfStack(Landroid/os/IBinder;Z)V

    .line 2905
    iget-object v1, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "POPW"

    const-string v3, "DRAGCONTENT"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 2899
    :cond_4c
    const-string v1, "com.sec.android.app.FlashBarService"

    const-string v2, "com.sec.android.app.FlashBarService.SmartClipDragDrop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_28
.end method


# virtual methods
.method protected generateLayout()V
    .registers 3

    .prologue
    .line 2778
    invoke-virtual {p0}, performInflateController()V

    .line 2780
    iget-object v0, p0, mPenWindowHeader:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2781
    iget-object v0, p0, mPenWindowHeader:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2782
    iget-object v0, p0, mPenWindowHeader:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 2784
    iget-object v0, p0, mMenuContainer:Landroid/view/View;

    const v1, 0x10203fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, mBtnDragAndDrop:Landroid/view/View;

    .line 2785
    iget-object v0, p0, mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2786
    iget-object v0, p0, mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2788
    iget-object v0, p0, mMenuContainer:Landroid/view/View;

    const v1, 0x10203fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, mBtnMinimize:Landroid/view/View;

    .line 2789
    iget-object v0, p0, mBtnMinimize:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2790
    iget-object v0, p0, mBtnMinimize:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2792
    iget-object v0, p0, mMenuContainer:Landroid/view/View;

    const v1, 0x10203ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, mBtnMaximize:Landroid/view/View;

    .line 2793
    iget-object v0, p0, mBtnMaximize:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2794
    iget-object v0, p0, mBtnMaximize:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2796
    iget-object v0, p0, mMenuContainer:Landroid/view/View;

    const v1, 0x1020400

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, mBtnExit:Landroid/view/View;

    .line 2797
    iget-object v0, p0, mBtnExit:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2798
    iget-object v0, p0, mBtnExit:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2800
    invoke-direct {p0}, checkFunctionState()V

    .line 2801
    invoke-virtual {p0}, updateAvailableButtons()V

    .line 2802
    return-void
.end method

.method protected getControllerHeight()I
    .registers 2

    .prologue
    .line 2918
    iget v0, p0, mControllerHeight:I

    return v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 2764
    iget-object v0, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .registers 2

    .prologue
    .line 2768
    const/4 v0, 0x1

    iput-boolean v0, p0, mNeedInvalidate:Z

    .line 2769
    return-void
.end method

.method protected isShowing()Z
    .registers 2

    .prologue
    .line 2914
    iget-boolean v0, p0, mIsShowing:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 2970
    iget-object v3, p0, mPenWindowHeader:Landroid/view/View;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2971
    invoke-virtual {p0, v0}, performUpdateMenuVisibility(Z)V

    .line 3034
    :cond_d
    :goto_d
    return-void

    .line 2972
    :cond_e
    iget-object v3, p0, mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 2973
    iget-object v3, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$2700(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v3

    const-string v5, "do_not_show_help_popup_drag_and_drop"

    invoke-virtual {v3, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getPreferenceThroughSystemProcess(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_35

    .line 2974
    .local v0, "checked":Z
    :goto_24
    if-nez v0, :cond_3b

    .line 2975
    invoke-virtual {p0, v4}, performUpdateMenuVisibility(Z)V

    .line 2976
    iget-object v3, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportSimplificationUI:Z
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1100(Lcom/android/internal/policy/MultiPhoneWindow;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 2977
    invoke-direct {p0}, makeDnDHelpPopupLayout()V

    goto :goto_d

    .end local v0    # "checked":Z
    :cond_35
    move v0, v4

    .line 2973
    goto :goto_24

    .line 2979
    .restart local v0    # "checked":Z
    :cond_37
    invoke-direct {p0}, makeDnDHelpPopupLegacyLayout()V

    goto :goto_d

    .line 2982
    :cond_3b
    iget-object v3, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, startDragMode(Landroid/content/Context;)V

    goto :goto_d

    .line 2984
    .end local v0    # "checked":Z
    :cond_45
    iget-object v3, p0, mBtnMinimize:Landroid/view/View;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 2985
    iget-object v3, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v3, v3, mMenuContainer:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    # invokes: Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->removeSelf()V
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->access$4800(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)V

    .line 2986
    iget-object v3, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v3, v4, v4}, Lcom/android/internal/policy/MultiPhoneWindow;->minimizeWindow(IZ)V

    .line 2987
    iget-object v3, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "POPW"

    const-string v5, "MINIMIZE"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 2990
    :cond_6b
    iget-object v3, p0, mBtnMaximize:Landroid/view/View;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 2991
    iget-object v3, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/MultiPhoneWindow;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 2992
    invoke-virtual {p0, v4}, performUpdateVisibility(Z)V

    .line 2994
    :cond_7e
    iget-object v3, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/MultiPhoneWindow;->requestState(I)V
    invoke-static {v3, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1200(Lcom/android/internal/policy/MultiPhoneWindow;I)V

    .line 2995
    iget-object v3, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "POPW"

    const-string v5, "MAXIMIZE"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 2998
    :cond_92
    iget-object v3, p0, mBtnExit:Landroid/view/View;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2999
    iget-object v3, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1500(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 3000
    iget-object v3, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    move-result-object v3

    if-eqz v3, :cond_cd

    iget-object v3, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;->onWindowExit()Z

    move-result v3

    if-nez v3, :cond_cd

    .line 3002
    const-string v3, "MultiPhoneWindow"

    const-string/jumbo v4, "onWindowExit return false"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3003
    iget-object v3, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "POPW"

    const-string v5, "CLOSE"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 3009
    :cond_cd
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 3010
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_de

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v3

    if-eqz v3, :cond_de

    .line 3011
    iget-object v3, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/MultiPhoneWindow;->forceHideInputMethod()Z
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/MultiPhoneWindow;)Z

    .line 3013
    :cond_de
    iget-object v3, p0, mBtnExit:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    if-eqz v3, :cond_ef

    .line 3014
    iget-object v3, p0, mBtnExit:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 3018
    :cond_ef
    :try_start_ef
    iget-object v3, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$5000(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v3

    if-eqz v3, :cond_123

    .line 3019
    iget-object v3, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$2700(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v3

    iget-object v4, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1500(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->finishAllTasks(Landroid/os/IBinder;I)V
    :try_end_10f
    .catch Ljava/lang/IllegalStateException; {:try_start_ef .. :try_end_10f} :catch_12d

    .line 3027
    :goto_10f
    iget-object v3, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsFinishing:Z
    invoke-static {v3, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->access$5102(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z

    .line 3029
    iget-object v3, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "POPW"

    const-string v5, "CLOSE"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 3021
    :cond_123
    :try_start_123
    iget-object v3, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1500(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finishAffinity()V
    :try_end_12c
    .catch Ljava/lang/IllegalStateException; {:try_start_123 .. :try_end_12c} :catch_12d

    goto :goto_10f

    .line 3023
    :catch_12d
    move-exception v1

    .line 3024
    .local v1, "e":Ljava/lang/IllegalStateException;
    iget-object v3, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1500(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_10f
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 3198
    :try_start_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_37

    .line 3199
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020410

    if-ne v1, v2, :cond_1f

    .line 3200
    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    .line 3214
    :cond_1e
    :goto_1e
    return v3

    .line 3202
    :cond_1f
    iget-object v1, p0, mHeaderWindowControllerHoverImage:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_33

    .line 3203
    const/4 v1, 0x0

    iget-object v2, p0, mHeaderWindowControllerHoverImage:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;)I
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_29} :catch_2a

    goto :goto_1e

    .line 3211
    :catch_2a
    move-exception v0

    .line 3212
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MultiPhoneWindow"

    const-string v2, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 3205
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_33
    :try_start_33
    invoke-direct {p0}, setHeaderWindowControllerHoverImage()V

    goto :goto_1e

    .line 3208
    :cond_37
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1e

    .line 3209
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_44} :catch_2a

    goto :goto_1e
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 19
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3038
    move-object/from16 v0, p0

    iget-boolean v14, v0, mIsMoving:Z

    if-eqz v14, :cond_14

    .line 3039
    sget-boolean v14, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    if-eqz v14, :cond_12

    const-string v14, "MultiPhoneWindow"

    const-string/jumbo v15, "onLongClick : moving so return false"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3040
    :cond_12
    const/4 v14, 0x0

    .line 3085
    :goto_13
    return v14

    .line 3042
    :cond_14
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsLongPressed:Z

    .line 3044
    const/4 v14, 0x2

    new-array v9, v14, [I

    .line 3045
    .local v9, "screenPos":[I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 3046
    .local v3, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3047
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3049
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 3050
    .local v4, "height":I
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z
    invoke-static {v14}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/MultiPhoneWindow;)Z

    move-result v14

    if-eqz v14, :cond_53

    .line 3051
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v14, v14, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v6, v14, mMenuContainer:Landroid/view/View;

    check-cast v6, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    .line 3052
    .local v6, "menuContainer":Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
    if-eqz v6, :cond_53

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->access$5200(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)Landroid/widget/LinearLayout;

    move-result-object v14

    if-eqz v14, :cond_53

    .line 3053
    # getter for: Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->access$5200(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)Landroid/widget/LinearLayout;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    .line 3056
    .end local v6    # "menuContainer":Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
    :cond_53
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v14}, Lcom/android/internal/policy/MultiPhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 3057
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v10, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3059
    .local v10, "screenWidth":I
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v8, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3061
    .local v8, "screenHeight":I
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/internal/policy/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    .line 3062
    .local v7, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v7, :cond_a8

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_a8

    .line 3063
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v14}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1500(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_95

    if-gt v10, v8, :cond_a5

    :cond_95
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v14}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1500(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v14

    if-nez v14, :cond_a8

    if-ge v10, v8, :cond_a8

    .line 3067
    :cond_a5
    move v11, v10

    .line 3068
    .local v11, "tempWidth":I
    move v10, v8

    .line 3069
    move v8, v11

    .line 3073
    .end local v11    # "tempWidth":I
    :cond_a8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v2, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 3075
    .local v1, "cheatSheet":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->setIgnoreMultiWindowLayout()V

    .line 3076
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/internal/policy/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 3077
    .local v5, "layoutInflater":Landroid/view/LayoutInflater;
    const v14, 0x1090094

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 3078
    .local v13, "toastView":Landroid/view/View;
    invoke-virtual {v1, v13}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 3079
    const v14, 0x1020401

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 3080
    .local v12, "toastTxt":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3082
    const/16 v14, 0x35

    const/4 v15, 0x0

    aget v15, v9, v15

    sub-int v15, v10, v15

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    sub-int v15, v15, v16

    div-int/lit8 v16, v4, 0x2

    move/from16 v0, v16

    invoke-virtual {v1, v14, v15, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 3084
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3085
    const/4 v14, 0x1

    goto/16 :goto_13
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 3090
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v0, v6, 0xff

    .line 3091
    .local v0, "action":I
    packed-switch v0, :pswitch_data_1f8

    .line 3189
    :cond_b
    :goto_b
    iget-object v6, p0, mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v6, :cond_14

    .line 3190
    iget-object v6, p0, mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v6, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3192
    :cond_14
    :goto_14
    return v10

    .line 3093
    :pswitch_15
    iget-object v6, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$2500(Lcom/android/internal/policy/MultiPhoneWindow;)Z

    move-result v6

    if-nez v6, :cond_36

    .line 3094
    iget-object v6, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$2700(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;
    invoke-static {v7}, Lcom/android/internal/policy/MultiPhoneWindow;->access$2600(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackId(Landroid/os/IBinder;)I

    move-result v5

    .line 3095
    .local v5, "stackId":I
    iget-object v6, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$2700(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v6

    invoke-virtual {v6, v5, v10}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setFocusedStack(IZ)V

    .line 3098
    .end local v5    # "stackId":I
    :cond_36
    iput-boolean v11, p0, mIsInputMethodForceHiding:Z

    .line 3099
    iget-object v6, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/MultiPhoneWindow;->forceHideInputMethod()Z
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/MultiPhoneWindow;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 3100
    iput-boolean v10, p0, mIsInputMethodForceHiding:Z

    goto :goto_14

    .line 3104
    :cond_43
    iget-object v6, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$5300(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/android/internal/policy/multiwindow/Docking;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/Docking;->init()V

    .line 3105
    iput-boolean v11, p0, mIsMoving:Z

    .line 3106
    iput-boolean v11, p0, mIsLongPressed:Z

    .line 3107
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, mLastHandledX:I

    .line 3108
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, mLastHandledY:I

    .line 3110
    iget-object v6, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->mDismissGuideByDockingCanceled:Z
    invoke-static {v6, v11}, Lcom/android/internal/policy/MultiPhoneWindow;->access$102(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z

    .line 3112
    iget-object v6, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_7b

    .line 3114
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.sec.android.OUTSIDE_TOUCH"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3115
    .local v4, "intent":Landroid/content/Intent;
    iget-object v6, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3118
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_7b
    iget-object v6, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_b

    .line 3123
    :pswitch_8b
    iget-boolean v6, p0, mIsInputMethodForceHiding:Z

    if-nez v6, :cond_14

    .line 3127
    iget-boolean v6, p0, mIsMoving:Z

    iget-boolean v7, p0, mIsLongPressed:Z

    or-int/2addr v6, v7

    if-nez v6, :cond_cc

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, mLastHandledX:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, mMoveInterval:I

    int-to-float v7, v7

    iget-object v8, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F
    invoke-static {v8}, Lcom/android/internal/policy/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/MultiPhoneWindow;)F

    move-result v8

    div-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_cc

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, mLastHandledY:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, mMoveInterval:I

    int-to-float v7, v7

    iget-object v8, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F
    invoke-static {v8}, Lcom/android/internal/policy/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/MultiPhoneWindow;)F

    move-result v8

    div-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_b

    .line 3132
    :cond_cc
    iput-boolean v10, p0, mIsMoving:Z

    .line 3133
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, mLastHandledX:I

    sub-int v2, v6, v7

    .line 3134
    .local v2, "dx":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, mLastHandledY:I

    sub-int v3, v6, v7

    .line 3135
    .local v3, "dy":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, mLastHandledX:I

    .line 3136
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, mLastHandledY:I

    .line 3138
    iget-object v6, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$5300(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/android/internal/policy/multiwindow/Docking;

    move-result-object v6

    iget v7, p0, mLastHandledX:I

    iget v8, p0, mLastHandledY:I

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/multiwindow/Docking;->updateZone(II)Z

    move-result v6

    if-eqz v6, :cond_fe

    .line 3142
    :cond_fe
    iget-object v6, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$5300(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/android/internal/policy/multiwindow/Docking;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/Docking;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 3143
    .local v1, "dockingBound":Landroid/graphics/Rect;
    iget-object v6, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 3144
    if-eqz v1, :cond_127

    iget-object v6, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$5300(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/android/internal/policy/multiwindow/Docking;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/Docking;->isDockingCanceled()Z

    move-result v6

    if-nez v6, :cond_127

    .line 3145
    iget-object v6, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    const/4 v7, 0x2

    invoke-virtual {v6, v1, v7}, Lcom/android/internal/policy/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V

    goto/16 :goto_b

    .line 3147
    :cond_127
    iget-object v6, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V

    goto/16 :goto_b

    .line 3154
    .end local v1    # "dockingBound":Landroid/graphics/Rect;
    .end local v2    # "dx":I
    .end local v3    # "dy":I
    :pswitch_135
    iget-boolean v6, p0, mIsInputMethodForceHiding:Z

    if-nez v6, :cond_14

    .line 3158
    iget-boolean v6, p0, mIsMoving:Z

    if-eqz v6, :cond_1f3

    .line 3159
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, mLastHandledX:I

    sub-int v2, v6, v7

    .line 3160
    .restart local v2    # "dx":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, mLastHandledY:I

    sub-int v3, v6, v7

    .line 3162
    .restart local v3    # "dy":I
    iget-object v6, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$5300(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/android/internal/policy/multiwindow/Docking;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/Docking;->isDocking()Z

    move-result v6

    if-eqz v6, :cond_1de

    iget-object v6, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$5300(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/android/internal/policy/multiwindow/Docking;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/Docking;->isDockingCanceled()Z

    move-result v6

    if-nez v6, :cond_1de

    .line 3163
    iget-object v6, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$5300(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/android/internal/policy/multiwindow/Docking;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/Docking;->checkCenterBarPoint()V

    .line 3165
    iget-object v6, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportSimplificationUI:Z
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1100(Lcom/android/internal/policy/MultiPhoneWindow;)Z

    move-result v6

    if-eqz v6, :cond_1ad

    .line 3167
    iget-object v6, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$2700(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;
    invoke-static {v7}, Lcom/android/internal/policy/MultiPhoneWindow;->access$2600(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/os/IBinder;

    move-result-object v7

    iget-object v8, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;
    invoke-static {v8}, Lcom/android/internal/policy/MultiPhoneWindow;->access$5300(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/android/internal/policy/multiwindow/Docking;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/policy/multiwindow/Docking;->getZone()I

    move-result v8

    iget-object v9, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v9}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/policy/multiwindow/Docking;->getChanagedMultiWindowStyle(ILcom/samsung/android/multiwindow/MultiWindowStyle;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v10}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyleWithLogging(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    .line 3183
    .end local v2    # "dx":I
    .end local v3    # "dy":I
    :goto_19b
    iput-boolean v11, p0, mIsMoving:Z

    .line 3184
    iget-object v6, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$5300(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/android/internal/policy/multiwindow/Docking;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/Docking;->clear()V

    .line 3185
    iget-object v6, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissGuide()V

    goto/16 :goto_b

    .line 3170
    .restart local v2    # "dx":I
    .restart local v3    # "dy":I
    :cond_1ad
    iget-object v6, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$2700(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;
    invoke-static {v7}, Lcom/android/internal/policy/MultiPhoneWindow;->access$2600(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/os/IBinder;

    move-result-object v7

    iget-object v8, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;
    invoke-static {v8}, Lcom/android/internal/policy/MultiPhoneWindow;->access$5300(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/android/internal/policy/multiwindow/Docking;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/policy/multiwindow/Docking;->getZone()I

    move-result v8

    iget-object v9, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v9}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/policy/multiwindow/Docking;->getChanagedMultiWindowStyle(ILcom/samsung/android/multiwindow/MultiWindowStyle;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 3172
    iget-object v6, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "POPW"

    const-string v8, "CHANGE-SPLIT"

    invoke-static {v6, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19b

    .line 3177
    :cond_1de
    iget-object v6, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 3178
    iget-object v6, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, p0, this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    goto :goto_19b

    .line 3181
    .end local v2    # "dx":I
    .end local v3    # "dy":I
    :cond_1f3
    invoke-virtual {p0, v10}, performUpdateMenuVisibility(Z)V

    goto :goto_19b

    .line 3091
    nop

    :pswitch_data_1f8
    .packed-switch 0x0
        :pswitch_15
        :pswitch_135
        :pswitch_8b
        :pswitch_135
    .end packed-switch
.end method

.method protected abstract performInflateController()V
.end method

.method protected performStartDragMode()V
    .registers 1

    .prologue
    .line 2749
    return-void
.end method

.method protected performStopDragMode()V
    .registers 1

    .prologue
    .line 2753
    return-void
.end method

.method protected abstract performUpdateBackground()V
.end method

.method protected performUpdateMenuVisibility(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .prologue
    .line 2757
    return-void
.end method

.method protected abstract performUpdateVisibility(Z)V
.end method

.method protected abstract removeResizeVisualCue()V
.end method

.method protected setHeaderGestureDetector(Landroid/view/GestureDetector;)V
    .registers 2
    .param p1, "g"    # Landroid/view/GestureDetector;

    .prologue
    .line 2760
    iput-object p1, p0, mGestureDetector:Landroid/view/GestureDetector;

    .line 2761
    return-void
.end method

.method protected abstract updateAvailableButtons()V
.end method

.method protected abstract updatePosition()V
.end method
