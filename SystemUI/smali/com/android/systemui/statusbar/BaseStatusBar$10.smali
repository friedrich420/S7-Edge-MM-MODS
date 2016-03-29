.class Lcom/android/systemui/statusbar/BaseStatusBar$10;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;->startNotificationGutsIntent(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

.field final synthetic val$appUid:I

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$keyguardShowing:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;ZILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1694
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->val$keyguardShowing:Z

    iput p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->val$appUid:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 1

    .prologue
    .line 1697
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$10$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$10$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$10;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 1716
    const/4 v0, 0x1

    return v0
.end method
