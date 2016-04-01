.class Lcom/android/server/accessibility/AccessibilityManagerService$DirectAccessBrocastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectAccessBrocastReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 451
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$1;

    .prologue
    .line 451
    invoke-direct {p0}, <init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 454
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 456
    :cond_14
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.settings.action.directaccess.CLOSE_DIALOG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 457
    .local v1, "mDirecAccessiIntent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 458
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 461
    .end local v1    # "mDirecAccessiIntent":Landroid/content/Intent;
    :cond_25
    return-void
.end method
