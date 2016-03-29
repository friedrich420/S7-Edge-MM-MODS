.class public Lcom/android/settings/Settings$DataUsageSummaryActivity;
.super Lcom/android/settings/SettingsActivityWrapper;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataUsageSummaryActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/android/settings/SettingsActivityWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 311
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivityWrapper;->onCreate(Landroid/os/Bundle;)V

    .line 312
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_1

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/Settings$DataUsageSummaryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 314
    .local v1, "intent":Landroid/content/Intent;
    const/4 v0, 0x0

    .line 315
    .local v0, "enableNavigationUp":Z
    if-eqz v1, :cond_0

    .line 316
    const-string v2, ":settings:show_navigation_up"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 318
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/Settings$DataUsageSummaryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/Settings$DataUsageSummaryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/Settings$DataUsageSummaryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 323
    .end local v0    # "enableNavigationUp":Z
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 327
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 328
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 334
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivityWrapper;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 330
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/Settings$DataUsageSummaryActivity;->onBackPressed()V

    .line 331
    const/4 v0, 0x1

    goto :goto_0

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
