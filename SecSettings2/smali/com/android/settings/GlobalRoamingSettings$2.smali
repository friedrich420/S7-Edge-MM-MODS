.class Lcom/android/settings/GlobalRoamingSettings$2;
.super Landroid/os/Handler;
.source "GlobalRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GlobalRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GlobalRoamingSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/GlobalRoamingSettings;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/settings/GlobalRoamingSettings$2;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 131
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 144
    :goto_0
    return-void

    .line 133
    :sswitch_0
    iget-object v0, p0, Lcom/android/settings/GlobalRoamingSettings$2;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/GlobalRoamingSettings;->toogleBackgroundDataToast(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/GlobalRoamingSettings;->access$400(Lcom/android/settings/GlobalRoamingSettings;Z)V

    goto :goto_0

    .line 136
    :sswitch_1
    iget-object v0, p0, Lcom/android/settings/GlobalRoamingSettings$2;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # invokes: Lcom/android/settings/GlobalRoamingSettings;->toogleBackgroundDataToast(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/GlobalRoamingSettings;->access$400(Lcom/android/settings/GlobalRoamingSettings;Z)V

    goto :goto_0

    .line 139
    :sswitch_2
    iget-object v0, p0, Lcom/android/settings/GlobalRoamingSettings$2;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # invokes: Lcom/android/settings/GlobalRoamingSettings;->toogleDataRoamingToast(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/GlobalRoamingSettings;->access$500(Lcom/android/settings/GlobalRoamingSettings;Z)V

    goto :goto_0

    .line 131
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_1
        0x1f4 -> :sswitch_2
    .end sparse-switch
.end method
