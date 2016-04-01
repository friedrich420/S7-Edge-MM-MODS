.class public Lcom/android/server/TimaService$TuiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TimaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TuiReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 334
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 337
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "pkg":Ljava/lang/String;
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    const-string/jumbo v3, "package:com.sec.enterprise.knox.TrustedPinPadApp"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 342
    const-string v3, "TimaService"

    const-string v4, "TrustedPinPadApp is installed. Start the service to extract resources"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 344
    .local v2, "tuiIntent":Landroid/content/Intent;
    const-string v3, "com.sec.enterprise.knox.TrustedPinPadApp"

    const-string v4, "com.sec.enterprise.knox.TrustedPinPadApp.TuiService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 347
    .end local v2    # "tuiIntent":Landroid/content/Intent;
    :cond_2f
    return-void
.end method
