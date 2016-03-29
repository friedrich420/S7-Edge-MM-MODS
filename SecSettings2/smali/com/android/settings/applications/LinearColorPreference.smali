.class public Lcom/android/settings/applications/LinearColorPreference;
.super Landroid/preference/Preference;
.source "LinearColorPreference.java"


# instance fields
.field mColoredRegions:I

.field mGreenColor:I

.field mGreenRatio:F

.field mOnRegionTappedListener:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

.field mRedColor:I

.field mRedRatio:F

.field mYellowColor:I

.field mYellowRatio:F


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 67
    const v1, 0x7f0d03f1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LinearColorBar;

    .line 69
    .local v0, "colors":Lcom/android/settings/applications/LinearColorBar;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LinearColorBar;->setShowIndicator(Z)V

    .line 70
    iget v1, p0, Lcom/android/settings/applications/LinearColorPreference;->mRedColor:I

    iget v2, p0, Lcom/android/settings/applications/LinearColorPreference;->mYellowColor:I

    iget v3, p0, Lcom/android/settings/applications/LinearColorPreference;->mGreenColor:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/LinearColorBar;->setColors(III)V

    .line 71
    iget v1, p0, Lcom/android/settings/applications/LinearColorPreference;->mRedRatio:F

    iget v2, p0, Lcom/android/settings/applications/LinearColorPreference;->mYellowRatio:F

    iget v3, p0, Lcom/android/settings/applications/LinearColorPreference;->mGreenRatio:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/LinearColorBar;->setRatios(FFF)V

    .line 72
    iget v1, p0, Lcom/android/settings/applications/LinearColorPreference;->mColoredRegions:I

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LinearColorBar;->setColoredRegions(I)V

    .line 73
    iget-object v1, p0, Lcom/android/settings/applications/LinearColorPreference;->mOnRegionTappedListener:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LinearColorBar;->setOnRegionTappedListener(Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;)V

    .line 74
    return-void
.end method
