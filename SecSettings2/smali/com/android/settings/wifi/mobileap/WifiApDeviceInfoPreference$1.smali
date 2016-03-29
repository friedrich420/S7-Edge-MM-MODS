.class Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;
.super Ljava/lang/Object;
.source "WifiApDeviceInfoPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "selectedItemView"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 101
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->access$000(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    .line 102
    .local v0, "current":I
    :goto_0
    move v1, p3

    .line 103
    .local v1, "pos":I
    if-eq v0, v1, :cond_0

    .line 104
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->checkConnectedDeviceOrChangeAllowPolicy()V
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->access$100(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V

    .line 105
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mIsReset:Z
    invoke-static {v3, v2}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->access$202(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;Z)Z

    .line 107
    :cond_0
    return-void

    .line 101
    .end local v0    # "current":I
    .end local v1    # "pos":I
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
