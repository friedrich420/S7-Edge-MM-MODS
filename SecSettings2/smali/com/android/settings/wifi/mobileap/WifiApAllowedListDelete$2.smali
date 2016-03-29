.class Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$2;
.super Ljava/lang/Object;
.source "WifiApAllowedListDelete.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 151
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 155
    if-eqz p2, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->ToggleAllCheck(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->access$300(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;Z)V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;

    const/4 v1, 0x0

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->ToggleAllCheck(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->access$300(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;Z)V

    goto :goto_0
.end method
