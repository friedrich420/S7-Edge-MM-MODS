.class Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$1;
.super Landroid/database/ContentObserver;
.source "SoundPathControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mDeviceName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$402(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->updateList()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$600(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)V

    .line 300
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$700(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;->sendEmptyMessage(I)Z

    .line 301
    return-void
.end method
