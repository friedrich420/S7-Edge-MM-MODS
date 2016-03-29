.class Lcom/android/settings/SettingsActivity$13;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsActivity;->centerTabItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsActivity;)V
    .locals 0

    .prologue
    .line 1455
    iput-object p1, p0, Lcom/android/settings/SettingsActivity$13;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1458
    iget-object v4, p0, Lcom/android/settings/SettingsActivity$13;->this$0:Lcom/android/settings/SettingsActivity;

    # getter for: Lcom/android/settings/SettingsActivity;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v4}, Lcom/android/settings/SettingsActivity;->access$1000(Lcom/android/settings/SettingsActivity;)Landroid/widget/TabHost;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    .line 1459
    .local v3, "tabWidget":Landroid/widget/TabWidget;
    iget-object v4, p0, Lcom/android/settings/SettingsActivity$13;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v4}, Lcom/android/settings/SettingsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 1460
    .local v2, "screenWidth":I
    iget-object v4, p0, Lcom/android/settings/SettingsActivity$13;->this$0:Lcom/android/settings/SettingsActivity;

    # getter for: Lcom/android/settings/SettingsActivity;->tabIndex:I
    invoke-static {v4}, Lcom/android/settings/SettingsActivity;->access$1100(Lcom/android/settings/SettingsActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 1461
    .local v0, "leftX":I
    const/4 v1, 0x0

    .line 1462
    .local v1, "newX":I
    iget-object v4, p0, Lcom/android/settings/SettingsActivity$13;->this$0:Lcom/android/settings/SettingsActivity;

    # getter for: Lcom/android/settings/SettingsActivity;->tabIndex:I
    invoke-static {v4}, Lcom/android/settings/SettingsActivity;->access$1100(Lcom/android/settings/SettingsActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    div-int/lit8 v5, v2, 0x2

    sub-int v1, v4, v5

    .line 1463
    if-gez v1, :cond_0

    .line 1464
    const/4 v1, 0x0

    .line 1466
    :cond_0
    iget-object v4, p0, Lcom/android/settings/SettingsActivity$13;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v4, v1}, Lcom/android/settings/SettingsActivity;->ScrollHorizontalScrollView(I)V

    .line 1467
    return-void
.end method
