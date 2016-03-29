.class public Lcom/android/settings/widget/CustomScrollView;
.super Landroid/widget/ScrollView;
.source "CustomScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/CustomScrollView$ObservableScrollViewCallbacks;
    }
.end annotation


# instance fields
.field private mCallbacks:Lcom/android/settings/widget/CustomScrollView$ObservableScrollViewCallbacks;

.field private mIsFirstLoading:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/CustomScrollView;->mIsFirstLoading:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/CustomScrollView;->mIsFirstLoading:Z

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/CustomScrollView;->mIsFirstLoading:Z

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/CustomScrollView;->mIsFirstLoading:Z

    .line 30
    return-void
.end method


# virtual methods
.method public getIsFirstLoading()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/settings/widget/CustomScrollView;->mIsFirstLoading:Z

    return v0
.end method

.method public onScrollChanged(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 39
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 40
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/widget/CustomScrollView;->mCallbacks:Lcom/android/settings/widget/CustomScrollView$ObservableScrollViewCallbacks;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 55
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 50
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/widget/CustomScrollView;->mCallbacks:Lcom/android/settings/widget/CustomScrollView$ObservableScrollViewCallbacks;

    invoke-interface {v0}, Lcom/android/settings/widget/CustomScrollView$ObservableScrollViewCallbacks;->releaseView()V

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setIsFirstLoading(Z)V
    .locals 0
    .param p1, "isFirstLoading"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/settings/widget/CustomScrollView;->mIsFirstLoading:Z

    .line 64
    return-void
.end method

.method public setScrollViewCallbacks(Lcom/android/settings/widget/CustomScrollView$ObservableScrollViewCallbacks;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings/widget/CustomScrollView$ObservableScrollViewCallbacks;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/settings/widget/CustomScrollView;->mCallbacks:Lcom/android/settings/widget/CustomScrollView$ObservableScrollViewCallbacks;

    .line 34
    return-void
.end method
