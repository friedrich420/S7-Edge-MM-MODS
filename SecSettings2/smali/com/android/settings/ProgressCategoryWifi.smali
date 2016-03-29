.class public Lcom/android/settings/ProgressCategoryWifi;
.super Lcom/android/settings/ProgressCategoryBase;
.source "ProgressCategoryWifi.java"


# instance fields
.field private mEmptyTextRes:I

.field private mProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/ProgressCategoryWifi;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-boolean v0, p0, Lcom/android/settings/ProgressCategoryWifi;->mProgress:Z

    .line 39
    const v0, 0x7f04018f

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategoryWifi;->setLayoutResource(I)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/ProgressCategoryWifi;->mEmptyTextRes:I

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/ProgressCategoryWifi;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategoryWifi;->mProgress:Z

    .line 50
    const v0, 0x7f04018f

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategoryWifi;->setLayoutResource(I)V

    .line 51
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/ProgressCategoryBase;->onBindView(Landroid/view/View;)V

    .line 60
    const v1, 0x7f0d00ea

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "progressBar":Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/settings/ProgressCategoryWifi;->mProgress:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    return-void

    .line 62
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public setProgress(Z)V
    .locals 0
    .param p1, "progressOn"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings/ProgressCategoryWifi;->mProgress:Z

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/ProgressCategoryWifi;->notifyChanged()V

    .line 69
    return-void
.end method
