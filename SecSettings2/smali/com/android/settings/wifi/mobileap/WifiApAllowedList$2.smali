.class Lcom/android/settings/wifi/mobileap/WifiApAllowedList$2;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 277
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mFlagPref:Z
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$200(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    if-eqz p2, :cond_1

    .line 283
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->ToggleAllCheck(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$300(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;Z)V

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    const/4 v1, 0x0

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->ToggleAllCheck(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$300(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;Z)V

    goto :goto_0
.end method
