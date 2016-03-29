.class public abstract Lcom/android/settings/InstrumentedFragment;
.super Landroid/preference/PreferenceFragment;
.source "InstrumentedFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getMetricsCategory()I
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/InstrumentedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/InstrumentedFragment;->getMetricsCategory()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 48
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/InstrumentedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/InstrumentedFragment;->getMetricsCategory()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 42
    return-void
.end method
