.class public abstract Landroid/telecom/InCallService;
.super Landroid/app/Service;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/InCallService$VideoCall;,
        Landroid/telecom/InCallService$InCallServiceBinder;
    }
.end annotation


# static fields
.field private static final MSG_ADD_CALL:I = 0x2

.field private static final MSG_BRING_TO_FOREGROUND:I = 0x6

.field private static final MSG_ON_CALL_AUDIO_STATE_CHANGED:I = 0x5

.field private static final MSG_ON_CAN_ADD_CALL_CHANGED:I = 0x7

.field private static final MSG_ON_CHANGE_IN_CONTENT:I = 0x8

.field private static final MSG_SET_IN_CALL_ADAPTER:I = 0x1

.field private static final MSG_SET_POST_DIAL_WAIT:I = 0x4

.field private static final MSG_UPDATE_CALL:I = 0x3

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.InCallService"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mPhone:Landroid/telecom/Phone;

.field private mPhoneListener:Landroid/telecom/Phone$Listener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 224
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 81
    new-instance v0, Landroid/telecom/InCallService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/InCallService$1;-><init>(Landroid/telecom/InCallService;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 185
    new-instance v0, Landroid/telecom/InCallService$2;

    invoke-direct {v0, p0}, Landroid/telecom/InCallService$2;-><init>(Landroid/telecom/InCallService;)V

    iput-object v0, p0, mPhoneListener:Landroid/telecom/Phone$Listener;

    .line 225
    return-void
.end method

.method static synthetic access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;
    .registers 2
    .param p0, "x0"    # Landroid/telecom/InCallService;

    .prologue
    .line 61
    iget-object v0, p0, mPhone:Landroid/telecom/Phone;

    return-object v0
.end method

.method static synthetic access$002(Landroid/telecom/InCallService;Landroid/telecom/Phone;)Landroid/telecom/Phone;
    .registers 2
    .param p0, "x0"    # Landroid/telecom/InCallService;
    .param p1, "x1"    # Landroid/telecom/Phone;

    .prologue
    .line 61
    iput-object p1, p0, mPhone:Landroid/telecom/Phone;

    return-object p1
.end method

.method static synthetic access$100(Landroid/telecom/InCallService;)Landroid/telecom/Phone$Listener;
    .registers 2
    .param p0, "x0"    # Landroid/telecom/InCallService;

    .prologue
    .line 61
    iget-object v0, p0, mPhoneListener:Landroid/telecom/Phone$Listener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/telecom/InCallService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/telecom/InCallService;

    .prologue
    .line 61
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final canAddCall()Z
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, mPhone:Landroid/telecom/Phone;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0}, Landroid/telecom/Phone;->canAddCall()Z

    move-result v0

    goto :goto_5
.end method

.method public final getAudioState()Landroid/telecom/AudioState;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, mPhone:Landroid/telecom/Phone;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0}, Landroid/telecom/Phone;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v0

    goto :goto_5
.end method

.method public final getCallAudioState()Landroid/telecom/CallAudioState;
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, mPhone:Landroid/telecom/Phone;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0}, Landroid/telecom/Phone;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    goto :goto_5
.end method

.method public final getCalls()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, mPhone:Landroid/telecom/Phone;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0}, Landroid/telecom/Phone;->getCalls()Ljava/util/List;

    move-result-object v0

    goto :goto_8
.end method

.method public getPhone()Landroid/telecom/Phone;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, mPhone:Landroid/telecom/Phone;

    return-object v0
.end method

.method public onAudioStateChanged(Landroid/telecom/AudioState;)V
    .registers 2
    .param p1, "audioState"    # Landroid/telecom/AudioState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 369
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 229
    new-instance v0, Landroid/telecom/InCallService$InCallServiceBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/InCallService$InCallServiceBinder;-><init>(Landroid/telecom/InCallService;Landroid/telecom/InCallService$1;)V

    return-object v0
.end method

.method public onBringToForeground(Z)V
    .registers 2
    .param p1, "showDialpad"    # Z

    .prologue
    .line 387
    return-void
.end method

.method public onCallAdded(Landroid/telecom/Call;)V
    .registers 2
    .param p1, "call"    # Landroid/telecom/Call;

    .prologue
    .line 399
    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .registers 2
    .param p1, "audioState"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 377
    return-void
.end method

.method public onCallRemoved(Landroid/telecom/Call;)V
    .registers 2
    .param p1, "call"    # Landroid/telecom/Call;

    .prologue
    .line 410
    return-void
.end method

.method public onCanAddCallChanged(Z)V
    .registers 2
    .param p1, "canAddCall"    # Z

    .prologue
    .line 420
    return-void
.end method

.method public onPhoneCreated(Landroid/telecom/Phone;)V
    .registers 2
    .param p1, "phone"    # Landroid/telecom/Phone;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 343
    return-void
.end method

.method public onPhoneDestroyed(Landroid/telecom/Phone;)V
    .registers 2
    .param p1, "phone"    # Landroid/telecom/Phone;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 358
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 234
    iget-object v1, p0, mPhone:Landroid/telecom/Phone;

    if-eqz v1, :cond_14

    .line 235
    iget-object v0, p0, mPhone:Landroid/telecom/Phone;

    .line 236
    .local v0, "oldPhone":Landroid/telecom/Phone;
    const/4 v1, 0x0

    iput-object v1, p0, mPhone:Landroid/telecom/Phone;

    .line 238
    invoke-virtual {v0}, Landroid/telecom/Phone;->destroy()V

    .line 242
    iget-object v1, p0, mPhoneListener:Landroid/telecom/Phone$Listener;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->removeListener(Landroid/telecom/Phone$Listener;)V

    .line 244
    invoke-virtual {p0, v0}, onPhoneDestroyed(Landroid/telecom/Phone;)V

    .line 247
    .end local v0    # "oldPhone":Landroid/telecom/Phone;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public final setAudioRoute(I)V
    .registers 3
    .param p1, "route"    # I

    .prologue
    .line 325
    iget-object v0, p0, mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_9

    .line 326
    iget-object v0, p0, mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0, p1}, Landroid/telecom/Phone;->setAudioRoute(I)V

    .line 328
    :cond_9
    return-void
.end method

.method public final setMuted(Z)V
    .registers 3
    .param p1, "state"    # Z

    .prologue
    .line 313
    iget-object v0, p0, mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_9

    .line 314
    iget-object v0, p0, mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0, p1}, Landroid/telecom/Phone;->setMuted(Z)V

    .line 316
    :cond_9
    return-void
.end method
