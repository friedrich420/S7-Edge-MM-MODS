.class Lcom/android/settings/DeviceNameSettings$1$1;
.super Ljava/lang/Object;
.source "DeviceNameSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DeviceNameSettings$1;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/DeviceNameSettings$1;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceNameSettings$1;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/settings/DeviceNameSettings$1$1;->this$1:Lcom/android/settings/DeviceNameSettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/DeviceNameSettings$1$1;->this$1:Lcom/android/settings/DeviceNameSettings$1;

    iget-object v0, v0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    # getter for: Lcom/android/settings/DeviceNameSettings;->mDeviceNameScrollView:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/android/settings/DeviceNameSettings;->access$500(Lcom/android/settings/DeviceNameSettings;)Landroid/widget/ScrollView;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 124
    return-void
.end method
