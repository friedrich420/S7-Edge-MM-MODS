.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39$1;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->onDismiss()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;)V
    .locals 0

    .prologue
    .line 4083
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4086
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->val$keyguardShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->val$afterKeyguardGone:Z

    if-nez v0, :cond_0

    .line 4087
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V

    .line 4090
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->val$runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 4091
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4095
    :cond_1
    :goto_0
    return-void

    .line 4093
    :catch_0
    move-exception v0

    goto :goto_0
.end method
