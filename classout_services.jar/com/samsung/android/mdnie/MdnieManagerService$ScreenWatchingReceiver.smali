.class final Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MdnieManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdnie/MdnieManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdnie/MdnieManagerService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/mdnie/MdnieManagerService;)V
    .registers 2

    .prologue
    .line 178
    iput-object p1, p0, this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/mdnie/MdnieManagerService;Lcom/samsung/android/mdnie/MdnieManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;
    .param p2, "x1"    # Lcom/samsung/android/mdnie/MdnieManagerService$1;

    .prologue
    .line 178
    invoke-direct {p0, p1}, <init>(Lcom/samsung/android/mdnie/MdnieManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 184
    iget-object v2, p0, this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    iget-object v1, p0, this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    # getter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$200(Lcom/samsung/android/mdnie/MdnieManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    # setter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v2, v1}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$102(Lcom/samsung/android/mdnie/MdnieManagerService;Landroid/os/PowerManager;)Landroid/os/PowerManager;

    .line 197
    :cond_22
    :goto_22
    return-void

    .line 187
    :cond_23
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 188
    iget-object v3, p0, this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    # setter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mDisplayOn:Z
    invoke-static {v3, v1}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$302(Lcom/samsung/android/mdnie/MdnieManagerService;Z)Z

    .line 189
    iget-object v3, p0, this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    iget-object v4, p0, this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    # getter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mDisplayOn:Z
    invoke-static {v4}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$300(Lcom/samsung/android/mdnie/MdnieManagerService;)Z

    move-result v4

    if-eqz v4, :cond_46

    iget-object v4, p0, this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    # getter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mEmergencyModeDiabled:Z
    invoke-static {v4}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$500(Lcom/samsung/android/mdnie/MdnieManagerService;)Z

    move-result v4

    if-eqz v4, :cond_46

    :goto_42
    # setter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mMdnieWorkingCondition:Z
    invoke-static {v3, v1}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$402(Lcom/samsung/android/mdnie/MdnieManagerService;Z)Z

    goto :goto_22

    :cond_46
    move v1, v2

    goto :goto_42

    .line 192
    :cond_48
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 193
    iget-object v3, p0, this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    # setter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mDisplayOn:Z
    invoke-static {v3, v2}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$302(Lcom/samsung/android/mdnie/MdnieManagerService;Z)Z

    .line 194
    iget-object v3, p0, this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    iget-object v4, p0, this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    # getter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mDisplayOn:Z
    invoke-static {v4}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$300(Lcom/samsung/android/mdnie/MdnieManagerService;)Z

    move-result v4

    if-eqz v4, :cond_6b

    iget-object v4, p0, this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    # getter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mEmergencyModeDiabled:Z
    invoke-static {v4}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$500(Lcom/samsung/android/mdnie/MdnieManagerService;)Z

    move-result v4

    if-eqz v4, :cond_6b

    :goto_67
    # setter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mMdnieWorkingCondition:Z
    invoke-static {v3, v1}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$402(Lcom/samsung/android/mdnie/MdnieManagerService;Z)Z

    goto :goto_22

    :cond_6b
    move v1, v2

    goto :goto_67
.end method
