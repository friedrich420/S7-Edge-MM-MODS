.class Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$1;
.super Ljava/lang/Object;
.source "VoiceInteractionManagerService.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackagesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackages(I)[Ljava/lang/String;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 97
    iget-object v1, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    # getter for: Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;
    invoke-static {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->access$000(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->initForUser(I)V

    .line 98
    iget-object v1, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    # getter for: Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;
    invoke-static {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->access$000(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getCurInteractor(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 99
    .local v0, "interactor":Landroid/content/ComponentName;
    if-eqz v0, :cond_20

    .line 100
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 102
    :goto_1f
    return-object v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method
