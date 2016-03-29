.class public Lcom/android/settings/deviceinfo/StorageSummaryPreference;
.super Landroid/preference/Preference;
.source "StorageSummaryPreference.java"


# instance fields
.field private mPercent:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->mPercent:I

    .line 34
    const v0, 0x7f0401f0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setLayoutResource(I)V

    .line 35
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setEnabled(Z)V

    .line 36
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setShouldDisableView(Z)V

    .line 37
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 45
    const v1, 0x102000d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 46
    .local v0, "progress":Landroid/widget/ProgressBar;
    iget v1, p0, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->mPercent:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 47
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 48
    iget v1, p0, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->mPercent:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 52
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 53
    return-void

    .line 50
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPercent(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->mPercent:I

    .line 41
    return-void
.end method
