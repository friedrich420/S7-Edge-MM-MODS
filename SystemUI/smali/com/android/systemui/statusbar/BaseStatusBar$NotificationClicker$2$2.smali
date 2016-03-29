.class Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$2;
.super Landroid/content/pm/IKnoxUnlockAction$Stub;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->onDismiss()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;)V
    .locals 0

    .prologue
    .line 3014
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$2;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

    invoke-direct {p0}, Landroid/content/pm/IKnoxUnlockAction$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnlock()V
    .locals 1

    .prologue
    .line 3017
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$2$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$2$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$2;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$2$1;->start()V

    .line 3060
    return-void
.end method
