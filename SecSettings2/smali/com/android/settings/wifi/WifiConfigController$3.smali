.class Lcom/android/settings/wifi/WifiConfigController$3;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiConfigController;->addGatewayRow(Landroid/view/ViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiConfigController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 0

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController$3;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1108
    # getter for: Lcom/android/settings/wifi/WifiConfigController;->DBG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiConfigController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiConfigController"

    const-string v1, "Go to Webpage: open webpage from click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$3;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->OpenWebPage()V

    .line 1110
    return-void
.end method
