.class Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$2;
.super Ljava/lang/Object;
.source "WifiApDeviceInfoPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 114
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 116
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    const v0, 0x7f0d041c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v1, v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->access$302(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;Landroid/widget/Spinner;)Landroid/widget/Spinner;

    .line 117
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    const v0, 0x7f0d041b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mText:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->access$402(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 118
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mTitle:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->access$502(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 119
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->access$400(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->access$500(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->access$300(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    goto :goto_0
.end method
