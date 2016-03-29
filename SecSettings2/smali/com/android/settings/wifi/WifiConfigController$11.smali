.class Lcom/android/settings/wifi/WifiConfigController$11;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiConfigController;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 3953
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController$11;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3955
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$11;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    # invokes: Lcom/android/settings/wifi/WifiConfigController;->restartFocusedViewInput()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiConfigController;->access$1300(Lcom/android/settings/wifi/WifiConfigController;)V

    .line 3956
    return-void
.end method
