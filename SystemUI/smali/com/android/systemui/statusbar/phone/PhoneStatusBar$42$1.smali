.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42$1;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42;)V
    .locals 0

    .prologue
    .line 4334
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 2

    .prologue
    .line 4337
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->clickDeferredTile:Lcom/android/systemui/qs/QSTile;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/qs/QSTile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4338
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->clickDeferredTile:Lcom/android/systemui/qs/QSTile;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/qs/QSTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTile;->click()V

    .line 4339
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->clickDeferredTile:Lcom/android/systemui/qs/QSTile;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6802(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/qs/QSTile;)Lcom/android/systemui/qs/QSTile;

    .line 4341
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
