.class Lcom/android/settings/wifi/mobileap/WifiApAllowedList$4;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 338
    const/4 v0, 0x0

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$002(Z)Z

    .line 339
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->stopActionMode()V

    .line 340
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->changeActionBar()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$100(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    .line 341
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateList()V

    .line 342
    return-void
.end method
