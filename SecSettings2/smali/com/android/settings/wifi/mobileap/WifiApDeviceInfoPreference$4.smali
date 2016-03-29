.class Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$4;
.super Ljava/lang/Object;
.source "WifiApDeviceInfoPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->showDialog(I)V
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
    .line 177
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->access$300(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Landroid/widget/Spinner;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->access$000(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->notifyChanged()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->access$600(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V

    .line 182
    return-void

    .line 180
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
