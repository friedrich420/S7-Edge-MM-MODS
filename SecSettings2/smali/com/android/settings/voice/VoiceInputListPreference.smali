.class public Lcom/android/settings/voice/VoiceInputListPreference;
.super Lcom/android/settings/AppListPreferenceWithSettings;
.source "VoiceInputListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/voice/VoiceInputListPreference$CustomAdapter;
    }
.end annotation


# instance fields
.field private mAssistRestrict:Landroid/content/ComponentName;

.field private final mAvailableIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHelper:Lcom/android/settings/voice/VoiceInputHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/AppListPreferenceWithSettings;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mAvailableIndexes:Ljava/util/List;

    .line 37
    const v0, 0x7f0e0f02

    invoke-virtual {p0, v0}, Lcom/android/settings/voice/VoiceInputListPreference;->setDialogTitle(I)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/voice/VoiceInputListPreference;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/voice/VoiceInputListPreference;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mAvailableIndexes:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected createListAdapter()Landroid/widget/ListAdapter;
    .locals 5

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "selectedValue":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/settings/voice/VoiceInputListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 45
    .local v0, "selectedIndex":I
    new-instance v2, Lcom/android/settings/voice/VoiceInputListPreference$CustomAdapter;

    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/android/settings/voice/VoiceInputListPreference$CustomAdapter;-><init>(Lcom/android/settings/voice/VoiceInputListPreference;Landroid/content/Context;[Ljava/lang/CharSequence;I)V

    return-object v2
.end method

.method public getCurrentService()Landroid/content/ComponentName;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v0, v0, Lcom/android/settings/voice/VoiceInputHelper;->mCurrentVoiceInteraction:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "VoiceInputListPreference"

    const-string v1, "getCurrentService=mCurrentVoiceInteraction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v0, v0, Lcom/android/settings/voice/VoiceInputHelper;->mCurrentVoiceInteraction:Landroid/content/ComponentName;

    .line 144
    :goto_0
    return-object v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v0, v0, Lcom/android/settings/voice/VoiceInputHelper;->mCurrentRecognizer:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 140
    const-string v0, "VoiceInputListPreference"

    const-string v1, "getCurrentService=mCurrentRecognizer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v0, v0, Lcom/android/settings/voice/VoiceInputHelper;->mCurrentRecognizer:Landroid/content/ComponentName;

    goto :goto_0

    .line 143
    :cond_1
    const-string v0, "VoiceInputListPreference"

    const-string v1, "getCurrentService=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 8
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v2, v2, Lcom/android/settings/voice/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 51
    iget-object v2, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v2, v2, Lcom/android/settings/voice/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/voice/VoiceInputHelper$InteractionInfo;

    .line 52
    .local v1, "info":Lcom/android/settings/voice/VoiceInputHelper$InteractionInfo;
    iget-object v2, v1, Lcom/android/settings/voice/VoiceInputHelper$InteractionInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_interaction_service"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_recognition_service"

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v1, Lcom/android/settings/voice/VoiceInputHelper$InteractionInfo;->service:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/settings/voice/VoiceInputHelper$InteractionInfo;->serviceInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v6}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/voice/VoiceInputListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v2, v1, Lcom/android/settings/voice/VoiceInputHelper$InteractionInfo;->settings:Landroid/content/ComponentName;

    invoke-virtual {p0, v2}, Lcom/android/settings/voice/VoiceInputListPreference;->setSettingsComponent(Landroid/content/ComponentName;)V

    .line 80
    .end local v1    # "info":Lcom/android/settings/voice/VoiceInputHelper$InteractionInfo;
    :goto_1
    return v7

    .line 50
    .restart local v1    # "info":Lcom/android/settings/voice/VoiceInputHelper$InteractionInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "info":Lcom/android/settings/voice/VoiceInputHelper$InteractionInfo;
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v2, v2, Lcom/android/settings/voice/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 67
    iget-object v2, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v2, v2, Lcom/android/settings/voice/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/voice/VoiceInputHelper$RecognizerInfo;

    .line 68
    .local v1, "info":Lcom/android/settings/voice/VoiceInputHelper$RecognizerInfo;
    iget-object v2, v1, Lcom/android/settings/voice/VoiceInputHelper$RecognizerInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_interaction_service"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_recognition_service"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/voice/VoiceInputListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v2, v1, Lcom/android/settings/voice/VoiceInputHelper$RecognizerInfo;->settings:Landroid/content/ComponentName;

    invoke-virtual {p0, v2}, Lcom/android/settings/voice/VoiceInputListPreference;->setSettingsComponent(Landroid/content/ComponentName;)V

    goto :goto_1

    .line 66
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 79
    .end local v1    # "info":Lcom/android/settings/voice/VoiceInputHelper$RecognizerInfo;
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/voice/VoiceInputListPreference;->setSettingsComponent(Landroid/content/ComponentName;)V

    goto :goto_1
.end method

.method public refreshVoiceInputs()V
    .locals 9

    .prologue
    .line 93
    new-instance v7, Lcom/android/settings/voice/VoiceInputHelper;

    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputListPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/settings/voice/VoiceInputHelper;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    .line 94
    iget-object v7, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    invoke-virtual {v7}, Lcom/android/settings/voice/VoiceInputHelper;->buildUi()V

    .line 96
    iget-object v7, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mAssistRestrict:Landroid/content/ComponentName;

    if-nez v7, :cond_1

    const-string v0, ""

    .line 99
    .local v0, "assistKey":Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mAvailableIndexes:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 100
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v6, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v7, v7, Lcom/android/settings/voice/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 103
    iget-object v7, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v7, v7, Lcom/android/settings/voice/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/voice/VoiceInputHelper$InteractionInfo;

    .line 104
    .local v4, "info":Lcom/android/settings/voice/VoiceInputHelper$InteractionInfo;
    iget-object v7, v4, Lcom/android/settings/voice/VoiceInputHelper$InteractionInfo;->appLabel:Ljava/lang/CharSequence;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v7, v4, Lcom/android/settings/voice/VoiceInputHelper$InteractionInfo;->key:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v7, v4, Lcom/android/settings/voice/VoiceInputHelper$InteractionInfo;->key:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 108
    iget-object v7, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mAvailableIndexes:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 96
    .end local v0    # "assistKey":Ljava/lang/String;
    .end local v2    # "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v3    # "i":I
    .end local v4    # "info":Lcom/android/settings/voice/VoiceInputHelper$InteractionInfo;
    .end local v6    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_1
    iget-object v7, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mAssistRestrict:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 112
    .restart local v0    # "assistKey":Ljava/lang/String;
    .restart local v2    # "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .restart local v3    # "i":I
    .restart local v6    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_2
    iget-object v7, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mAvailableIndexes:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v1, 0x1

    .line 113
    .local v1, "assitIsService":Z
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 115
    .local v5, "serviceCount":I
    const/4 v3, 0x0

    :goto_3
    iget-object v7, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v7, v7, Lcom/android/settings/voice/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 116
    iget-object v7, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v7, v7, Lcom/android/settings/voice/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/voice/VoiceInputHelper$RecognizerInfo;

    .line 117
    .local v4, "info":Lcom/android/settings/voice/VoiceInputHelper$RecognizerInfo;
    iget-object v7, v4, Lcom/android/settings/voice/VoiceInputHelper$RecognizerInfo;->label:Ljava/lang/CharSequence;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v7, v4, Lcom/android/settings/voice/VoiceInputHelper$RecognizerInfo;->key:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    if-nez v1, :cond_3

    .line 120
    iget-object v7, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mAvailableIndexes:Ljava/util/List;

    add-int v8, v5, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 112
    .end local v1    # "assitIsService":Z
    .end local v4    # "info":Lcom/android/settings/voice/VoiceInputHelper$RecognizerInfo;
    .end local v5    # "serviceCount":I
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 123
    .restart local v1    # "assitIsService":Z
    .restart local v5    # "serviceCount":I
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/CharSequence;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v7}, Lcom/android/settings/voice/VoiceInputListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 124
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/CharSequence;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v7}, Lcom/android/settings/voice/VoiceInputListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 126
    iget-object v7, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v7, v7, Lcom/android/settings/voice/VoiceInputHelper;->mCurrentVoiceInteraction:Landroid/content/ComponentName;

    if-eqz v7, :cond_6

    .line 127
    iget-object v7, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v7, v7, Lcom/android/settings/voice/VoiceInputHelper;->mCurrentVoiceInteraction:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/voice/VoiceInputListPreference;->setValue(Ljava/lang/String;)V

    .line 133
    :goto_4
    return-void

    .line 128
    :cond_6
    iget-object v7, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v7, v7, Lcom/android/settings/voice/VoiceInputHelper;->mCurrentRecognizer:Landroid/content/ComponentName;

    if-eqz v7, :cond_7

    .line 129
    iget-object v7, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v7, v7, Lcom/android/settings/voice/VoiceInputHelper;->mCurrentRecognizer:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/voice/VoiceInputListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_4

    .line 131
    :cond_7
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/settings/voice/VoiceInputListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public setAssistRestrict(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "assistRestrict"    # Landroid/content/ComponentName;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mAssistRestrict:Landroid/content/ComponentName;

    .line 90
    return-void
.end method

.method public setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "packageNames"    # [Ljava/lang/CharSequence;
    .param p2, "defaultPackageName"    # Ljava/lang/CharSequence;

    .prologue
    .line 86
    return-void
.end method
