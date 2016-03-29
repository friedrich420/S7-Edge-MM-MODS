.class public Lcom/android/settings/widget/LinkTextView;
.super Landroid/widget/TextView;
.source "LinkTextView.java"


# instance fields
.field private mAccessibilityHelper:Lcom/android/settings/widget/LinkAccessibilityHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/LinkTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Lcom/android/settings/widget/LinkAccessibilityHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/LinkAccessibilityHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/settings/widget/LinkTextView;->mAccessibilityHelper:Lcom/android/settings/widget/LinkAccessibilityHelper;

    .line 39
    iget-object v0, p0, Lcom/android/settings/widget/LinkTextView;->mAccessibilityHelper:Lcom/android/settings/widget/LinkAccessibilityHelper;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/LinkTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/widget/LinkTextView;->mAccessibilityHelper:Lcom/android/settings/widget/LinkAccessibilityHelper;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/LinkAccessibilityHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    .line 47
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
