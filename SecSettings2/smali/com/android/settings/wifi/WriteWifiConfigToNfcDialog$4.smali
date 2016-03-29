.class Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$4;
.super Ljava/lang/Object;
.source "WriteWifiConfigToNfcDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$4;->this$0:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$4;->this$0:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    # invokes: Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->enableSubmitIfAppropriate()V
    invoke-static {v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->access$600(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)V

    .line 337
    return-void
.end method
