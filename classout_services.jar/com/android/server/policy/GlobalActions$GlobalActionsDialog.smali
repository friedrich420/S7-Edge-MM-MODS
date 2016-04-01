.class final Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
.super Landroid/app/Dialog;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GlobalActionsDialog"
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

.field private final mAlert:Lcom/android/internal/app/AlertController;

.field private mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private mCancelOnUp:Z

.field private final mContext:Landroid/content/Context;

.field private mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

.field private final mHandler:Landroid/os/Handler;

.field private mIntercepted:Z

.field private final mWindowTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;Landroid/os/Handler;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Lcom/android/internal/app/AlertController$AlertParams;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 4711
    invoke-static {p1}, getDialogTheme(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 4738
    new-instance v0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog$1;-><init>(Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)V

    iput-object v0, p0, mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 4712
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 4714
    iput-object p3, p0, mHandler:Landroid/os/Handler;

    .line 4716
    new-instance v0, Lcom/android/internal/app/AlertController;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, mAlert:Lcom/android/internal/app/AlertController;

    .line 4717
    iget-object v0, p2, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/android/server/policy/GlobalActions$MyAdapter;

    iput-object v0, p0, mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    .line 4721
    const-string v0, "USA"

    # getter for: Lcom/android/server/policy/GlobalActions;->mCountyCode:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$9400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    const-string v0, "americano"

    # getter for: Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$2600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 4722
    const-string v0, "VZW"

    # getter for: Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$1600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 4723
    iget-object v0, p0, mAlert:Lcom/android/internal/app/AlertController;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040103

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 4729
    :cond_5b
    :goto_5b
    const-string v0, "VZW"

    # getter for: Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$1600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6300()Z

    move-result v0

    if-nez v0, :cond_88

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6400()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 4730
    :cond_73
    iget-object v0, p0, mAlert:Lcom/android/internal/app/AlertController;

    const/4 v1, -0x2

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 4734
    :cond_88
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    iput v0, p0, mWindowTouchSlop:I

    .line 4735
    iget-object v0, p0, mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {p2, v0}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    .line 4736
    return-void

    .line 4725
    :cond_98
    iget-object v0, p0, mAlert:Lcom/android/internal/app/AlertController;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104011b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_5b
.end method

.method static synthetic access$9500(Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    .prologue
    .line 4693
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static getDialogTheme(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4745
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4746
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010309

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 4748
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6300()Z

    move-result v1

    if-nez v1, :cond_24

    .line 4749
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6400()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 4750
    const v1, 0x10304e4

    .line 4755
    :goto_1f
    return v1

    .line 4752
    :cond_20
    const v1, 0x10304e3

    goto :goto_1f

    .line 4755
    :cond_24
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_1f
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 4793
    const-string v0, "GlobalActions"

    const-string v1, "===== Start dispatchKeyEvent ====="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4794
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_14

    .line 4795
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_2a

    .line 4802
    :cond_14
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_18
    return v0

    .line 4797
    :pswitch_19
    const-string v0, "GlobalActions"

    const-string/jumbo v1, "dispatchKeyEvent : KeyEvent.KEYCODE_HOME"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4798
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4799
    const/4 v0, 0x1

    goto :goto_18

    .line 4795
    nop

    :pswitch_data_2a
    .packed-switch 0x3
        :pswitch_19
    .end packed-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 4868
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_35

    iget-object v2, p0, mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    if-eqz v2, :cond_35

    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v2

    if-nez v2, :cond_35

    .line 4870
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    iget-object v2, p0, mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_35

    .line 4871
    iget-object v2, p0, mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2, v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/policy/GlobalActions$Action;->getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4873
    .local v1, "label":Ljava/lang/CharSequence;
    if-eqz v1, :cond_32

    .line 4874
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4870
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 4878
    .end local v0    # "i":I
    .end local v1    # "label":Ljava/lang/CharSequence;
    :cond_35
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v2

    if-eqz v2, :cond_67

    .line 4879
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x10409ba

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x104011b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4883
    :cond_67
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    return v2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 4807
    iget-object v2, p0, mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    if-eqz v2, :cond_73

    .line 4808
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 4809
    .local v8, "action":I
    if-nez v8, :cond_3e

    .line 4810
    invoke-virtual {p0}, getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    .line 4811
    .local v9, "decor":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v10, v2

    .line 4812
    .local v10, "eventX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v11, v2

    .line 4813
    .local v11, "eventY":I
    iget v2, p0, mWindowTouchSlop:I

    neg-int v2, v2

    if-lt v10, v2, :cond_3a

    iget v2, p0, mWindowTouchSlop:I

    neg-int v2, v2

    if-lt v11, v2, :cond_3a

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, mWindowTouchSlop:I

    add-int/2addr v2, v3

    if-ge v10, v2, :cond_3a

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, mWindowTouchSlop:I

    add-int/2addr v2, v3

    if-lt v11, v2, :cond_3e

    .line 4817
    :cond_3a
    iput-boolean v13, p0, mCancelOnUp:Z

    .line 4818
    sput-boolean v13, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    .line 4822
    .end local v9    # "decor":Landroid/view/View;
    .end local v10    # "eventX":I
    .end local v11    # "eventY":I
    :cond_3e
    :try_start_3e
    iget-boolean v2, p0, mIntercepted:Z

    if-nez v2, :cond_78

    .line 4823
    iget-object v2, p0, mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/server/policy/EnableAccessibilityController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, p0, mIntercepted:Z

    .line 4824
    iget-boolean v2, p0, mIntercepted:Z

    if-eqz v2, :cond_66

    .line 4825
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 4826
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 4828
    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 4829
    const/4 v2, 0x1

    iput-boolean v2, p0, mCancelOnUp:Z

    .line 4830
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z
    :try_end_66
    .catchall {:try_start_3e .. :try_end_66} :catchall_8c

    .line 4836
    .end local v0    # "now":J
    :cond_66
    if-ne v8, v13, :cond_73

    .line 4837
    iget-boolean v2, p0, mCancelOnUp:Z

    if-eqz v2, :cond_6f

    .line 4838
    invoke-virtual {p0}, cancel()V

    .line 4840
    :cond_6f
    iput-boolean v12, p0, mCancelOnUp:Z

    .line 4841
    iput-boolean v12, p0, mIntercepted:Z

    .line 4845
    .end local v8    # "action":I
    :cond_73
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_77
    :goto_77
    return v2

    .line 4833
    .restart local v8    # "action":I
    :cond_78
    :try_start_78
    iget-object v2, p0, mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/server/policy/EnableAccessibilityController;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_7d
    .catchall {:try_start_78 .. :try_end_7d} :catchall_8c

    move-result v2

    .line 4836
    if-ne v8, v13, :cond_77

    .line 4837
    iget-boolean v3, p0, mCancelOnUp:Z

    if-eqz v3, :cond_87

    .line 4838
    invoke-virtual {p0}, cancel()V

    .line 4840
    :cond_87
    iput-boolean v12, p0, mCancelOnUp:Z

    .line 4841
    iput-boolean v12, p0, mIntercepted:Z

    goto :goto_77

    .line 4836
    :catchall_8c
    move-exception v2

    if-ne v8, v13, :cond_9a

    .line 4837
    iget-boolean v3, p0, mCancelOnUp:Z

    if-eqz v3, :cond_96

    .line 4838
    invoke-virtual {p0}, cancel()V

    .line 4840
    :cond_96
    iput-boolean v12, p0, mCancelOnUp:Z

    .line 4841
    iput-boolean v12, p0, mIntercepted:Z

    :cond_9a
    throw v2
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 4849
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6300()Z

    move-result v0

    if-nez v0, :cond_c

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6400()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_c
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4850
    :cond_12
    # getter for: Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$4800()Landroid/widget/ListView;

    move-result-object v0

    .line 4852
    :goto_16
    return-object v0

    :cond_17
    iget-object v0, p0, mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    goto :goto_16
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 4858
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 4859
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6300()Z

    move-result v0

    if-nez v0, :cond_f

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6400()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4860
    :cond_f
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 4861
    iget-object v0, p0, mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->installContent()V

    .line 4864
    :cond_1a
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4889
    const/4 v2, 0x4

    if-ne p1, v2, :cond_58

    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 4890
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v1, :cond_31

    .line 4891
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$4300()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 4892
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4893
    # setter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$4302(Z)Z

    .line 4916
    :goto_29
    return v0

    .line 4896
    :cond_2a
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v1

    .line 4898
    goto :goto_29

    .line 4899
    :cond_31
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_58

    .line 4900
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$4400()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 4901
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4902
    # setter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$4402(Z)Z

    goto :goto_29

    .line 4905
    :cond_51
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v1

    .line 4907
    goto :goto_29

    .line 4911
    :cond_58
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6300()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 4912
    iget-object v0, p0, mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_68

    move v0, v1

    .line 4913
    goto :goto_29

    .line 4916
    :cond_68
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_29
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 4921
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6300()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4922
    iget-object v0, p0, mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4923
    const/4 v0, 0x1

    .line 4926
    :goto_f
    return v0

    :cond_10
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_f
.end method

.method protected onStart()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4764
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/EnableAccessibilityController;->canEnableAccessibilityViaGesture(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4765
    new-instance v0, Lcom/android/server/policy/EnableAccessibilityController;

    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog$2;

    invoke-direct {v2, p0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog$2;-><init>(Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/EnableAccessibilityController;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    .line 4772
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    .line 4773
    invoke-super {p0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4780
    :goto_1d
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 4781
    return-void

    .line 4775
    :cond_21
    sput-boolean v3, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    .line 4776
    const/4 v0, 0x0

    iput-object v0, p0, mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    .line 4777
    invoke-super {p0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_1d
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 4785
    iget-object v0, p0, mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    if-eqz v0, :cond_9

    .line 4786
    iget-object v0, p0, mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-virtual {v0}, Lcom/android/server/policy/EnableAccessibilityController;->onDestroy()V

    .line 4788
    :cond_9
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 4789
    return-void
.end method
