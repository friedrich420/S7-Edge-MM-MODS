.class public Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;
.super Lcom/android/server/SystemService;
.source "VoiceInteractionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "VoiceInteractionManagerService"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

.field final mResolver:Landroid/content/ContentResolver;

.field private final mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

.field final mSoundTriggerHelper:Lcom/android/server/voiceinteraction/SoundTriggerHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 85
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, mResolver:Landroid/content/ContentResolver;

    .line 87
    new-instance v1, Lcom/android/server/voiceinteraction/DatabaseHelper;

    invoke-direct {v1, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    .line 88
    new-instance v1, Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    invoke-direct {v1, p1}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mSoundTriggerHelper:Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    .line 89
    new-instance v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-direct {v1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V

    iput-object v1, p0, mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 91
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 93
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$1;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setVoiceInteractionPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .prologue
    .line 74
    iget-object v0, p0, mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    return-object v0
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .prologue
    .line 114
    const/16 v0, 0x258

    if-ne p1, v0, :cond_d

    .line 115
    iget-object v0, p0, mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {p0}, isSafeMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->systemRunning(Z)V

    .line 117
    :cond_d
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 109
    const-string/jumbo v0, "voiceinteraction"

    iget-object v1, p0, mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {p0, v0, v1}, publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 110
    return-void
.end method

.method public onStartUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    .line 121
    iget-object v0, p0, mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->initForUser(I)V

    .line 122
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    .line 126
    iget-object v0, p0, mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchUser(I)V

    .line 127
    return-void
.end method
