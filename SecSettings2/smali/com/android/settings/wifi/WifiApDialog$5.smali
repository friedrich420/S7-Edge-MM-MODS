.class Lcom/android/settings/wifi/WifiApDialog$5;
.super Ljava/lang/Object;
.source "WifiApDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApDialog;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApDialog;)V
    .locals 0

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog$5;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog$5;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    # invokes: Lcom/android/settings/wifi/WifiApDialog;->restartFocusedViewInput()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApDialog;->access$1800(Lcom/android/settings/wifi/WifiApDialog;)V

    .line 1148
    return-void
.end method
