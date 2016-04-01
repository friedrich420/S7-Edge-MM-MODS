.class public Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
.super Ljava/lang/Object;
.source "KeyguardServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;,
        Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;,
        Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;,
        Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final ENCRYPT_ERROR_NAME:Ljava/lang/String; = "error_not_encrypted"

.field private static final INTERACTIVE_STATE_AWAKE:I = 0x1

.field private static final INTERACTIVE_STATE_GOING_TO_SLEEP:I = 0x2

.field private static final INTERACTIVE_STATE_SLEEP:I = 0x0

.field public static final PROPERTY_ENCRYPT_NAME:Ljava/lang/String; = "vold.encrypt_progress"

.field private static final SCREEN_STATE_OFF:I = 0x0

.field private static final SCREEN_STATE_ON:I = 0x2

.field private static final SCREEN_STATE_TURNING_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "KeyguardServiceDelegate"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDrawnListenerWhenConnect:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

.field private final mKeyguardConnection:Landroid/content/ServiceConnection;

.field protected mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

.field private final mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

.field private final mScrim:Landroid/view/View;

.field private final mScrimHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    invoke-direct {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;-><init>()V

    iput-object v0, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 169
    new-instance v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;-><init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V

    iput-object v0, p0, mKeyguardConnection:Landroid/content/ServiceConnection;

    .line 138
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 139
    invoke-static {p1}, createScrim(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, mScrim:Landroid/view/View;

    .line 140
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, mScrimHandler:Landroid/os/Handler;

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .prologue
    .line 41
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .prologue
    .line 41
    iget-object v0, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .prologue
    .line 41
    iget-object v0, p0, mDrawnListenerWhenConnect:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
    .param p1, "x1"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    .prologue
    .line 41
    iput-object p1, p0, mDrawnListenerWhenConnect:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .prologue
    .line 41
    iget-object v0, p0, mScrim:Landroid/view/View;

    return-object v0
.end method

.method private static final createScrim(Landroid/content/Context;)Landroid/view/View;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 406
    new-instance v8, Landroid/view/View;

    invoke-direct {v8, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 408
    .local v8, "view":Landroid/view/View;
    const v4, 0x110900

    .line 414
    .local v4, "flags":I
    const/4 v6, -0x1

    .line 415
    .local v6, "stretch":I
    const/16 v7, 0x7ed

    .line 416
    .local v7, "type":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7ed

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 418
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 419
    const/4 v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 420
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 421
    const-string v1, "KeyguardScrim"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 422
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 423
    .local v9, "wm":Landroid/view/WindowManager;
    invoke-interface {v9, v8, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    const/high16 v1, 0x3610000

    invoke-virtual {v8, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 434
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    .line 436
    return-object v8
.end method

.method private isDeviceEncrypting()Z
    .registers 3

    .prologue
    .line 551
    const-string/jumbo v1, "vold.encrypt_progress"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, "encrypt":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string/jumbo v1, "error_not_encrypted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 553
    :cond_16
    const/4 v1, 0x0

    .line 555
    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x1

    goto :goto_17
.end method


# virtual methods
.method public bindService(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 144
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 145
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 147
    .local v2, "resources":Landroid/content/res/Resources;
    const v3, 0x1040055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 149
    .local v1, "keyguardComponent":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 151
    iget-object v3, p0, mKeyguardConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 153
    const-string v3, "KeyguardServiceDelegate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*** Keyguard: can\'t bind to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v3, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput-boolean v6, v3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    .line 155
    iget-object v3, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput-boolean v6, v3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showingAndNotOccluded:Z

    .line 156
    iget-object v3, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput-boolean v6, v3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    .line 157
    iget-object v4, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    monitor-enter v4

    .line 161
    :try_start_4e
    iget-object v3, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->deviceHasKeyguard:Z

    .line 162
    invoke-virtual {p0}, hideScrim()V

    .line 163
    monitor-exit v4

    .line 167
    :goto_57
    return-void

    .line 163
    :catchall_58
    move-exception v3

    monitor-exit v4
    :try_end_5a
    .catchall {:try_start_4e .. :try_end_5a} :catchall_58

    throw v3

    .line 165
    :cond_5b
    const-string v3, "KeyguardServiceDelegate"

    const-string v4, "*** Keyguard started"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57
.end method

.method public changeLidState(Z)V
    .registers 3
    .param p1, "lidOpen"    # Z

    .prologue
    .line 569
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_9

    .line 570
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->changeLidState(Z)V

    .line 572
    :cond_9
    return-void
.end method

.method public dismiss()V
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_9

    .line 262
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->dismiss()V

    .line 264
    :cond_9
    return-void
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 378
    const-string v0, "KeyguardServiceDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doKeyguardTimeout() callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_28

    .line 380
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->doKeyguardTimeout(Landroid/os/Bundle;)V

    .line 382
    :cond_28
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KeyguardServiceDelegate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "showing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "showingAndNotOccluded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showingAndNotOccluded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "inputRestricted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "occluded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->occluded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "secure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "dreaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->dreaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "systemIsReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->systemIsReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "deviceHasKeyguard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->deviceHasKeyguard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "offReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->offReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "currentUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->currentUser:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bootCompleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->bootCompleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "screenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "interactiveState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_1e3

    .line 491
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 493
    :cond_1e3
    return-void
.end method

.method public getScreenOrientation(Z)I
    .registers 3
    .param p1, "isOccluded"    # Z

    .prologue
    .line 579
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_b

    .line 580
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->getScreenOrientation(Z)I

    move-result v0

    .line 582
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public hideScrim()V
    .registers 3

    .prologue
    .line 452
    iget-object v0, p0, mScrimHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$3;

    invoke-direct {v1, p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$3;-><init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 458
    return-void
.end method

.method public isInputRestricted()Z
    .registers 3

    .prologue
    .line 227
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_e

    .line 228
    iget-object v0, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-object v1, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->isInputRestricted()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    .line 230
    :cond_e
    iget-object v0, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    return v0
.end method

.method public isSecure()Z
    .registers 3

    .prologue
    .line 267
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_e

    .line 268
    iget-object v0, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-object v1, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->isSecure()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    .line 270
    :cond_e
    iget-object v0, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    return v0
.end method

.method public isShowing()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 216
    iget-object v1, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v1, :cond_14

    .line 217
    iget-object v0, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-object v1, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->isShowing()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    .line 223
    :cond_f
    iget-object v0, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    :goto_13
    return v0

    .line 218
    :cond_14
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_f

    .line 219
    const-string v1, "KeyguardServiceDelegate"

    const-string v2, "*** Keyguard is not showing because device isn\'t provisioned"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public isSimLocked()Z
    .registers 2

    .prologue
    .line 561
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_b

    .line 562
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->isSimLocked()Z

    move-result v0

    .line 564
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public keyguardDone(ZZ)V
    .registers 4
    .param p1, "authenticated"    # Z
    .param p2, "wakeup"    # Z

    .prologue
    .line 240
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_9

    .line 241
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->keyguardDone(ZZ)V

    .line 243
    :cond_9
    return-void
.end method

.method public onActivityDrawn()V
    .registers 2

    .prologue
    .line 468
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_9

    .line 469
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onActivityDrawn()V

    .line 471
    :cond_9
    return-void
.end method

.method public onBootCompleted()V
    .registers 3

    .prologue
    .line 461
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_9

    .line 462
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onBootCompleted()V

    .line 464
    :cond_9
    iget-object v0, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->bootCompleted:Z

    .line 465
    return-void
.end method

.method public onDreamingStarted()V
    .registers 3

    .prologue
    .line 274
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_9

    .line 275
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onDreamingStarted()V

    .line 277
    :cond_9
    iget-object v0, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->dreaming:Z

    .line 278
    return-void
.end method

.method public onDreamingStopped()V
    .registers 3

    .prologue
    .line 281
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_9

    .line 282
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onDreamingStopped()V

    .line 284
    :cond_9
    iget-object v0, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->dreaming:Z

    .line 285
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .registers 4
    .param p1, "why"    # I

    .prologue
    .line 356
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_9

    .line 357
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onFinishedGoingToSleep(I)V

    .line 359
    :cond_9
    iget-object v0, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    .line 360
    return-void
.end method

.method public onScreenTurnedOff()V
    .registers 4

    .prologue
    .line 297
    iget-object v1, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v1, :cond_11

    .line 298
    const-string v1, "KeyguardServiceDelegate"

    const-string/jumbo v2, "onScreenTurnedOff()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v1, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onScreenTurnedOff()V

    .line 301
    :cond_11
    iget-object v1, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    .line 303
    invoke-virtual {p0}, isSecure()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 305
    :try_start_1c
    const-string/jumbo v1, "sys.locksecured"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_25} :catch_26

    .line 310
    :cond_25
    :goto_25
    return-void

    .line 306
    :catch_26
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25
.end method

.method public onScreenTurnedOn()V
    .registers 3

    .prologue
    .line 340
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_11

    .line 341
    const-string v0, "KeyguardServiceDelegate"

    const-string/jumbo v1, "onScreenTurnedOn()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onScreenTurnedOn()V

    .line 344
    :cond_11
    iget-object v0, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    .line 345
    return-void
.end method

.method public onScreenTurningOn(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)V
    .registers 5
    .param p1, "drawnListener"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    .prologue
    .line 313
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_33

    .line 314
    const-string v0, "KeyguardServiceDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScreenTurnedOn(showListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    new-instance v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;-><init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 336
    :goto_2d
    iget-object v0, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    .line 337
    return-void

    .line 317
    :cond_33
    invoke-direct {p0}, isDeviceEncrypting()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 318
    if-eqz p1, :cond_3e

    .line 319
    invoke-interface {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;->onDrawn()V

    .line 321
    :cond_3e
    iget-object v0, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    if-eqz v0, :cond_49

    .line 322
    iget-object v0, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    .line 324
    :cond_49
    invoke-virtual {p0}, hideScrim()V

    goto :goto_2d

    .line 327
    :cond_4d
    const-string v0, "KeyguardServiceDelegate"

    const-string/jumbo v1, "onScreenTurningOn(): no keyguard service!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iput-object p1, p0, mDrawnListenerWhenConnect:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    goto :goto_2d
.end method

.method public onStartedGoingToSleep(I)V
    .registers 4
    .param p1, "why"    # I

    .prologue
    .line 348
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_9

    .line 349
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onStartedGoingToSleep(I)V

    .line 351
    :cond_9
    iget-object v0, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput p1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->offReason:I

    .line 352
    iget-object v0, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    .line 353
    return-void
.end method

.method public onStartedWakingUp()V
    .registers 3

    .prologue
    .line 288
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_11

    .line 289
    const-string v0, "KeyguardServiceDelegate"

    const-string/jumbo v1, "onStartedWakingUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onStartedWakingUp()V

    .line 293
    :cond_11
    iget-object v0, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    .line 294
    return-void
.end method

.method public onSystemReady()V
    .registers 3

    .prologue
    .line 370
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_a

    .line 371
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onSystemReady()V

    .line 375
    :goto_9
    return-void

    .line 373
    :cond_a
    iget-object v0, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->systemIsReady:Z

    goto :goto_9
.end method

.method public removeAdaptiveEvent(Ljava/lang/String;)V
    .registers 3
    .param p1, "requestClass"    # Ljava/lang/String;

    .prologue
    .line 511
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_9

    .line 512
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->removeAdaptiveEvent(Ljava/lang/String;)V

    .line 514
    :cond_9
    return-void
.end method

.method public setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 5
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "smallView"    # Landroid/widget/RemoteViews;
    .param p3, "bigView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 501
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_9

    .line 502
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 504
    :cond_9
    return-void
.end method

.method public setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .registers 4
    .param p1, "p"    # Landroid/app/PendingIntent;
    .param p2, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    .line 532
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_9

    .line 533
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 535
    :cond_9
    return-void
.end method

.method public setBendedPendingIntentInSecure(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .registers 4
    .param p1, "p"    # Landroid/app/PendingIntent;
    .param p2, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    .line 542
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_9

    .line 543
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setBendedPendingIntentInSecure(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 545
    :cond_9
    return-void
.end method

.method public setCurrentUser(I)V
    .registers 3
    .param p1, "newUserId"    # I

    .prologue
    .line 385
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_9

    .line 386
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setCurrentUser(I)V

    .line 388
    :cond_9
    iget-object v0, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput p1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->currentUser:I

    .line 389
    return-void
.end method

.method public setKeyguardEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 363
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_9

    .line 364
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setKeyguardEnabled(Z)V

    .line 366
    :cond_9
    iget-object v0, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput-boolean p1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->enabled:Z

    .line 367
    return-void
.end method

.method public setOccluded(ZI)V
    .registers 4
    .param p1, "isOccluded"    # Z
    .param p2, "displayId"    # I

    .prologue
    .line 246
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_9

    .line 247
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setOccluded(ZI)V

    .line 250
    :cond_9
    if-nez p2, :cond_10

    .line 251
    iget-object v0, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput-boolean p1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->occluded:Z

    .line 258
    :goto_f
    return-void

    .line 255
    :cond_10
    iget-object v0, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput-boolean p1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->occludedSub:Z

    goto :goto_f
.end method

.method public showScrim()V
    .registers 4

    .prologue
    .line 440
    iget-object v1, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    monitor-enter v1

    .line 441
    :try_start_3
    iget-object v0, p0, mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->deviceHasKeyguard:Z

    if-nez v0, :cond_b

    monitor-exit v1

    .line 449
    :goto_a
    return-void

    .line 442
    :cond_b
    iget-object v0, p0, mScrimHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;

    invoke-direct {v2, p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;-><init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 448
    monitor-exit v1

    goto :goto_a

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public startKeyguardExitAnimation(JJ)V
    .registers 8
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 392
    iget-object v1, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v1, :cond_9

    .line 393
    iget-object v1, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->startKeyguardExitAnimation(JJ)V

    .line 397
    :cond_9
    :try_start_9
    const-string/jumbo v1, "true"

    const-string/jumbo v2, "sys.locksecured"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 398
    const-string/jumbo v1, "sys.locksecured"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_22} :catch_23

    .line 403
    :cond_22
    :goto_22
    return-void

    .line 400
    :catch_23
    move-exception v0

    .line 401
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22
.end method

.method public updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 5
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "smallView"    # Landroid/widget/RemoteViews;
    .param p3, "bigView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 521
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_9

    .line 522
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 524
    :cond_9
    return-void
.end method

.method public verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .registers 4
    .param p1, "onKeyguardExitResult"    # Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .prologue
    .line 234
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_e

    .line 235
    iget-object v0, p0, mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    new-instance v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;-><init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    .line 237
    :cond_e
    return-void
.end method
