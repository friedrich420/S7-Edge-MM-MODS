.class Lcom/android/settings/wifi/mobileap/WpsApDialog$2;
.super Ljava/lang/Object;
.source "WpsApDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WpsApDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WpsApDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WpsApDialog;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WpsApDialog$2;->this$0:Lcom/android/settings/wifi/mobileap/WpsApDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WpsApDialog$2;->this$0:Lcom/android/settings/wifi/mobileap/WpsApDialog;

    # getter for: Lcom/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WpsApDialog;->access$100(Lcom/android/settings/wifi/mobileap/WpsApDialog;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WpsApDialog$2;->this$0:Lcom/android/settings/wifi/mobileap/WpsApDialog;

    # getter for: Lcom/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WpsApDialog;->access$100(Lcom/android/settings/wifi/mobileap/WpsApDialog;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WpsApDialog$2;->this$0:Lcom/android/settings/wifi/mobileap/WpsApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WpsApDialog;->dismiss()V

    .line 152
    return-void
.end method
