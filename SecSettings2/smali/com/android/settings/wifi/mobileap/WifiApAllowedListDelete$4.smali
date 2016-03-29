.class Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$4;
.super Ljava/lang/Object;
.source "WifiApAllowedListDelete.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->removeSelectedList()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->access$400(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)V

    .line 198
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->finish()V

    .line 199
    return-void
.end method
