.class public Lcom/android/settings/DataUsageSummary$ChartFragment;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChartFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4660
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;)V
    .locals 3
    .param p0, "parent"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 4662
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4670
    :goto_0
    return-void

    .line 4664
    :cond_0
    new-instance v0, Lcom/android/settings/DataUsageSummary$ChartFragment;

    invoke-direct {v0}, Lcom/android/settings/DataUsageSummary$ChartFragment;-><init>()V

    .line 4665
    .local v0, "fragment":Lcom/android/settings/DataUsageSummary$ChartFragment;
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lcom/android/settings/DataUsageSummary$ChartFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 4666
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 4667
    .local v1, "ft":Landroid/app/FragmentTransaction;
    const-string v2, "chartDetails"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 4668
    const-string v2, "chartDetails"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 4669
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .prologue
    .line 4692
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$ChartFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary;

    .line 4693
    .local v0, "target":Lcom/android/settings/DataUsageSummary;
    # invokes: Lcom/android/settings/DataUsageSummary;->backFromChart()V
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$8100(Lcom/android/settings/DataUsageSummary;)V

    .line 4694
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 4695
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 4674
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 4675
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$ChartFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary;

    .line 4676
    .local v0, "target":Lcom/android/settings/DataUsageSummary;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/DataUsageSummary;->mIsChartFragment:Z

    .line 4677
    # getter for: Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$8000(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$8000(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 4678
    # invokes: Lcom/android/settings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$2900(Lcom/android/settings/DataUsageSummary;)V

    .line 4680
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 4684
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$ChartFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary;

    .line 4685
    .local v0, "target":Lcom/android/settings/DataUsageSummary;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settings/DataUsageSummary;->mIsChartFragment:Z

    .line 4686
    # invokes: Lcom/android/settings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$2900(Lcom/android/settings/DataUsageSummary;)V

    .line 4687
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 4688
    return-void
.end method
