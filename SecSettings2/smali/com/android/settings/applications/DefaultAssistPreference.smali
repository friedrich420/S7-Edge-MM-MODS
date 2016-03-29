.class public Lcom/android/settings/applications/DefaultAssistPreference;
.super Lcom/android/settings/AppListPreferenceWithSettings;
.source "DefaultAssistPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/DefaultAssistPreference$Info;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private final mAvailableAssistants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/DefaultAssistPreference$Info;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/DefaultAssistPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/settings/AppListPreferenceWithSettings;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAvailableAssistants:Ljava/util/List;

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/DefaultAssistPreference;->setShowItemNone(Z)V

    .line 50
    const v0, 0x7f0e0efd

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/DefaultAssistPreference;->setDialogTitle(I)V

    .line 51
    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 52
    const v0, 0x7f0e1397

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/DefaultAssistPreference;->setResDescription(I)V

    .line 53
    return-void
.end method

.method private addAssistActivities()V
    .locals 9

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 164
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.ASSIST"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x10000

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 167
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 168
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 169
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAvailableAssistants:Ljava/util/List;

    new-instance v5, Lcom/android/settings/applications/DefaultAssistPreference$Info;

    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/android/settings/applications/DefaultAssistPreference$Info;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-void
.end method

.method private addAssistServices()V
    .locals 10

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 143
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.service.voice.VoiceInteractionService"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x80

    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 146
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 147
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 148
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/service/voice/VoiceInteractionServiceInfo;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v4, v1, v5}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    .line 150
    .local v4, "voiceInteractionServiceInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    invoke-virtual {v4}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsAssist()Z

    move-result v5

    if-nez v5, :cond_0

    .line 146
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_0
    iget-object v5, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAvailableAssistants:Ljava/util/List;

    new-instance v6, Lcom/android/settings/applications/DefaultAssistPreference$Info;

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v7, v4}, Lcom/android/settings/applications/DefaultAssistPreference$Info;-><init>(Landroid/content/ComponentName;Landroid/service/voice/VoiceInteractionServiceInfo;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 159
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "voiceInteractionServiceInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    :cond_1
    return-void
.end method

.method private findAssistantByPackageName(Ljava/lang/String;)Lcom/android/settings/applications/DefaultAssistPreference$Info;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 132
    iget-object v2, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/DefaultAssistPreference$Info;

    .line 133
    .local v1, "info":Lcom/android/settings/applications/DefaultAssistPreference$Info;
    iget-object v2, v1, Lcom/android/settings/applications/DefaultAssistPreference$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    .end local v1    # "info":Lcom/android/settings/applications/DefaultAssistPreference$Info;
    :goto_1
    return-object v1

    .line 131
    .restart local v1    # "info":Lcom/android/settings/applications/DefaultAssistPreference$Info;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "info":Lcom/android/settings/applications/DefaultAssistPreference$Info;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getDefaultRecognizer()Ljava/lang/String;
    .locals 4

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.speech.RecognitionService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 121
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_1

    .line 122
    :cond_0
    sget-object v1, Lcom/android/settings/applications/DefaultAssistPreference;->TAG:Ljava/lang/String;

    const-string v2, "Unable to resolve default voice recognition service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v1, ""

    .line 126
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setAssistActivity(Lcom/android/settings/applications/DefaultAssistPreference$Info;)V
    .locals 3
    .param p1, "activityInfo"    # Lcom/android/settings/applications/DefaultAssistPreference$Info;

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant"

    iget-object v2, p1, Lcom/android/settings/applications/DefaultAssistPreference$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_interaction_service"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_recognition_service"

    invoke-direct {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getDefaultRecognizer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/DefaultAssistPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/DefaultAssistPreference;->setSettingsComponent(Landroid/content/ComponentName;)V

    .line 115
    return-void
.end method

.method private setAssistNone()V
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_interaction_service"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_recognition_service"

    invoke-direct {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getDefaultRecognizer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0efc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/DefaultAssistPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/DefaultAssistPreference;->setSettingsComponent(Landroid/content/ComponentName;)V

    .line 81
    return-void
.end method

.method private setAssistService(Lcom/android/settings/applications/DefaultAssistPreference$Info;)V
    .locals 6
    .param p1, "serviceInfo"    # Lcom/android/settings/applications/DefaultAssistPreference$Info;

    .prologue
    .line 84
    iget-object v3, p1, Lcom/android/settings/applications/DefaultAssistPreference$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "serviceComponentName":Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/settings/applications/DefaultAssistPreference$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/android/settings/applications/DefaultAssistPreference$Info;->voiceInteractionServiceInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v5}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "serviceRecognizerName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assistant"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voice_interaction_service"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voice_recognition_service"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/DefaultAssistPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v3, p1, Lcom/android/settings/applications/DefaultAssistPreference$Info;->voiceInteractionServiceInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v3}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "settingsActivity":Ljava/lang/String;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/settings/applications/DefaultAssistPreference;->setSettingsComponent(Landroid/content/ComponentName;)V

    .line 103
    return-void

    .line 100
    :cond_0
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/settings/applications/DefaultAssistPreference$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentAssist()Landroid/content/ComponentName;
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/applications/DefaultAssistPreference;->findAssistantByPackageName(Ljava/lang/String;)Lcom/android/settings/applications/DefaultAssistPreference$Info;

    move-result-object v0

    .line 58
    .local v0, "info":Lcom/android/settings/applications/DefaultAssistPreference$Info;
    if-nez v0, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->setAssistNone()V

    .line 68
    :goto_0
    return v2

    .line 63
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/applications/DefaultAssistPreference$Info;->isVoiceInteractionService()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    invoke-direct {p0, v0}, Lcom/android/settings/applications/DefaultAssistPreference;->setAssistService(Lcom/android/settings/applications/DefaultAssistPreference$Info;)V

    goto :goto_0

    .line 66
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/applications/DefaultAssistPreference;->setAssistActivity(Lcom/android/settings/applications/DefaultAssistPreference$Info;)V

    goto :goto_0
.end method

.method public refreshAssistApps()V
    .locals 6

    .prologue
    .line 180
    iget-object v4, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 181
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->addAssistServices()V

    .line 182
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->addAssistActivities()V

    .line 184
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 186
    iget-object v4, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/DefaultAssistPreference$Info;

    iget-object v4, v4, Lcom/android/settings/applications/DefaultAssistPreference$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "packageName":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 185
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 194
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v0

    .line 195
    .local v0, "currentAssist":Landroid/content/ComponentName;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {p0, v4, v5}, Lcom/android/settings/applications/DefaultAssistPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 197
    return-void

    .line 195
    :cond_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method
